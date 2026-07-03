@varbase_ai @permissions
Feature: Varbase AI - access to the AI settings by role
  Scenario: Anonymous users cannot reach the AI settings
    Given I am an anonymous user
    When I am on "/admin/config/ai/settings/nojs"
    Then I should see "Access denied"

  Scenario: Authenticated users without permission cannot reach the AI settings
    Given I am a logged in user with the "Normal user" user
    When I am on "/admin/config/ai/settings/nojs"
    Then I should see "Access denied"

  Scenario: Users with the AI administration permission can reach the AI settings
    Given I am a logged in user with the "AI admin" user
    When I am on "/admin/config/ai/settings/nojs"
    Then I should see "AI Settings"
    And I should not see "Access denied"
