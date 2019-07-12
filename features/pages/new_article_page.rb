class NewArticlePage < ApplicationPage
  set_url '/articles/new'

  element :title, '#article_title'
  element :text,  '#article_text'

  element :submit,  "input[name='commit']"
end
