configure :development do
 set :database, {
     adapter: 'postgresql',
     encoding: 'unicode',
      database: '',
      username: '',
       password: ENV['RING_PASSWORD']
    }
 end
