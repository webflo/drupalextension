@api @d6
Feature: Environment check

  Scenario: Frontpage
    Given I am not logged in
      And I am on the homepage
    Then I should see "User login"

  Scenario: assertAnonymousUser
    Given I am an anonymous user

  @api
  Scenario: assertAuthenticatedByRole
    Given I am logged in as a user with the "authenticated" role

  @api
  Scenario: assertAuthenticatedByRoleWithGivenFields
    Given I am logged in as a user with the "authenticated" role and I have the following fields:
    | name | test |

  @api
  Scenario: createNode
    Given I am viewing a story with the title "test"
    Then I should see "test"

  @api
  Scenario: createNodes
    Given article content:
      | title    | author     | status | created           |
      | My title | Joe Editor | 1      | 2014-10-17 8:00am |
    When I am viewing a content with the title "My title"
    Then I should see "My title"

  @api
  Scenario: createTerm
    Given I am viewing a tags term with the name "example tag"
    Then I should see "example tag"

  @api
  Scenario: createUsers
    Given users:
    | name     | mail         | roles        |
    | user foo | foo@bar.com  | a, b         |
    | user bar | foo@bar.com  | b            |

  @api
  Scenario: createTerms
    Given tags terms:
    | name |
    | test1 |
    | test2 |
    When I am viewing a tags term with the name "test1"
    Then I should see "test1"

