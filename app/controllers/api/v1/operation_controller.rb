# frozen_string_literal: true
class Api::V1::OperationController < ApplicationController
  before_action :validate_params
  def create
    model = params[:entity].camelize.constantize.new
        
    # Map parameters to model fields dynamically
    params.each do |key, value|
      if model.respond_to?("#{key}=")
        model.send("#{key}=", value)
      end
    end
    if model.save
      render json: model, status: :created
    else
      render json: model, status: :unprocessable_entity
    end
  end
  def update
    model = params[:entity].camelize.constantize
    record = model.find(site_id: params[:site_id], "#{model.primary_key.split.last}": params[:"#{model.primary_key.split.last}"])

    # Map parameters to model fields dynamically
    params.each do |key, value|
      if model.respond_to?("#{key}=")
        next if model.primary_key.include?(key)
        record.send("#{key}=", value)
      end
    end

    if model.save
      render json: model, status: :ok
    else
      render json: model, status: :unprocessable_entity
    end
  end

  def delete
    model = params[:entity].camelize.constantize
    record = model.find(site_id: params[:site_id], "#{model.primary_key.split.last}": params[:"#{model.primary_key.split.last}"])

    # Map parameters to model fields dynamically
    params.each do |key, value|
      if model.respond_to?("#{key}=")
        next if model.primary_key.include?(key)
        record.send("#{key}=", value)
      end
    end

    if model.save
      render json: model, status: :ok
    else
      render json: model, status: :unprocessable_entity
    end
  end

  private
  def validate_params
    params.require([:site_id, :entity])
    render json: {"Error": "Entity #{params[:entity]} not valid"}, status: :bad_request unless ValidationService.validate_entity(params[:entity])
  #   todo: Add validation for each entity
    params.permit!
  end

  def create_params
    model = params[:entity]
  end
end
