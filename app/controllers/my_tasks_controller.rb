class MyTasksController < ApplicationController
  before_action :set_mytask, only: [:show, :update, :destroy]

  # GET /mytasks
  def index
    @mytasks = MyTask.all

    render json: @mytasks
  end

  # GET /mytasks/1
  def show
    render json: @mytask
  end

  # POST /mytasks
  def create
    @mytask = MyTask.new(my_task_params)

    if @mytask.save
      render json: @mytask, status: :created, location: @mytask
    else
      render json: @mytask.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mytasks/1
  def update
    if @mytask.update(my_task_params)
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
      @mytask = MyTask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_task_params
      params.require(:newMyTaskObject).permit(:task_id,:user_id,:due_date,:status,:frequency,:notes)
    end

end
