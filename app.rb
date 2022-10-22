require 'sinatra'
require 'slim'
require 'sinatra/reloader'


get('/') do

    slim(:hem)
end

post('/raknare') do
    rasttid = params[:rasttid]
    sugenpa = params[:sugenpa]

    if rasttid.class != Integer

        slim(:hem)
    end

    platser = {

        ingetetspec: [
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
        "Picadeli", 
        "Wasa pizza",
        "7-eleven; Nordstan", 
        "7-eleven; Göteborg Central"],

        sitta: [
        "Burger King", 
        "Cafét", 
        "Golden Lee", 
        "Le pain", 
        "Seaside", 
        "Subway; Domkyrkan", 
        "Subway; Kungsportsplatsen", 
        "Subway; Olivedal"],

        mktmat: [
        "Coop", 
        "Le pain", 
        "Seaside", 
        "Subway; Olivedal", 
        "Wasa pizza"],

        snabb: [
        "Baguetterian", 
        "Cafét", 
        "Coop", 
        "Jättebaguetten", 
        "Pita"],

        snacks: [
        "Bagutterian", 
        "Cafét", 
        "Coop", 
        "Jättebaguetten???", 
        "Subway: Olivedal", 
        "7-eleven; Nordstan", 
        "7-eleven; Göteborg Central"]

    }

    @stallen = []


end

get('/hjul') do
    slim(:hjul)
end

get('/tabell') do

end



