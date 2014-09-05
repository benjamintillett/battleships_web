
Given(/^I have registered prince$/) do
    step "I am in Princes browser"
    step "I am on the homepage"
    step 'I follow "Join a game"'
    step 'I should see "Whats your name?"'
    step 'I fill in "name" with "Prince"'
    step 'I press "Register Player"'
    step 'I should see "Congratulations Prince, you have joined the game"'
end


When(/^I post to delete game$/) do
  visit("delete_game",post)
end





# Given(/^I have two players$/) do
#     "I have registered prince"
#     "I am in Blondies browser"
#     "Given I am on the homepage"
#     "When I follow 'Join a game'"
#     "Then I should see 'What's your name?"
#     "When I fill in 'name' with 'Blondie'"
#     "And I press 'Register Player'"
#     "I should see 'Congratulations Blondie, you have joined the game'"
# end



  # 		When I am in Princes browser
  #   	Given I am on the homepage
	 #    When I follow "Join a game"
	 #    Then I should see "Whats your name?"
	 #    When I fill in "name" with "Prince"
	 #    And I press "Register Player"
	 #    Then I should see "Congratulations Prince, you have joined the game"
		# Given I go to the homepage
	 #    Then I should see "Player 1: Prince"