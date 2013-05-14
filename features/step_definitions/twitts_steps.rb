Given(/^I have opened homepage$/) do
  visit root_url
end

Then(/^I see title of page is "(.*?)"$/) do |title|
  page.should have_title(title)
end

Then(/^I should see at least one twitt$/) do
  page.should have_selector('.twitt_row')
end

Then(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^Twitter authorizes me$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "Logged in as$/) do
  pending # express the regexp above with the code you wish you had
end
