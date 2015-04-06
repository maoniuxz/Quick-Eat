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




Given(/^I'm on the login page$/) do
  visit(the home page)
end



Then /^the Log in form should be shown again$/ do
  assert page.has_content?("Invalid email or password.")
end


Then /^I should log in$/ do
  assert page.has_content?("Invalid email or password.")
end