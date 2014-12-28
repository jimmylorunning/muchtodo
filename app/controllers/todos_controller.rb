class TodosController < ApplicationController

	def index
    @todos = Todo.tasks_to_do
	end

  def show
  end

  def done
    @todos = Todo.tasks_done
#    render "index"
  end

  def new
    @todo = Todo.new(:priority => 'high', :status => 'to do')
    @priorities = Todo.priorities
    @statuses = Todo.statuses
  end

  def create
    # investigate strong params -- not working, or don't understand somehow
    @todo = Todo.create!(params[:todo])
    redirect_to todos_path
  end

  def edit
    @todo = Todo.find_by_id(params[:id])
    @priorities = Todo.priorities
    @statuses = Todo.statuses
  end

  def update
    @todo = Todo.find params[:id]
    @todo.update_attributes(params[:todo])
    redirect_to todos_path
  end

  def destroy
    @todo = Todo.find params[:id]
    @todo.destroy
    redirect_to todos_path
  end

end