Feature: Viewing Players
  While on the Battleships app 
  User can view acticeplayers at all times

  	Scenario: Viewing one player
    	When I am in Princes browser
    	Given I am on the homepage
	    When I follow "Join a game"
	    Then I should see "Whats your name?"
	    When I fill in "name" with "Prince"
	    And I press "Register Player"
	    Then I should see "Congratulations Prince, you have joined the game"
  		Given I am on the homepage
  		Then I should see "Player 1: Prince"

  	Scenario: Viewing two players
  		Given I have registered prince
  		When I am in Blondies browser
	  	When I go to "register a player"
	  	Then I should see "Whats your name?"
	    When I fill in "name" with "Blondie"
	    And I press "Register Player"
	    Then I should see "Congratulations Blondie, you have joined the game"
  		Given I am on the homepage
  		Then I should see "Player 1: Prince"
  		And I should see "Player 2: Blondie"