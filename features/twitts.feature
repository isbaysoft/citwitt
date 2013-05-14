Feature: Show ciklum's twitts
  I Should list of twitts
  And I should see my favorits
  When I signed in can use favorites feature

  Scenario: Twitts
    Given I have opened homepage
    Then I see title of page is "test"
    And I should see at least one twitt
    And I follow "Sign in via Twitter"
    And Twitter authorizes me
    Then I should see "Logged in as
