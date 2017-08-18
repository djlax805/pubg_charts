configure :development do 
 set :database, {adapter: 'postgresql', encoding: 'unicode', database: 'test_db', username: 'test_user', password: ENV['GET_FUCKED_VIEWERS']}
 end
