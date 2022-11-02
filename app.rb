require 'sinatra'
require 'slim'
require 'sinatra/reloader'

enable :sessions

get('/') do
    slim(:hem)
end

get('/hjul') do
    slim(:hjul)
end

get('/tabell') do
    slim(:buss)
end

post('/matstallen') do
    rasttid = params[:rasttid].to_i
    sugenpa = params[:sugenpa]
    stallen = []


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
                "Wasa Pizza",
                "7-eleven; Nordstan", 
                "7-eleven; Göteborg Central"],

            siffra2: [

            ]
        },

        sitta: {
            siffra1: [

            ],

            siffra2: [

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
        when rasttid <= 60
            session[:stallen] = platser[:ingetspeciellt][:siffra1]
        end
    end
    
    redirect('/')
end

