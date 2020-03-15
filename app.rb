require 'sinatra'
require 'base64'

set :environment, :production
set :public_folder, 'public'

get '/' do
  redirect '/index.html'
end

post '/upload' do
  puts "FILE"
  puts params.inspect

  filename = "#{SecureRandom.hex}-#{params[:file][:filename]}"
  file = params[:file][:tempfile]

  puts "Saving image: #{filename}"
  File.open(filename, 'wb') do |f|
    f.write(file.read)
  end
  
  redirect to('/')
end
