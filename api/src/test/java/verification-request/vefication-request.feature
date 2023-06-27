Feature: verification request

Scenario: get list of verification request of a borrower
    Given url baseUrl
    And path '/int/verification-request'


Scenario: create and verify a new verification request for a borrower
    # Here we will create a new verification request for a borrower 
    # and then verify that verification request by query it buy a get request
    Given url baseUrl
    And path '/int/verification-request'   
