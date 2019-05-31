Feature:

  # Name of scenario will be `Running with value: countries[0]` instead of `Running with value: USA`
  Scenario Outline: Running with value: <country>
    Given def countries =
    """
    ['USA', 'Whatever']
    """
    And def currentCountry = <country>
    Then match currentCountry == "USA"
    Examples:
      | country!     |
      | countries[0] |
