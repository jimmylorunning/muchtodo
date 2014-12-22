require 'spec_helper'

describe TodosController, :type => :controller do

	describe 'create action' do

		it "should tell the model to create new Todo" do
			fake_todo = double('Call mom')
			Todo.should_receive(:create!).and_return(fake_todo)
			post :create, {:task => 'Call mom', :priority => 'high'}
		end

	end

end
