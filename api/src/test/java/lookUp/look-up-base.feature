@ignore
Feature: look up
Background: 
    * def convertURL = 
    """
        function(x) { 
            // remove the () and convertURL
            x = x.replace(/\(\w+\)/gm, "");
            x = encodeURI(x)
            return x
        }
    """
    * def attributematch = 
    """
        function (attributes) {
            let match = {}
            match[attributes]='#[]'
            return match
        }
    """

@LookUpList
Scenario:  get look up list
    Given header accept = 'application/json'
    And header country-id = country
    And header username = 'QA-Auto-Test@fundingsocieties.com'

    Given url baseUrl
    And path '/ext/look-up'
    And param attributes = attribute
    When method get
    Then status 200
    * print response
    # should be an array 
    * match response.data == attributematch(attribute)

@provinces
Scenario: Look up provinces
    Given url baseUrl
    And path 'ext/look-up/provinces/id'
    And header country-id = country
    When method get
    Then status 200
    * match each response.data == 
    """
        {
            provinceId: '#regex[0-9]+',
            provinceName: '#string'
        }
    """

@city
Scenario: Look up city
    Given url baseUrl
    And path 'ext/look-up/cities/id' 
    And header country-id = country
    And param provinceId = provinceId
    When method get
    Then status 200
    * match each response.data == 
    """
        {
            cityId: '#regex[0-9]+',
            cityName: '#string'
        }
    """

@districts
Scenario: Look up districts
    * def urlCityName = '?cityName='+convertURL(cityName)
    * def urlCityId = '&cityId='+cityId
    Given url baseUrl + '/ext/look-up/districts/id' + urlCityName + urlCityId
    And header country-id = country
    When method get
    Then status 200
    * match each response.data == 
    """
        {
            districtId: '#number',
            districtName: '#string'
        }
    """

@zipcodes
Scenario: Look up zipcodes
    * def urlDistrictName = '?districtName='+convertURL(districtName)
    * def urlDistrictId = '&districtId='+districtId
    Given url baseUrl + '/ext/look-up/zipcodes/id' + urlDistrictName + urlDistrictId
    And header country-id = country
    When method get
    Then status 200
    * match each response.data == 
    """
        {
            areaId: '#number',
            areaName: '#string',
            zipCode:"#regex[0-9]{5}"
        }
    """




    
