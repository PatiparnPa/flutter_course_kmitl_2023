Feature: Login

    Scenario: Successful login
        Given I am on the login page
        When I enter valid login username and password
        And I click the login button
        Then I should be redirected to the home page
        And I be redirected a welcome page
        Then I should see a normal product
        And I see normal product

    Scenario: Failed login
        Given I am on the login page
        When I enter invalid login username and password
        And I click the login button
        Then I should see an error message
        And I see a error message


    Scenario: Logout user login
        Given I am on the login page
        When I enter valid login username and password
        And I click the login button
        Then I should see an lockout message
        And I see a lockout message

    Scenario: Problem user
        Given I am on the login page
        When I enter valid login username and password
        And I click the login button
        Then I should be redirected to the home page
        And I be redirected a welcome page
        Then I should see a normal product
        And I see invalid product

    Scenario: Slowly load
        Given I am on the login page
        When I enter valid login username and password
        And I click the login button
        Then I should be redirected to the home page immediately
        And I be redirected a welcome page but slowly
        Then I should see a product detail and change page immediately
        And I see a product detail and change page but slowly
