Feature:

  Scenario: Get all products for user
    * def uuid =  'b9aa02ec-972d-43e8-9c58-d145fbaac467'
    * def user = 'salma.syahna@fundingsocieties.com'
    * def country = 'my'
    * call read('classpath:loanDraft/Elevate/activeloan.feature')

    Given path 'ext/eligible-products'
    Then header member-uuid = uuid
    Then header username = name
    Then header country-id = country

    When method get
    * def object =
    """
    {
      canApplyFor: "#[]"
    }
    """
    * match response == object
    Then status 200