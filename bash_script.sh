#!/bin/bash

./node_modules/.bin/cypress run --spec "/home/tier5/Downloads/Cypress-Automation-master/cypress/e2e/cucumber-test/login.feature"

if [ $? -eq 0 ]; then
    mochawesome-merge cypress/reports/*.json > cypress/reports/report.json
    mochawesome-report-generator cypress/reports/report.json
    echo "Cypress tests passed. See the attached report." | mail -s "Cypress Tests Passed" -a /home/tier5/Downloads/Cypress-Automation-master/TestReport/cypress-combined-report.html aditi.ghosh@tier5.in
else
    echo "Cypress tests failed" | mail -s "Cypress Tests Failed" aditi.ghosh@tier5.in
fi
