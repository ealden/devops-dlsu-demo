Given 'I want to add a new article' do
  site.articles.new.load
end

Given 'my article has the title: The Fox and the Dog' do
  site.articles.new.title.set 'The Fox and the Dog'
end

Given 'my article has the text: The quick brown fox jumps over the lazy dog' do
  site.articles.new.text.set 'The quick brown fox jumps over the lazy dog'
end

When  'I try to add my new article' do
  site.articles.new.submit.click
end

Then  'I must see my new article added' do
  site.articles.load

  assert_equal 1, site.articles.list.size
end
