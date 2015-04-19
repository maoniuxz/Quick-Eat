Feature: review input test successful

  As a user
  so that I can test review inputs are correct

  Scenario: Add a review
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|minikermit@hotmail.com|
      |Password|12345678|
    And I press "Log in"

    When I add a new review
    Then I should be able to see a successful message