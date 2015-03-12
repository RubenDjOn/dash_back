Given(/^I'm on the Sign Up page$/) do
  visit new_user_registration_path
end

Given(/^I'm on the Log in page$/) do
  visit new_user_session_path
end

Given(/^I'm an anonymous user$/) do
  expect(page).to have_content('Login')
end

Given(/^I'm registered on the web$/) do
   @user = User.new(:email => 'test@test.com',                   
                   :password => '12345678',
                   :password_confirmation => '12345678')
   @user.save! 
end

Given(/I'm logged in as a regular user$/) do
	visit new_user_session_path
  	fill_in 'Email', :with => 'test@test.com'
  	fill_in 'Password', :with => '12345678'
  	click_button 'Log in'
end

When(/^I fill in the form on Sign Up page$/) do
  fill_in 'Email', :with => 'test@test.com'  
  fill_in 'Password', :with => '12345678'
  fill_in 'user_password_confirmation', :with => '12345678'
  click_button 'Sign up'  
end

Then(/^I should see the message "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end

When(/^I fill in the Log in form$/) do
  fill_in 'Email', :with => 'test@test.com'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
end

When(/^I press the log out button$/) do
  click_link 'Logout'
end
