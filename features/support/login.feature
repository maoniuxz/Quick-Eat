Feature: Log in
  As an authorized user
  I want to login with my details
  So that I can login

  Scenario: Password doesn't match confirmation
    Given I am on the home page
    When I fill in "Email" with "zhexu1990@gmail.com"
    And I fill in "Password" with "87654321"
    And I press "Log in"
    Then the Log in form should be shown again



  Scenario: Password matches confirmation
    Given I am on the home page
    When I fill in "Email" with "zhexu1990@gmail.com"
    And I fill in "Password" with "12345678"
    And I press "Log in"
    Then I should log in