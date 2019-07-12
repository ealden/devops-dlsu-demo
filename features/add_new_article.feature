Feature: Add New Article

  Scenario: Successfully Add New Article
    Given I want to add a new article
    And   my article has the title "The Fox and the Dog"
    And   my article has the text "The quick brown fox jumps over the lazy dog"
    When  I try to add my new article
    Then  I must see my new article added

  Scenario Outline: Validation Errors
    Given I want to add a new article
    And   my article has the title "<Title>"
    And   my article has the text "<Text>"
    When  I try to add my new article
    Then  I must be notified that "<Error Message>"
    And   I must not have any new articles added

    Examples:

      | Title | Text                | Error Message                                 |
      |       | That fox was quick! | Title can't be blank                          |
      | 1234  | That fox was quick! | Title is too short (minimum is 5 characters)  |
