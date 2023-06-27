@ID @lookup
Feature: Look up for Location in ID 

Background: 
    * def country = 'ID'
    * def getRandomFromArray = 
    """
        function(number,array){ 
            var res = []
            while (number !== 0) {
                res.push(array[Math.floor(Math.random() * array.length)])
                number--
            }
            return res
        } 
    """

Scenario: Look up provinces
    * def provinces = call read('look-up-base.feature@provinces')


Scenario: Look up Cities
    * def data = read('provinces.json')
    # select 5 random from list of provinces
    * def selectedData = getRandomFromArray(5,data)
    * def cities = call read('look-up-base.feature@city') selectedData

Scenario: Look up Districts
    * def data = read('cities.json')
    # select 5 random from list of cities
    * def selectedData = getRandomFromArray(5,data)
    * def districsts = call read('look-up-base.feature@districts') selectedData

Scenario: Look up Zipcodes
    * def data = read('districsts.json')
    # select 5 random from list of districsts
    * def selectedData = getRandomFromArray(5,data)
    * def zipCodes = call read('look-up-base.feature@zipcodes') selectedData




