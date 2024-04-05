# frozen_string_literal: true
class Api::V1::OperationController < ApplicationController
  before_action :validate_params
  def create
    model = params[:entity].camelize.constantize
    query_string = "INSERT INTO #{params[:entity]} VALUES ("
    # Map parameters to model fields dynamically
    params.each do |key, value|
      if model.new.respond_to?("#{key}=")
        # model.send("#{key}=", value)
        if value.nil?
          query_string += "null, "
        else
          query_string += "'#{value}', "
        end
      end
    end
    query_string = "#{query_string[0..-3]})"

    begin
      model.connection.execute(query_string)
      render json: { 'message': 'Created Successfully' }, status: :created
    rescue ActiveRecord::StatementInvalid => e
      render json: { 'error': 'Failed to create', 'message': e.message }, status: :unprocessable_entity
    end
  end
  def update
    model = params[:entity].camelize.constantize
    query_string = "UPDATE #{params[:entity]} SET "
    # Map parameters to model fields dynamically
    params.each do |key, value|
      if model.new.respond_to?("#{key}=")
        next if model.primary_key.include?(key)
        next if key == "site_id"
        next if value.nil?
        query_string += "#{key} = '#{value}', "
      end
    end

    query_string = query_string[0..-3]
    query_string += " WHERE site_id = #{params[:site_id]} AND #{model.primary_key} = #{params[:id]}"

    if model.connection.execute(query_string)
      render json: record, status: :ok
    else
      render json: record, status: :unprocessable_entity
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
