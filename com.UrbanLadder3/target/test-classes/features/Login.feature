@UserAuthentication
Feature: User Registration,Account Settings and Login

  #Background:
    #Given I navigate to the UrbanLadder home page

  @Signup
  Scenario: User Registration (Sign Up)
    Given I navigate to the Sign Up link under profile icon
    When I enter "<email>" and "<password>" for registration
    And I click on the Sign Up button
    Then the user should be successfully logged in

    Examples:
      | email                  | password  |
      |sample165@demo.com      |  Hello@165 |
   
      
      
   @AccountSettings
  Scenario: Edit Account Settings - Change Password
    Given I navigate to the profile under profile icon
    And I clicks on edit button
    And I enter my name in "<new_name>"
    And I enter my mobile number to "<new_mobile>"
    And I click on the Change Password option
    And I update my password to "<new_password>" and confirm it as "<confirm_password>"
    And I click on the Update button
    Then I get "Account updated" message as success

    Examples:
      | email                | password      | new_name   | new_mobile  | new_password      | confirm_password  |
      |  sample165@demo.com  | Hello@165     | Aparna Ramya     | 7607533686  | Lock@165          | Lock@165         |      
      
      

  @Login
  Scenario Outline: Login with different credentials
  	Given I am on the login page
    When I enter email "<email>" and password "<password>"
    And I click on the Login button
    Then I should see "<message>"

    Examples:
      | email                | password      |
      | user8@test.com       | Hello@202     |
      | sample165@demo.com   | Hello@022     |
      | test86@test.com      | Lock@165      |
      | sample165@demo.com   | Lock@165      |
      

