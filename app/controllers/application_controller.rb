class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bakeries' do
    bakeries = Bakery.all
    bakeries.to_json
  end

  get '/bakeries/:id' do 
    bakeries = Bakery.find(params[:id])
    bakeries.to_json(include: :baked_goods)
  end

end
