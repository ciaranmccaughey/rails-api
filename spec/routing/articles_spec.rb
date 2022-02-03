require 'rails_helper'

RSpec.describe '/articles routes' do
    it 'routes to articles#index' do
        expect(get, '/articles').to route_to(controller: 'articles', actions: 'index')
        # expect(get, '/articles?page=[number=3]').to route_to('articles#index')
        # expect(get, '/articles').to route_to('articles#index')
    end
end