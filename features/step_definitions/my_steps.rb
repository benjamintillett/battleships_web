
Given(/^I have registered prince$/) do
    step "I am in Princes browser"
    step "I am on the homepage"
    step 'I follow "Join a game"'
    step 'I should see "Whats your name?"'
    step 'I fill in "name" with "Prince"'
    step 'I press "Register Player"'
    step 'I should see "Congratulations Prince, you have joined the game"'
end






Given(/^Two players are registered$/) do
  		step 'I have registered prince'
  		step 'I am in Blondies browser'
	  	step 'I go to "register a player"'
	  	step 'I should see "Whats your name?"'
	    step 'I fill in "name" with "Blondie"'
	    step 'I press "Register Player"'
	    step 'I should see "Congratulations Blondie, you have joined the game"'
end



