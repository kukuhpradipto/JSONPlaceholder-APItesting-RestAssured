Feature: Put Update Comments

  @ProjectTeam4 @PositiveCase
  Scenario: Put update comments with valid json
    Given Put update comments with valid json with id 1
    When Send request put update comments
    Then Status code should be 200 OK
    And Response body should be contain name "id labore ex et quam laborum" and email is "Eliseo@gardner.biz"
    And Validate put update comments json schema

  @ProjectTeam4 @NegativeCase
  Scenario: Put update comments with invalid json
    Given Put update comments with invalid json with id 1
    When Send request put update comments
    Then Status code should be 400 bad request


  @ProjectTeam4 @NegativeCase
  Scenario: Put update comments with empty body json on email
    Given Put update comments with empty body json on email with id 1
    When Send request put update comments
    Then Status code should be 400 bad request


  @ProjectTeam4 @NegativeCase
  Scenario: Put update comments with empty body json on name
    Given Put update comments with empty body json on name with id 1
    When Send request put update comments
    Then Status code should be 400 bad request