Feature: Create, edit and delete customer information
  As a bank or credit card agency
  I want to be able to create, edit and delete customer records
  That will allow the database to remain up to date

  Scenario Outline: Create or edit customer
    Given I have entered the create or edit customer option
    When I enter customer first name as <First Name>
    And I enter customer last name as <Last Name>
    And I enter the purpose of applying as <Purpose>
    And I enter customer number of years residency as <Years Resided>
    And I submit the form
    Then the system should output the status of the customer <Result>

    Examples:
      | First Name | Last Name  | Purpose | Years Resided | Result |
      |"a"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |""|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Invalid First Name"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Invalid First Name"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"a"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|""|"I"|500|"Invalid Last Name"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Invalid Last Name"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"E"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"S"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"L"|500|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"D"|500|"Invalid Purpose"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"T"|500|"Invalid Purpose"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|1|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|999|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|2|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|998|"Valid"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|-1|"Invalid Years Resided"|
      |"aaaaaaaaaaaaaaaaaaaaaaaaa"|"aaaaaaaaaaaaaaaaaaaaaaaaa"|"I"|1000|"Invalid Years Resided"|

