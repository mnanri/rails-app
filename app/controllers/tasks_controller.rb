class TasksController < ApplicationController
  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to root_url
    else
      render 'pages/home'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def task_params
      params.require(:task).permit(:title, :content)
    end
end
