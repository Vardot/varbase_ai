@varbase_ai @settings
Feature: Varbase AI - settings routes
  As a site administrator
  I want to open the AI settings and provider configuration forms

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The AI Default Settings form loads
    When I go to "/admin/config/ai/settings/nojs"
    Then I should see "AI Settings"

  Scenario: The AI Providers page loads
    When I go to "/admin/config/ai/providers"
    Then I should see "AI Providers"
