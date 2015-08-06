require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @amount = params.fetch('amount').to_f.coin_combo()
  erb(:change)
end
