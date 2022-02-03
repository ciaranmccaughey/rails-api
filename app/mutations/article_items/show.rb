module ArticleItems
    class Show < Mutations::Command
      required do
        string :id
      end
  
      optional do
        string :slug
      end
  
      def execute
        billing_item = Articles.find(id)
      end
    end
  end
  