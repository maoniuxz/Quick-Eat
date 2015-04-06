Feature: Log in
  As an authorized user
  I want to login with my details
  So that I can login


  Scenario: Login
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|minikermit@hotmail.com|
      |Password|12345678|
    And I press "Log in"
    Then I should see Signed in successfully.