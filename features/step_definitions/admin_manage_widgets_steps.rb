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
  fill_in 'Name', :with => 'Test Widget'
  click_button 'Create Widget'  
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Given(/^There is at least one Widget$/) do
  @widget = Widget.new(:name => 'testWidget')
  @widget.save!
end

Given(/^I'm on the widget edit page$/) do  
  visit edit_widget_path(@widget)
end

When(/^I modify any field on the form$/) do
  fill_in 'Name', :with => 'Test2Widget'
  click_button 'Update Widget'
end

When(/^I delete a Widget$/) do
  page.driver.submit :delete, "/widgets/#{@widget.id}", {}
end

When(/^I fill the config field with a valid JSON$/) do
  fill_in 'Config', :with => '{test: 1, name: jajaja}'
  click_button 'Update Widget'
end

When(/^I fill the config field with an invalid JSON$/) do
  fill_in 'Config', :with => 'sdfsdfas'
  click_button 'Update Widget'
end
