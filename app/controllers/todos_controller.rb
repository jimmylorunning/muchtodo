class TodosController < ApplicationController

	def index
    @todos = Todo.tasks_to_do
	end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    # require not working for some reason?
    @todo = Todo.create!(params.permit(:task, :priority, :status))
    redirect_to todos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    # rails 4 - instead of attr_accessible: https://github.com/rails/strong_parameters
#    def todos_params
      # for create operation
#      params.require(:task, :priority, :status)
#    end

end