Feature: Volunteer sign up and registration
  As a volunteer, I want to become a member and add value to the community by contributing my expertise free of charge

  Scenario: A volunteer signs up with valid information
    Given I am on the volunteer sign up page
    When I sign up as a volunteer with email "test@example.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@example.com"
    When I login with correct email address "test@example.com"
    Then I should see "Welcome back"

Feature: Volunteer update details
  As a volunteer, I want to be able to change and update my details

Feature: Volunteer create bookmarks
  As a volunteer, I want to be able to bookmark non profit/causes I am interested in.

Feature: Volunteer express interest in a task
  As a volunteer, I want to be able to express my interest in a task.

Feature: Volunteer create company profile.
  As a volunteer and an authorised employee of a company, I want to be able to create a company profile.

Feature: Volunteer update company profile
  As a volunteer and an authorised employee of a company, i want to be able to update a company profile.