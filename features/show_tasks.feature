Feature: show list of tasks to do

	As a person with things to do
	So that I can start doing the most important things I need to do
	I want to see a list of tasks I have yet to do ordered by priority

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

Scenario: visit the homepage
  When I am on the homepage
  Then I should see "Pay rent" before "Buy Christmas presents"
   And I should see "Buy Christmas presents" before "Call mom"
   And I should not see "Feed Wendell"

Scenario: visit the done page
	When I am on the done page
	Then I should see "Feed Wendell"
	 And I should see "Make bed"