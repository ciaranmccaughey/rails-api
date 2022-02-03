require 'rails_helper'

RSpec.describe Article, type: :model do

  describe '#validations' do

    let(:article) { build(:article) }

    it "test article object title" do
      # article = FactoryBot.create(:article)
      article = create(:article)
      expect(article.title).to include ("Sample article")
    end

    it "tests that factory is valid"  do
      # article = build(:article)
      expect(article).to be_valid
      article.save!
      article1 = build(:article)
      expect(article1).to be_valid
    end

    it 'has an invalid title' do
      # article = build(:article, title: '');
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end

    it 'has an invalid content' do
      # article = build(:article, title: '');
      article.content = ''
      expect(article).not_to be_valid
      expect(article.errors[:content]).to include("can't be blank")
    end

    it 'has an invalid slug' do
      # article = build(:article, title: '');
      article.slug = ''
      expect(article).not_to be_valid
      expect(article.errors[:slug]).to include("can't be blank")
    end

    it 'has a non unique slug' do
      article1 = create(:article)
      expect(article1).to be_valid
      puts article1.slug
      article2 = build(:article, slug: article1.slug)
      expect(article2).not_to be_valid
      expect(article2.errors[:slug]).to include('has already been taken')
    end


  end
end
