Feature: Login

    Scenario Outline: Login to RBG Website

        Given User is at the login page
        When User enters username as '<username>' and password as '<password>'
        And User clicks on login button
        Then User is able to successfully login to the Website
        Examples:
            | username | password |
            | rbg-dev-kt@tier5.in    | 123456 |
