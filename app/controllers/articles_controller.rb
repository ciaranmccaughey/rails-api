class ArticlesController < ApplicationController

    def index 
        # @articles = Article.all
        @articles = ArticleItems::Index.run!
    end

    def show 
        @articles = ArticleItems::Show.run!(show_params.to_h)
    end
end