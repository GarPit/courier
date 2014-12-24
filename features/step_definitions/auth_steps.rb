When(/^I am logging in$/) do
  fill_in('email', :with => 'garik.piton@gmail.com')
  fill_in('password', :with => '123')
  click_button "Login"
end
