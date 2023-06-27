Feature: Eligible products

  Background:
    * url 'https://service-mesh-ingress-uat.fundingasiagroup.com/borrower-backend-service'
    * def uuid = 'ed043b9a-382f-47d5-81a4-006867742909'
    * def name = 'mobile-user-ed043b9a-382f-47d5-81a4-006867742909@modalku.co.id'
    * def country = 'ID'

  Scenario: Get all products for user
    Given path 'ext/eligible-products'
    Then header member-uuid = uuid
    Then header username = name
    Then header country-id = country

    When method get
    Then match response == '#object'
    * def object =
    """
    {
      canApplyFor: #[]
    }
    """
    * match response == object
    Then status 200


