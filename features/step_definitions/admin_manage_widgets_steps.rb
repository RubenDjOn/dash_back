Given(/^I'm an Admin user$/) do
   @user = User.new(:email => 'test@test.com',                   
                 :password => '12345678',
                 :password_confirmation => '12345678')
  @user.update_attribute :admin, true
  @user.save! 
end

Given(/^I'm logged in as Admin$/) do
  visit new_user_session_path
  fill_in 'Email', :with => 'test@test.com'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
end

Given(/^I'm on the new Widget page$/) do
  visit widgets_new_path
end

When(/^I fill all the data needed$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a message telling me the widget was added successfuly$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I'm on the widget edit page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I modify any field on the form$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a message telling me the widget was succesfully modified$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I'm on the Widget list$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I press delete button of a Widget$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a message telling me the widget was successfuly deleted$/) do
  pending # express the regexp above with the code you wish you had
end
