require('sinatra')
require('sinatra/contrib/all')


require_relative('./models/customer')
require_relative('./models/film')
require_relative('./models/screening')
require_relative('./models/ticket')
also_reload('./models/*')


get "/films" do
@films = Film.all()
erb(:index)
end
