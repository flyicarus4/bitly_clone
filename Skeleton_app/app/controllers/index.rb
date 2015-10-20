get '/' do
	puts '[LOG] Getting /'
	puts '[LOG] Params: #{params.inspect}'
	erb :index
end

post '/urls' do
	@shorten = Url.shorten
	Url.create(original_url: params[:long_url], short_url: @shorten)

	redirect '/'
end