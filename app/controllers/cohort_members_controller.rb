class CohortMembersController < ApplicationController
  before_action :set_cohort_member, only: %i[ show update destroy ]

  # GET /cohort_members
  def index
    @cohort_members = CohortMember.all

    render json: @cohort_members
  end

  # GET /cohort_members/1
  def show
    render json: @cohort_member
  end

  # POST /cohort_members
  def create
    @cohort_member = CohortMember.new(cohort_member_params)

    if @cohort_member.save
      render json: @cohort_member, status: :created, location: @cohort_member
    else
      render json: @cohort_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cohort_members/1
  def update
    if @cohort_member.update(cohort_member_params)
      render json: @cohort_member
    else
      render json: @cohort_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cohort_members/1
  def destroy
    @cohort_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort_member
      @cohort_member = CohortMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cohort_member_params
      params.require(:cohort_member).permit(:cohort_id, :patient_id)
    end
end
