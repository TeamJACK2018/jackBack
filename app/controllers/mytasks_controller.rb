class MytasksController < ApplicationController
  before_action :set_mytask, only: [:show, :update, :destroy]

  # GET /mytasks
  def index
    @mytasks = Mytask.all

    render json: @mytasks
  end

  # GET /mytasks/1
  def show
    render json: @mytask
  end

  # POST /mytasks
  def create
    @mytask = Mytask.new(mytask_params)

    if @mytask.save
      render json: @mytask, status: :created, location: @mytask
    else
      render json: @mytask.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mytasks/1
  def update
    if @mytask.update(mytask_params)
      render json: @mytask
    else
      render json: @mytask.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mytasks/1
  def destroy
    @mytask.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytask
      @mytask = Mytask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mytask_params
      params.fetch(:mytask, {})
    end
end
