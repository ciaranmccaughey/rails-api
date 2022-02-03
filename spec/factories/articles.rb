FactoryBot.define do
  
  factory :article do
    # title { "Sample Article" }
    sequence(:title) { |n| "Sample article #{n}"}
    content { "Sample Content" }
    # slug { "sample-article" }
    sequence(:slug) { |n| "sample-article-#{n}"}
  end
end
