import {
  Given,
  When,
  Then,
  And,
} from "@badeball/cypress-cucumber-preprocessor";

Given("User is at the login page", () => {
  cy.visit({
    url: "https://dev.redbeltgym.com/login",
    failOnStatusCode: false,
  });
});

When(
  "User enters username as {string} and password as {string}",
  (email, password) => {
    cy.get('input[name="email"]').type(email);
    cy.get('input[name="password"]').type(password);
  }
);

And("User clicks on login button", () => {
  cy.get(".orangeBtn").click();
  cy.wait(9000);
});

Then("User is able to successfully login to the Website", () => {
  cy.get(".inDashboardHeader")
    .contains("Dashboard")
    .should("be.visible", { timeout: 20000 });
});
