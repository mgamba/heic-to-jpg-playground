require 'sinatra'
require 'base64'

set :environment, :production

get '/' do
  html = '
    <form action="upload" method="POST" enctype="multipart/form-data">
      <input type="file" name="file" accept="image/heic">
      <input type="submit" value="Upload image">
    </form>
  '
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
