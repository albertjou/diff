Feature: Volunteer user sign up and registration
  As a volunteer user
  I want to become a member and add value to the community by contributing my expertise free of charge

  Scenario: A volunteer user signs up with valid information
    Given I am on the volunteer user sign up page
    When I sign up as a volunteer user with email "test@example.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@example.com"
    When I login with correct email address "test@example.com"
    Then I should see "Welcome back"
