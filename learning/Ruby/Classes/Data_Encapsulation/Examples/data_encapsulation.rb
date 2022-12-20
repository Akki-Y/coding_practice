# Data Encapsulation :- The abilty to wrap the data as single unit.

# => Simple terms, It is a mechanism to wrap the data & code that manipulates the data.



class Data_encapsulation
    def initialize (whatsapp,instagram,twitter)
       @app1 = whatsapp
       @app2=instagram
       @app3=twitter
    end
    def app1
        @app1
    end
    def app2
        @app2
    end
    def app3
        @app3
    end
end
apps=Data_encapsulation.new( 'communicate' ,'watch reels','tweet')
puts apps.app1
puts apps.app2
puts apps.app3