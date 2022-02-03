module ArticleItems
    class Index < Mutations::Command
      def execute
        Article.all.order(created_at: :desc)
      end
    end
end