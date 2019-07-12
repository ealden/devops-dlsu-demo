class ArticlesPage < ApplicationPage
  set_url '/articles'

  elements :list, '#articles tbody tr'

  def new
    @new ||= NewArticlePage.new
  end
end
