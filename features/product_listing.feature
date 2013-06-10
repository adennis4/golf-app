Feature: Product Listing

  Scenario: User views product listing
    Given I am a non-signed in user
    When I land on the home page
    Then I see a list of golf ball brands
    And I see the featured brand
    And I see the featured brand suggested retail price
    And I see the featured brand actual price
    And I see the featured brand description
    And I see the featured brand reviews
    And I see a buy button
