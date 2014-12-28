Feature: show list of tasks I've done

	As a person with things accomplished
	So that I can see what I did recently
	I want to see a list of tasks I've done

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

Scenario: visit the done page
	When I am on the done page
	Then I should see "Feed Wendell"
	 And I should see "Make bed"