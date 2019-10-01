Feature: TestmeApp

  @casestudy1
  Scenario: 1.Register User
    Given Sign Up
    And Enter Username as "sujykrrggr2"
    And Enter Firstname as "lalitha"
    And Enter LastName as "Singh"
    And Enter Password as "password123"
    And Confirm your password "password123"
    And Select Gender as "female"
    And Enter Email as "lalitha78@gmail.com"
    And Enter Mobile Number as "9090452469"
    And Enter DOB as "19/12/1997"
    And Enter Address "Hyderabad"
    And Select Security question
    And Answer the question as "Hyderabad"
    And CLick on Register

  @casestudy2
  Scenario Outline: User Login
    Given Alex has registered into TestMeApp
    When Alex login with below set of "<username>" and "<password>"
    Then Alex login successfully into TestMeApp

    Examples: 
      | username | password    |
      | sujykrrggr2  | password123 |

  @casestudy4
  Scenario: The one where user moves to cartwithout adding any item in it
    Given Alex has registered into TestMeApp
    When Alex search a particular product like headphones
    And try to proceed to payment without adding any item in the cart
    Then TestMeApp doesn't display the cart icon
