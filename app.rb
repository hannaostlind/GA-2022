require 'sinatra'
require 'slim'
require 'sinatra/reloader'


get('/hem') do
    @platser = [
    "Aleppo", 
    "Burger King", 
    "Baguetterian", 
    "Cafét", 
    "Coop", 
    "Golden Lee", 
    "Jättebaguetten", 
    "Le pain", 
    "Pita", 
    "Seaside", 
    "Subway; Domkyrkan", 
    "Subway; Kungsportsplatsen", 
    "Subway; Olivedal", 
    "Sushi Vimi", 
    "Taj Mahal", 
    "Picaldei", 
    "7-eleven; Nordstan", 
    "7-eleven; Göteborg Central"]
    slim(:hem)
end

get('/hjul') do
    slim(:hjul)
end

get('/tabell') do

end

get('/') do

end

post('craving') do
    data = params[:secret]
    puts data

    redirect('/hem')
end

