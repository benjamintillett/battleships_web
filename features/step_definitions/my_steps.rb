
Given(/^I have registered prince$/) do
    "I am in Princes browser"
    "Given I am on the homepage"
    "When I follow 'Join a game'"
    "Then I should see 'What's your name?"
    "When I fill in 'name' with 'Prince'"
    "And I press 'Register Player'"
    "I should see 'Congratulations Prince, you have joined the game'"
end

Given(/^I have two players$/) do
    "I have registered prince"
    "I am in Blondies browser"
    "Given I am on the homepage"
    "When I follow 'Join a game'"
    "Then I should see 'What's your name?"
    "When I fill in 'name' with 'Blondie'"
    "And I press 'Register Player'"
    "I should see 'Congratulations Blondie, you have joined the game'"
end

