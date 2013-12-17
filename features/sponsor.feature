Feature: Sponsor sign up and registration
  As a sponsor, I represent a non profit and manage tasks for volunteers to complete.

  Scenario: A sponsor signs up with valid information
    Given I am on the sponsor sign up page
    When I sign up as a sponsor with email "test@examplenonprofit.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@examplenonprofit.com"
    When I login with correct email address "test@examplenonprofit.com"
    Then I should see "Welcome back"