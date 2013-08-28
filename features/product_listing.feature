@javascript
Feature: Product Listing

  Scenario: User views product listing
    Given I am a non-signed in user
    When I land on the home page
    Then I see a list of golf ball brands
    And I see the featured brand
    And I see the featured brand suggested retail price
    And I see the featured brand actual price
    And I see the featured brand shorter description
    And I see the featured brand longer description
    And I see a buy button
    And I see the featured brand reviews

  Scenario: User views product reviews
    Given I am a non-signed in user
    When I land on the home page
    Then I see a list of reviews for "titleist"
    And I click "Nike"
    Then I see a list of reviews for "Nike"
