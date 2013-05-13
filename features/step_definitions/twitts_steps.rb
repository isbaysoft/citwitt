When(/^I go to the homepage$/) do
  visit root_url
end

When(/^I see title of page is test$/) do
  page.has_title? "my title"
end

Then(/^I see list of twitts within (\d+) rows$/) do |count|
  page.has_selector?('.twitt_row', count: count)
end
