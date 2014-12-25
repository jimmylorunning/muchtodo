Feature: add a task to do

	As a person with things to do
	So that I can add to my list of things to do
	I want to add a task to do, along with its priority

Scenario: Add a task
  When I am on the homepage
   And I click on "Add"
   And I fill in "Task" with "Write paper"
   And I fill in "Priority" with "high"
   And I fill in "Status" with "to do"
   And I press "Add"
  Then I should be on the todos page
   And I should see "Write paper"