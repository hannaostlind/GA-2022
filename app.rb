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

get('/buss') do
    slim(:buss)
end


post('/matstallen') do
    tid = params[:rasttid].to_i
    sugenpa = params[:sugenpa]


    platser = {

        ingetspeciellt: {
            u20: [
                "Cafét"
            ],

            u40: [
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],

            u50: [
                "Coop",                 
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],

            u60: [
                "Vasa Pizza",
                "Picadeli",
                "7-eleven; Nordstan",
                "7-eleven; Göteborg Central",
                "Coop",                 
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét",

            ],

            u70: [
                "Subway; Olivedal",
                "Le pain",
                "Sushi Vimi",
                "Burger King",
                "Vasa Pizza",
                "Picadeli",
                "7-eleven; Nordstan",
                "7-eleven; Göteborg Central",
                "Coop",                 
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
                
            ],

            o70: [
                "Seaside",
                "Golden Lee", 
                "Taj Mahal",
                "Subway; Olivedal",
                "Le pain",
                "Sushi Vimi",
                "Burger King",
                "Vasa Pizza",
                "Picadeli",
                "7-eleven; Nordstan",
                "7-eleven; Göteborg Central",
                "Coop",                 
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét",
            ]
        },

        sitta: {
            u20: [
                "¯\\_(ツ)_/¯",
            ],

            u40: [
                "Baguetterian"
            ],

            u50: [
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Baguetterian"
            ],

            u60: [
                "Vasa Pizza",
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Baguetterian"
            ],

            u70: [
                "Subway; Olivedal",
                "Le pain",
                "Sushi Vimi",
                "Burger King",
                "Vasa Pizza",
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Baguetterian"
            ],

            o70: [
                "Seaside",
                "Taj Mahal",
                "Subway; Olivedal",
                "Le pain",
                "Sushi Vimi",
                "Burger King",
                "Vasa Pizza",
                "Subway; Kungsportsplatsen", 
                "Subway; Domkyrkan",
                "Baguetterian",
            ]
        },

        mycketmat: {

            u40: [
                "¯\\_(ツ)_/¯",
            ],

            u50: [
                "Coop"
            ],

            u60: [
                "Vasa Pizza",
                "Coop"
            ],

            u70: [
                "Subway; Olivedal",
                "Le pain",
                "Burger King",
                "Vasa Pizza",
                "Coop"
            ],

            o70: [
                "Seaside",
                "Subway; Olivedal",
                "Le pain",
                "Burger King",
                "Vasa Pizza",
                "Coop",
            ]
        },

        snabb: {

            u20: [
                "Cafét"
            ],

            u40: [
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],

            o70: [
                "Coop",
                "Pita", 
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ]
        },

        snacks: {

            u20: [
                "Cafét"
            ],

            u40: [
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],

            u60: [
                "Coop",
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],

            u70: [
                "Burger King",
                "Subway; Olivedal",
                "Coop",
                "Baguetterian",
                "Jättebaguetten",
                "Cafét"
            ],
        }
    }
   
    case
    when sugenpa == "ingetspeciellt"
        
        case
        when tid <= 20
            session[:stallen] = platser[:ingetspeciellt][:u20]
        
        when tid >= 21 && tid <= 40
            session[:stallen] = platser[:ingetspeciellt][:u40]
        
        when tid >= 41 && tid <= 50
            session[:stallen] = platser[:ingetspeciellt][:u50] 
        
        when tid >= 51 && tid <= 60
            session[:stallen] = platser[:ingetspeciellt][:u60]

        when tid >= 61 && tid <= 70
            session[:stallen] = platser[:ingetspeciellt][:u70]

        when tid >= 71
            session[:stallen] = platser[:ingetspeciellt][:o70]
        end

    when sugenpa == "sitta"
        
        case
        when tid <= 20
            session[:stallen] = platser[:sitta][:u20]
        
        when tid >= 21 && tid <= 40
            session[:stallen] = platser[:sitta][:u40]
        
        when tid >= 41 && tid <= 50
            session[:stallen] = platser[:sitta][:u50] 
        
        when tid >= 51 && tid <= 60
            session[:stallen] = platser[:sitta][:u60]

        when tid >= 61 && tid <= 70
            session[:stallen] = platser[:sitta][:u70]

        when tid >= 71
            session[:stallen] = platser[:sitta][:o70]
        end
    
    when sugenpa == "mycketmat"
        
        case

        when tid <= 40
            session[:stallen] = platser[:mycketmat][:u40]
        
        when tid >= 41 && tid <= 50
            session[:stallen] = platser[:mycketmat][:u50] 
        
        when tid >= 51 && tid <= 60
            session[:stallen] = platser[:mycketmat][:u60]

        when tid >= 61 && tid <= 70
            session[:stallen] = platser[:mycketmat][:u70]

        when tid >= 71
            session[:stallen] = platser[:mycketmat][:o70]
        end

    when sugenpa == "snabb"
        
        case
        when tid <= 20
            session[:stallen] = platser[:snabb][:u20]
        
        when tid >= 21 && tid <= 40
            session[:stallen] = platser[:snabb][:u40]
        
        when tid >= 41 
            session[:stallen] = platser[:snabb][:o70] 
        end

    when sugenpa == "snacks"
        
        case
        when tid <= 20
            session[:stallen] = platser[:snacks][:u20]
        
        when tid >= 21 && tid <= 40
            session[:stallen] = platser[:snacks][:u40]
        
        when tid >= 41 && tid <= 60
            session[:stallen] = platser[:snacks][:u60]

        when tid >= 61 
            session[:stallen] = platser[:snacks][:u70]
        end
    end

    
    redirect('/')
end

post ('/karta') do

    i = params[:kartstalle].to_i

    sokvag = [
        "2132.5267852234583!2d11.972591915322063!3d57.69051954835806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff30cb0e6c031%3A0x512e1a3cb4192a9!2sNTI%20Gymnasiet%20Johanneberg!5e0!3m2!1ssv!2sse!4v1665343764003!5m2!1ssv!2sse",
        "2143.5557568937297!2d11.975970847812615!3d57.69197397864173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff37497e24633%3A0x2e00b5078eb5d296!2sBaguetteria%20No%201!5e0!3m2!1ssv!2sse!4v1668245870668!5m2!1ssv!2sse",
        "2132.467386351964!2d11.978653799999993!3d57.69152879999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff374b8eb1fdd%3A0x809e9af59319dd2e!2sGunillas%20Baguetter!5e0!3m2!1ssv!2sse!4v1668246082553!5m2!1ssv!2sse",
        "2132.002113770141!2d11.97692320000001!3d57.6994339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff370fde6990d%3A0xb177af544a1b4f74!2sCoop!5e0!3m2!1ssv!2sse!4v1668246134260!5m2!1ssv!2sse",
        "2132.002113770141!2d11.97692320000001!3d57.6994339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff36e0c555555%3A0x4fd24843b164e8ad!2sPita!5e0!3m2!1ssv!2sse!4v1668246239787!5m2!1ssv!2sse",
        "8528.223315937586!2d11.9571120173828!3d57.698521299999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff36e6679c33b%3A0xa3fed4bfbdd3643a!2sLe%20Pain%20Francais%20(Vasa)!5e0!3m2!1ssv!2sse!4v1668246281521!5m2!1ssv!2sse",
        "34103.24328718168!2d11.92966476953125!3d57.708767599999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff366e4b48a57%3A0x800aa080d949a288!2sBurger%20King%20Nordstan!5e0!3m2!1ssv!2sse!4v1668246324182!5m2!1ssv!2sse",
        "2132.3085822366475!2d11.91863180000001!3d57.694227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff335106c30e9%3A0xfb12d1ebd4eff869!2sGolden%20Lee!5e0!3m2!1ssv!2sse!4v1668246343660!5m2!1ssv!2sse",
        "2131.8864117393396!2d11.945784600000003!3d57.7013996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff34226aaaaab%3A0x8ca4f1e339d47145!2sRestaurang%20Seaside!5e0!3m2!1ssv!2sse!4v1668246405970!5m2!1ssv!2sse",
        "2131.7466500873115!2d11.9636185!3d57.703773999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff3660373c131%3A0xb28f5bcda7c5c8b5!2sSubway!5e0!3m2!1ssv!2sse!4v1668246446773!5m2!1ssv!2sse",
        "17053.460024746248!2d11.956703889844277!3d57.70486376754366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff3650e343589%3A0xf266cf8deadd67e0!2sSUBWAY!5e0!3m2!1ssv!2sse!4v1668246516160!5m2!1ssv!2sse",
        "17053.460024746248!2d11.956703889844277!3d57.70486376754366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff3154c78fe5b%3A0xb10e0af1cc139430!2sSubway!5e0!3m2!1ssv!2sse!4v1668246541958!5m2!1ssv!2sse",
        "3306.6509071642145!2d11.951708991640544!3d57.69339153806153!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff396eeb58b93%3A0xda47ae6972445e13!2sSushi%20vimi!5e0!3m2!1ssv!2sse!4v1668246570579!5m2!1ssv!2sse",
        "2131.992578468477!2d11.947117800000003!3d57.699595900000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff343de3fb7ad%3A0x6ab13481002b4deb!2sTaj%20Mahal%20-%20Indisk%20Restaurang%20G%C3%B6teborg!5e0!3m2!1ssv!2sse!4v1668246589622!5m2!1ssv!2sse",
        "2131.515150025117!2d11.968365999999998!3d57.7077068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff363f166de41%3A0xd45887f0b5ed13b6!2sPicadeli%20Nordstan!5e0!3m2!1ssv!2sse!4v1668246610973!5m2!1ssv!2sse",
        "4264.35799282236!2d11.965177258691414!3d57.69642870000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff3f9491649c3%3A0xaf19d6577fc26921!2svasa%20pizzeria!5e0!3m2!1ssv!2sse!4v1668246638663!5m2!1ssv!2sse",
        "2131.467532747104!2d11.967288662050505!3d57.708515716990235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff363877819db%3A0xb374b07d706f9edb!2s7-Eleven!5e0!3m2!1ssv!2sse!4v1668246714454!5m2!1ssv!2sse",
        "8525.73804081741!2d11.96738361617316!3d57.70907669601292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464ff36376bc105f%3A0x91fadafc75120a43!2s7-Eleven!5e0!3m2!1ssv!2sse!4v1668246770064!5m2!1ssv!2sse"
    ]

    session[:lank] = sokvag[i]
    session[:indes] = i

    redirect('/')
end



