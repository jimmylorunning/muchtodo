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
    # investigate strong params -- not working, or don't understand somehow
    @todo = Todo.create!(params[:todo])
    redirect_to todos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end