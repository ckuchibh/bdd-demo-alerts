@activity3
Feature: Testing with Tags
  Background: To execute before every scenario
    Given User is on the page

  @SimpleAlert @SmokeTest
  Scenario: Test for Simple Alert
    When User clicks the Simple Alert button
    Then Alert opens
    And Read the text from it and print it
    And Close the alert
    And Read the result text

  @ConfirmAlert
  Scenario: Test for Confirm Alert
    When User clicks the Confirmation Alert button
    Then Alert opens
    And Read the text from it and print it
    And Close the alert with Cancel
    And Read the result text

  @PromptAlert
  Scenario Outline: Test for Prompt Alert
    When User clicks the Prompt Alert button
    Then Alert opens
    And Read the text from it and print it
    And Write a custom <message> in it
    And Close the alert
    And Read the result text
    Examples:
      | message |
      | "First Message" |
      | "Second Message" |
      | "Third Message"  |