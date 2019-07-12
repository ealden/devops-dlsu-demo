class SiteController < ApplicationController
  def sha
    render plain: File.read('REVISION')
  end
end
