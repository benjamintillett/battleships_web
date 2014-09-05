Feature: Registering for a game
  In order to play battleships
  As a player 
  I want to start a new game

  Background:
   	Given Two players are registered

  Scenario: Starting a game
  	Given I am on the homepage
  	And I press "Start Game"
  	# Then I should see 