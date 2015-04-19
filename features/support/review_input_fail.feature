Feature: review input test failed

  As a user
  so that I can test review inputs are incorrect

  Scenario: Add a review
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|minikermit@hotmail.com|
      |Password|12345678|
    And I press "Log in"

    When I add an incorrect rating review
    Then I should be able to see an error message