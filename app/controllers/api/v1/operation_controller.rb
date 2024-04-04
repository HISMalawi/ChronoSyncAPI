# frozen_string_literal: true
class Api::V1::OperationController < ApplicationController
  before_action :validate_params
  def create
    #params[:entity]
    render json: {"status": "creating"}
  end

  def update
    render json: {"status": "updating"}
  end

  def delete
    render json: {"status": "deleting"}
  end

  private
  def validate_params
    params.require([:site_id, :entity])
    render json: {"Error": "Entity #{params[:entity]} not valid"}, status: :bad_request unless ValidationService.validate_entity(params[:entity])
  #   todo: Add validation for each entity
    params.permit!
  end

end
