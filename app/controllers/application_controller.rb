class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/queens" do
    Queen.all.to_json
  end

  get "/random-queen" do
    Queen.all.sample.to_json
  end

  post "/queens" do
    x = Queen.create(
      name: params[:name],
      winner: params[:winner],
      missCongeniality: params[:missCongeniality],
      image_url: params[:image_url],
      quote: params[:quote]
    )
    x.to_json
  end

end
