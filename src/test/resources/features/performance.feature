@performance
Feature:
  In order to maintain availability of the service
  As an application owner
  I want the application to remain available under attack and heavy load

  @cwe-400
  Scenario Outline: Log in multiple times without logging out to test that the server can handle a number of open sessions
    Given a new browser or client instance
    And the login page
    And the user hits the ESC key
    And the login page
    When the default user logs in
    Then the user is logged in

  Examples:
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|
    |repeat because cucumber has no way to loop a whole scenario|