@varbase_ai @admin
Feature: Varbase AI - administration pages
  As a site administrator
  I want to reach the AI configuration section provided by the AI modules

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The AI configuration section is listed on the configuration page
    When I go to "/admin/config"
    Then I should see "AI"

  Scenario: The AI settings overview page loads
    When I go to "/admin/config/ai"
    Then I should see "AI Default Settings"
    And I should see "Provider Settings"

  Scenario: The AI Core module is reported as enabled
    When I go to "/admin/reports/status"
    Then I should not see "Access denied"
