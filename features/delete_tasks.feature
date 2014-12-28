Feature: delete a task

	As a person that has tasks to do
	So that I can remove tasks that I don't want to do
	I want to remove a task

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

Scenario: Mark a task as done
  When I am on the homepage
   And I press "Delete!" on "Cook food"
  Then I should be on the todos page
   And I should not see "Cook food"

Scenario: Mark a task as done
  When I am on the homepage
   And I press "Delete!" on "Cook food"
   And I follow "See recently done"
  Then I should be on the done page
   And I should not see "Cook food"