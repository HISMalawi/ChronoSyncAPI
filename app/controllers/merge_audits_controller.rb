class MergeAuditsController < ApplicationController
  before_action :set_merge_audit, only: %i[ show update destroy ]

  # GET /merge_audits
  def index
    @merge_audits = MergeAudit.all

    render json: @merge_audits
  end

  # GET /merge_audits/1
  def show
    render json: @merge_audit
  end

  # POST /merge_audits
  def create
    @merge_audit = MergeAudit.new(merge_audit_params)

    if @merge_audit.save
      render json: @merge_audit, status: :created, location: @merge_audit
    else
      render json: @merge_audit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merge_audits/1
  def update
    if @merge_audit.update(merge_audit_params)
      render json: @merge_audit
    else
      render json: @merge_audit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merge_audits/1
  def destroy
    @merge_audit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merge_audit
      @merge_audit = MergeAudit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merge_audit_params
      params.require(:merge_audit).permit(:primary_id, :secondary_id, :merge_type, :secondary_previous_merge_id, :creator, :voided, :voided_by, :date_voided, :void_reason)
    end
end
