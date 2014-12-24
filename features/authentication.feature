Feature: Authentication
    Scenario: we should be redirected to login page if not logged in
        Given I am on the root page
        Then I should be on the signin page

    Scenario: we should see login form on signin page
        Given I am on the signin page
        And I should see a field "email"
        And I should see a field "password"
        And I should see "Login" in the HTML

    Scenario: we should be able to login on signin page
        Given I am on the signing page
        When I am logging in
        Then I should be on the root page
        And I should see "Курьеры"
        And I should see "Точки"
