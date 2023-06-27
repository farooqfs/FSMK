Feature: Automation for borrower info of individual and legal-entity
  Background:
    * url 'https://service-mesh-ingress-uat.fundingasiagroup.com/borrower-backend-service'
    * def uuid = '9de76b72-6da1-420d-9feb-a8063e5ff003'
    * def name = 'mobile-user-9de76b72-6da1-420d-9feb-a8063e5ff003@modalku.co.id'


  Scenario: Adding borrower info for individual entity
    Given path '/ext/loan-draft/id/elevate/individual'
    Then header member-uuid = uuid
    Then header username = name
    Then header country-id = 'ID'

    * def payload =
    """
    {
    "delete_previous": false,
    "draft": {
    "borrower": {
      "fullname": "Abdul Wahab Farooq",
      "icNumber": "1212121212121212",
      "mobileNumber": "6281286508698",
      "email": "abdulwahab.farooq@fundingsocieties.com",
      "dateOfBirth": "1990-12-06",
      "placeOfBirth": "Lahore",
      "address": "asdf",
      "currentAddress": "asdf",
      "sameAsRegisteredAddress": true,
      "provinceId": 2,
      "cityId": 25,
      "districtId": 298,
      "zipCode": "80652",
      "currentProvinceId": 2,
      "currentCityId": 25,
      "currentDistrictId": 298,
      "currentZipCode": "80652",
      "maritalStatus": "Menikah",
      "homeOwnership": "owner",
      "homeOccupancyLength": "one_to_two_years"
    }
    }
    }
    """
    And request payload

    #Validate schema
    Then method put
    Then match response == '#object'
    * def object =
    """
    {
      uuid: '#string'
    }
    """
    * match response == object
    Then status 200
    * print 'Individual scenario is passed'


  Scenario: Adding borrower info for legal entity
    Given path '/ext/loan-draft/id/elevate/legal-entity'
    Then header member-uuid = '0bf25326-05a1-4fcf-87ec-d37cb76b48da'
    Then header username = 'mobile-user-0bf25326-05a1-4fcf-87ec-d37cb76b48da@modalku.co.id'
    Then header country-id = 'ID'

    * def payload =
    """
    {
    "delete_previous": false,
    "draft": {
    "borrower": {
      "address": "alamat",
      "name": "abdulwahabfarooqfs",
      "industryId": 2,
      "provinceId": 2,
      "cityId": 24,
      "districtId": 292,
      "zipCode": "80361",
      "deedOfIncorporationNumber": "12212",
      "deedOfIncorporationDate": "1990-12-05",
      "taxIdentificationNumber": "1111",
      "companyIdentificationType": "COMPANY_REGISTRATION_CERTIFICATE",
      "companyIdentificationValue": "121",
      "estimatedAnnualRevenue": "BETWEEN_100M_AND_250M"
      }
      }
      }
    """
    And request payload

     #Validate schema
    Then method put
    Then match response == '#object'
    * def object =
    """
    {
      uuid: '#string'
    }
    """
    * match response == object

    Then status 200
    * print 'Legal-entity scenario is passed'