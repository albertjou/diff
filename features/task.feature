Feature: Visitors should be able to see tasks
  As a visitor to the site, I should be able to see a list of all the tasks available. I want to be able to search by a task name, or by skills category, or by a charity I am interested in.

  Scenario: A user sees a list of tasks
    Given I am on the home page.
    I should see a list of tasks ordered by created_at DESC.
    I should be able to filter the list of tasks by non profit.
    I should be able to filter the list of tasks by competencies.
    I should be able to search task names.

Feature: Visitor can recommend/share a task
  As a visitor to the site, if I see a task that someone I know would be interested in, I should be able to send the link to them via LinkedIn, Facebook or email.


Feature: Sponsor should be able to create a task
  As a representative of a non-profit, I should be able to create an event and it should show up on the homepage. I want to be able to put competencies required for the task to be completed as well.


Feature: Sponsor should be able to update a task
  As the owner of a task, I should be able to change the details.


Feature: Sponsor should be able to change the status of a task
  As the owner of a task, I should be able to update the status of a task I created.


Feature: Sponsor should be able to send a draft version of their task to someone in the same corporate network (same domain name)


Feature: Sponsor should have a summary of tasks completed and tasks pending

