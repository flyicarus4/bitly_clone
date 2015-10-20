get '/' do
	@listing = Url.all
	erb :index
end

post '/urls' do
	@shorten = Url.shorten
	Url.create(original_url: params[:long_url], short_url: @shorten, click_count: 0)

	redirect '/'
end

get '/:short_url' do

end