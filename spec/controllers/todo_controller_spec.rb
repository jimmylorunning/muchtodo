require 'spec_helper'

describe TodosController, :type => :controller do

	describe 'index' do
		it 'should ask the model for tasks to do' do
			Todo.should_receive(:tasks_to_do)
			get :index
		end

		it 'should make tasks available to view' do
			fake_todos = double(['Call mom', 'Wash dishes'])
			Todo.stub(:tasks_to_do).and_return(fake_todos)
			get :index
			assigns(:todos).should == fake_todos
		end
	end

	describe 'create action' do

		it "should tell the model to create new Todo" do
			fake_todo = double('Call mom')
			Todo.should_receive(:create!).and_return(fake_todo)
			post :create, {:task => 'Call mom', :priority => 'high'}
		end

		it 'should redirect to index page' do
			fake_todo = double('Call mom')
			Todo.stub(:create!).and_return(fake_todo)
			post :create, {:task => 'Call mom', :priority => 'high'}
			response.should redirect_to todos_path
		end

	end

	describe 'new action' do

		it 'should create a new todo object and make it available to the view' do
			fake_todo = double('Call mom')
			Todo.should_receive(:new).and_return(fake_todo)
			get :new
			assigns(:todo).should == fake_todo
		end

		it 'should make list of valid priorities available to view' do
			get :new
			assigns(:priorities).should == Todo.priorities
		end

		it 'should make list of valid statuses available to view' do
			get :new
			assigns(:statuses).should == Todo.statuses
		end

	end

	describe 'edit action' do

		it 'should find the Todo object based on its id and make it available to view' do
			fake_todo = double('Call mom')
			Todo.should_receive(:find_by_id).with('1').and_return(fake_todo)
			get :edit, {:id => 1}
			assigns(:todo).should == fake_todo
		end

		it 'should make list of valid priorities available to view' do
			get :edit, {:id => 1}
			assigns(:priorities).should == Todo.priorities
		end

		it 'should make list of statuses available to view' do
			get :edit, {:id => 1}
			assigns(:statuses).should == Todo.statuses
		end

	end

	describe 'update action' do

		it 'should find the correct Todo object' do
			fake_todo = double('Call mom', :update_attributes => true)
			Todo.should_receive(:find).with('1').and_return(fake_todo)
			post :update, {:id => 1}
		end

		it 'should update attributes of the found object' do
			fake_todo = double('Call mom')
			Todo.stub(:find).with('1').and_return(fake_todo)
			fake_todo.should_receive(:update_attributes).with('task' => 'Call dad', 'priority' => 'medium', 'status' => 'to do')
			post :update, {:id => 1, :todo => {:task => 'Call dad', :priority => 'medium', :status => 'to do'}}
		end

		it 'should redirect to todo index' do
			fake_todo = double('Call mom', :update_attributes => true)
			Todo.stub(:find).and_return(fake_todo)
			post :update, {:id => 1}
			response.should redirect_to todos_path
		end

	end

end
