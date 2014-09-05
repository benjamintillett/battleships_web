Feature: Viewing Players
  While on the Battleships app 
  User can view acticeplayers at all times

  	Scenario: Viewing one player
  		Given I have registered prince
  		And I am on the homepage
  		Then I should see "Player 1: Prince"

  	Scenario: Viewing two players
  		Given Two players are registered
  		And I am on the homepage
  		Then I should see "Player 1: Prince"
  		And I should see "Player 2: Blondie"