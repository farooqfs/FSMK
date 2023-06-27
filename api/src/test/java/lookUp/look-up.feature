@lookup
Feature: look up list for country

Scenario Outline:  get look up list for SG
    * def attribute = '<attribute>'
    * def country = 'SG'
    * call read('this:look-up-base.feature@LookUpList')

Examples:
    |attribute          |
    # |companyEntityTypes something not exsist|
    # |industries |
    # |rejectionReasons |
    |rejectionReasonsFacility |
    |companyBankNames |
    # |durations |
    # |companyOwnerships |
    # |houseOwnerships |
    # |countries |
    # |lastEducations |
    # |mariageStatus |
    # |genders |
    # |businessTypes |
    # |sourceOfFunds |
    # |companyIdentification |
    # |estimatedAnnualRevenue |
    # |designation |
    # |businessInterestPartiesType |
    # |banks |

Scenario Outline: get look up list for ID
    * def attribute = '<attribute>'
    * def country = 'ID'
    * call read('this:look-up-base.feature@LookUpList')

Examples:
    |attribute          |
    |companyEntityTypes |
    |industries |
    |rejectionReasons |
    |rejectionReasonsFacility |
    |companyBankNames |
    |platformNames |
    |durations |
    |companyOwnerships |
    |houseOwnerships |
    |countries |
    |lastEducations |
    |mariageStatus |
    |genders |
    |businessTypes |
    |sourceOfFunds |
    |companyIdentification |
    |estimatedAnnualRevenue |
    |designation |
    |businessInterestPartiesType |
    |banks |


Scenario Outline: get look up list for MY
    * def attribute = '<attribute>'
    * def country = 'MY'
    * call read('this:look-up-base.feature@LookUpList')

Examples:
    |attribute          |
    |companyEntityTypes |
    |industries |
    |rejectionReasons |
    |rejectionReasonsFacility |
    |companyBankNames |
    |platformNames |
    |durations |
    |companyOwnerships |
    |houseOwnerships |
    |countries |
    |onlineYearlyPercentageRevenues |
    |lastEducations |
    |mariageStatus |
    |genders |
    |businessTypes |
    |sourceOfFunds |
    |companyIdentification |
    |estimatedAnnualRevenue |
    |designation |
    |businessInterestPartiesType |
    |banks |
    |financingTenures |
    |emergencyContactRelationships |