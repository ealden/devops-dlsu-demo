class NewArticlePage < ApplicationPage
  set_url '/articles/new'

  elements :errors, '#error_explanation ul li'

  element :title, '#article_title'
  element :text,  '#article_text'

  element :submit,  "input[name='commit']"
end
