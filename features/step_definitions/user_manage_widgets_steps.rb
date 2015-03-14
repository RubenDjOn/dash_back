Given(/^I'm a registerd user$/) do
  @user = User.new( :email => 'test@test.com',
                    :password => '12345678',
                    :password_confirmation => '12345678')
  @user.save!  
end

Given(/^I'm logged in$/) do
  visit new_user_session_path
  fill_in 'Email', :with => 'test@test.com'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
end

Given(/^There exists at least one Widget$/) do
  @widget = Widget.new(:name => 'WigestTest', :config=>{c1: 'tetet', c2: 'aaaa'})
  @widget.save!
end

When(/^I subscribe to one Widget$/) do
  visit subscribe_widget_path(@widget, :format=>:json)
end

Given(/^I'm subscribed to one Widget$/) do
  visit subscribe_widget_path(@widget, :format=>:json)  
end

When(/^I unsubscribe to that Widget$/) do
  visit unsubscribe_widget_path(@widget, :format=>:json)
end

Given(/^I'm on the edit Widget page$/) do
  visit edit_user_widget_path(@user.widgets.find_by(id: @widget.id))
end

When(/^I change the info of the Widget$/) do
  fill_in 'Config', :with => '{"test": "prueba"}'
  click_button 'Update User widget'
end

When(/^I change the config of the Widget with a invalid JSON$/) do
  fill_in 'Config', :with => 'blablabla'
  click_button 'Update User widget'
end

