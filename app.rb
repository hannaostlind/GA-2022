require 'sinatra'
require 'slim'
require 'sinatra/reloader'



get('/') do
    slim(:hem)
end

get('/hjul') do
    slim(:hjul)
end

get('/tabell') do
    slim(:buss)
end

enable :sessions

post('/matstallen') do
    rasttid = params[:rasttid].to_i
    sugenpa = params[:sugenpa]


    if rasttid.class != Integer
        
    end

    platser = {

        ingetspeciellt: {
            siffra1: [
                "Baguetterian",
                "Jättebaguetten",
                "Cafét", 
                "Coop",
                "Pita", 
                "Le pain",
                "Burger King", 
                "Golden Lee", 
                "Seaside", 
                "Subway; Domkyrkan", 
                "Subway; Kungsportsplatsen", 
                "Subway; Olivedal", 
                "Sushi Vimi", 
                "Taj Mahal", 
                "Picadeli", 
                "Vasa Pizza",
                "7-eleven; Nordstan", 
                "7-eleven; Göteborg Central"],

            siffra2: [
                "Baguetterian",
                "Jättebaguetten",
                "Cafét", 
                "Pita"]
        },

        sitta: {
            u25: [
            "Baguetterian",
            "Jättebaguetten",
            "Cafét",
            "Pita"
            ],

            u55: [
            "Le Pain",
            ],

            u80: [
            "Golden Lee", 
            "Seaside", 
            "Subway; Domkyrkan", 
            "Subway; Kungsportsplatsen", 
            "Subway; Olivedal", 
            "Sushi Vimi", 
            "Taj Mahal", 
            "Picadeli", 
            "Vasa Pizza",
            ]

        },

        mycketmat: {
            siffra1: [

            ],

            siffra2: [

            ]            
        },

        snabb: {
            siffra1: [

            ],

            siffra2: [

            ]
        },

        snacks: {
            siffra1: [

            ],

            siffra2: [

            ]
        }
    }
   
    case
    when sugenpa == "ingetspeciellt"
        
        case
        when rasttid <= 60 && rasttid >= 30
            session[:stallen] = platser[:ingetspeciellt][:siffra1]

        when rasttid <= 30
            session[:stallen] = platser[:ingetspeciellt][:siffra2]
        end
    end
    
    redirect('/')
end

