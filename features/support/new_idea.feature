Feature: Ideas and author page

  As a user
  so that I can track my ideas
  I want to add a new idea to the list

  Scenario: Add an idea
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|minikermit@hotmail.com|
      |Password|12345678|
    And I press "Log in"
    When I add a new idea
    Then I should be able to see the new idea's page


