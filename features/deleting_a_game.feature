Feature: deleting a game
	In order to play a new game of battleships
	As a user 
	I want to delete my old game

	Scenario: Deleting a game
		Given I have registered prince
		And I am on the homepage
		Then I should see "Player 1: Prince"
		And I press "Delete Game"
		Then I should see "You have successfully deleted the game"
		And I should not see "Player 1: Prince"

		