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
