require 'sinatra'
require 'slim'
require 'sinatra/reloader'


get('/') do

    slim(:hem)
end

enable :sessions

post('/design_pattern') do
    rasttid = params[:rasttid]
    sugenpa = params[:sugenpa]

    if rasttid.class != Integer
        redirect('/')
    end
    
    stallen = []

    platser = {

        "ingetspeciellt" => {
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

        "sitta" => {
            siffra1: [

            ],

            siffra2: [

            ]
        },

        "mycketmat" => {
            siffra1: [

            ],

            siffra2: [

            ]            
        },

        "snabb" => {
            siffra1: [

            ],

            siffra2: [

            ]
        },

        "snacks" => {
            siffra1: [

            ],

            siffra2: [

            ]
        }
    }

    case
    when sugenpa == ingetspeciellt

        case
        when rasttid <= 60
                stallen << platser["ingetspeciellt"][:siffra2]
        end
    end





    

end

get('/hjul') do
    slim(:hjul)
end

get('/tabell') do

end



