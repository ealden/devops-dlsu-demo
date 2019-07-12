Given 'I want to add a new article' do
  site.articles.new.load
end

Given 'my article has the title {string}' do |title|
  site.articles.new.title.set title
end

Given 'my article has the text {string}' do |text|
  site.articles.new.text.set text
end

When  'I try to add my new article' do
  site.articles.new.submit.click
end

Then  'I must see my new article added' do
  site.articles.load

  assert_equal 1, site.articles.list.size
end

Then  'I must be notified that {string}' do |error_message|
  assert_equal error_message, site.articles.new.errors.first.text
end

Then  'I must not have any new articles added' do
  site.articles.load

  assert site.articles.list.empty?
end
