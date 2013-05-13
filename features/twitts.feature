Feature: Show ciklum's twitts
  I Should list of twitts
  And I should see my favorits

  Scenario: Twitts
    When I go to the homepage
    And I see title of page is test
    And I see list of twitts within 100 rows
  #   And I should see "Metro"
  #   And I should see "Rabbit"

  Scenario: Favorits
