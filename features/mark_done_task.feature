Feature: mark a task as done

	As a person that has done something with his/her life!
	So that I can feel an oh-so fleeting sense of satisfaction
	I want to mark a task as done

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
   And I press "Done!" on "Cook food"
  Then I should be on the todos page
   And I should not see "Cook food"