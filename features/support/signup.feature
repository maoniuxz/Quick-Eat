Feature: Sign up
  As an unauthorized user
  I want to signup with my details
  So that I can login

  Scenario: Password doesn't match confirmation
    Given I am on the signup page
    When I fill in "Email" with "zhexu1990@gmail.com"
    And I fill in "Password" with "Secret12"
    And I fill in "Password confirmation" with "Password"
    And I press "Sign up"
    Then the Sign up form should be shown again



  Scenario: Password matches confirmation
    Given I am on the signup page
    When I fill in "Email" with "zhexu1990@gmail.com"
    And I fill in "Password" with "Secret12"
    And I fill in "Password confirmation" with "Secret12"
    And I press "Sign up"
    Then I should be logged in

  Scenario: Password too short
    Given I am on the signup page
    When I fill in "Email" with "zhexu1990@gmail.com"
    And I fill in "Password" with "Secret"
    And I fill in "Password confirmation" with "Secret"
    And I press "Sign up"
    Then I should be returned to sign-up page



