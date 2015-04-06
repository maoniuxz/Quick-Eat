require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I'm on the signup page$/) do
  visit(new_user_registration_path)
end


Then /^the Sign up form should be shown again$/ do
  assert page.has_content?("prohibited this user from being saved")
end


Then /^I should be logged in$/ do
  assert page.has_content?("Welcome! You have signed up successfully.")
end

Then /^I should be returned to sign-up page$/ do
  assert page.has_content?("prohibited this user from being saved")

end






Given /^a valid user$/ do
  @user = User.create!({
                           :email => "minikermit@hotmail.com",
                           :password => "12345678",
                           :password_confirmation => "12345678"
                       })
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit(user_session_path)
  fill_in "Email", :with => "minikermit@hotmail.com"
  fill_in "Password", :with => "12345678"
  click_button "Sign in"

end

Then /^I should see Signed in successfully.$/ do
  assert page.has_content?("Signed in successfully.")
end




Given /^valid user$/ do
  @user = User.create!({
                           :email => "minikermit@hotmail.com",
                           :password => "12345678",
                           :password_confirmation => "12345678"
                       })
end

Given /^logged in user$/ do
  Given "valid user"
  visit(user_session_path)
  fill_in "Email", :with => "minikermit@hotmail.com"
  fill_in "Password", :with => "12345678"

end




When(/^I add a new idea$/) do
  visit(new_idea_path)
  fill_in 'Name', :with => "Charles Dickens"
  fill_in 'Description', :with => "Male"
  click_button 'Create Idea'
end

Then(/^I should be able to see the new idea's page$/) do
  assert page.has_content?("Idea was successfully created")
end