require 'spec_helper'

describe Todo do
	describe "set priority" do
		context "priority found" do
			before do
				@first = FactoryGirl.create(:todo, :priority => Todo.priorities.first)
				@last = FactoryGirl.create(:todo, :priority => Todo.priorities.last)
			end
			it "should set the correct priority" do
				@first.priority.should == Todo.priorities.first
				@last.priority.should == Todo.priorities.last
			end
		end
		context "priority not found" do
			it "should raise an exception" do
				expect { FactoryGirl.create(:todo, :priority => "klwerkjwer") }.to raise_error
			end
		end
	end
	describe "set status" do
		context "status found" do
			before do
				@first = FactoryGirl.create(:todo, :status => Todo.statuses.first)
				@last = FactoryGirl.create(:todo, :status => Todo.statuses.last)
			end
			it "should set the correct status" do
				@first.status.should == Todo.statuses.first
				@last.status.should == Todo.statuses.last
			end
		end
		context "status not found" do
			it "should raise an exception" do
				expect { FactoryGirl.create(:todo, :status => "iewrwer") }.to raise_error
			end
		end
	end
end