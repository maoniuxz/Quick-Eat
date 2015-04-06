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
  visit signin_url
  fill_in "Email", :with => "minikermit@hotmail.com"
  fill_in "Password", :with => "12345678"
  click_button "Sign in"
end