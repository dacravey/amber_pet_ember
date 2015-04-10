class Api::FindingsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @findings = Finding.all
    render json: @findings
  end

  def show
    render json: Finding.find(params[:id])
  end

  def update
    @finding = Finding.find(params[:id])
    if @finding.update(finding_params)
      render json: @finding
    else
      render json: @finding.errors, status: :unprocessable_entity
    end
  end

  def create
    @finding = Finding.new(finding_params)
    if @finding.save
      render json: @finding, status: :created, location: @finding
    else
      render json: @finding.errors, status: :unprocessable_eintity
    end
  end

  def destroy
    @finding = Finding.find(params[:id])
    @finding.destroy
    head :no_content
  end

  private
  def finding_params
    params.require(:finding).permit(:date, :address, :time, :pet_id)
  end

end
