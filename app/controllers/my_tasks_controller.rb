class MyTasksController < ApplicationController
  before_action :set_my_task, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /user/my_task/:user_id
  def show_user_tasks
    @user = User.find(params[:user_id])
    @user_tasks = @user.my_tasks
    @my_tasks = []
    @user_tasks.each do | el |
      @my_tasks << {my_task: el, task: el.task}
    end
    # @my_tasks = current_user.my_tasks
    render json: @my_tasks
  end

  # GET /my_tasks
  def index
    @my_tasks = MyTask.all
  end

  # GET /my_tasks/1
  def show
    render json: {mytask: @my_task, task: @my_task.task}
  end

  # POST /my_tasks
  def create
    @my_task = MyTask.new(my_task_params)

    if @my_task.save
      render json: @my_task, status: :created, location: @my_task
    else
      render json: @my_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_tasks/1
  def update
    if @my_task.update(my_task_params)
      render json: @my_task
    else
      render json: @my_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_tasks/1
  def destroy
    @my_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_task
      @my_task = MyTask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_task_params
      params.require(:my_task).permit(:task_id, :user_id, :due_date, :frequency, :completed, :notes, :exact_time)
    end
end
