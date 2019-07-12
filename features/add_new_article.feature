Feature: Add New Article

  Scenario: Successfully Add New Article
    Given I want to add a new article
    And   my article has the title "The Fox and the Dog"
    And   my article has the text "The quick brown fox jumps over the lazy dog"
    When  I try to add my new article
    Then  I must see my new article added

