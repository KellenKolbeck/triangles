require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:index)
  end

get('/triangles') do
  @a_side=params.fetch('a_side')
  @b_side=params.fetch('b_side')
  @c_side=params.fetch('c_side')
  @triangle=Triangle.new(@a_side, @b_side, @c_side)
  erb(:triangles)
  end
