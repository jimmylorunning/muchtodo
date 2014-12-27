Feature: edit a task

	As a person with things to do
	So that I can edit tasks on my to do list
	I want to edit a task

Background: todos in the database

  Given the following todos exist:
  | task                     | priority      | status |
  | Fold laundry             | low           | to do  |
  | Cook food                | low           | to do  |
  | Buy Christmas presents   | medium        | to do  |
  | Feed Wendell             | high          | done   |
  | Call mom                 | low           | to do  |
  | Pay rent                 | high          | to do  |
  | Make bed                 | medium        | done   |

Scenario: Edit a task
  When I am on the homepage
   And I click on "Cook food"
   And I fill in "Task" with "Buy food"
   And I select "medium" from "Priority"
   And I press "Update"
  Then I should be on the todos page
   And I should see "Buy food"