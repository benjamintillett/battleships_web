Feature: Registering for a game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    When I am in Princes browser
    Given I am on the homepage
    When I follow "Join a game"
    Then I should see "Whats your name?"
    When I fill in "name" with "Prince"
    And I press "Register Player"
    Then I should see "Congratulations Prince, you have joined the game"
    

  Scenario: Registering a second player from a different browser
  	Given I have registered prince
  	When I am in Blondies browser
  	When I go to "register a player"
  	Then I should see "Whats your name?"
    When I fill in "name" with "Blondie"
    And I press "Register Player"
    Then I should see "Congratulations Blondie, you have joined the game"

  Scenario: Registering a second player from the same browser
    Given I have registered prince
    And I am on the homepage
  	Then I should not see "Join a game"



