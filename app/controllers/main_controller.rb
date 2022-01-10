class MainController < ApplicationController

  layout "application"

  def index

    @articles = Article.limit(30).order(:created_at)

    @hot = @articles.slice(0, 2)



    render "index"
  end

end
