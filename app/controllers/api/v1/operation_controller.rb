# frozen_string_literal: true
class Api::V1::OperationController < ApplicationController
  before_action :validate_params
  def create
    render json: {"name": "willie"}
  end

  private
  def validate_params
    params.require([:site_id, :entity])
    render json: {"Error": "Entity #{params[:entity]} not valid"}, status: :bad_request unless ValidationService.validate_entity(params[:entity])
  end
end
