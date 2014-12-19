class TodosController < ApplicationController

	def index
    @todos = Todo.tasks_to_do
	end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    # rails 4 - instead of attr_accessible: https://github.com/rails/strong_parameters
    def todos_params
      # for create operation
      params.require(:task, :priority, :status)
    end

end