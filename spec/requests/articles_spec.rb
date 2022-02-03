require 'rails_helper'

RSpec.describe ArticlesController  do

    describe '#index' do
        it 'returns a success response' do
            get '/articles.json'
            # expect(response.status).to eq(200)
            expect(response).to have_http_status(:ok)
        end

        it 'should return json array of articles' do
            article = create :article
            get '/articles.json'
            expectedArticle = JSON.parse(response.body)[0]

            aggregate_failures do
                # the response should match the newly created article
                expect(expectedArticle['id']).to eq(article.id)
                expect(expectedArticle['title']).to eq(article.title)
                expect(expectedArticle['content']).to eq(article.content)
                expect(expectedArticle['slug']).to eq(article.slug)
            end
        end

        it 'returns articles in proper order' do
            article = create(:article, created_at: 1.hour.ago)
            article1 = create :article
            get '/articles.json'
            expectedArticles = JSON.parse(response.body)
            ids = [expectedArticles[0]['id'], expectedArticles[1]['id']];
            expect(ids).to eq([article1.id, article.id])
        end

        it 'pagingate results' do

            article1, article2, article3 = create_list(:article, 3);
            get '/articles.json', params: { page: { number: 2, size: 1}}
            expectedArticles = JSON.parse(response.body)

            expect(expectedArticles.length).to eq(1)
            expect(expectedArticles[0].id).to eq(article2.id)

            puts expectedArticles.length

        end

    end
end