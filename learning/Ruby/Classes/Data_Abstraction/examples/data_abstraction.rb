# Data Abstraction:- The idea of representing significant details & hiding details of functionality.
         # 3 levels - Private,Public,Protected
         #Private example

class Data_abstraction

    def initialize ( gallery ,no, apps)
        @Personal_gallery =gallery
        @Personal_number= no
        @Used_apps =apps
    end
    private
    def Personal_gallery
        @Personal_gallery
    end
    def Personal_number
        @Personal_number
    end
    def Used_apps
        @Used_apps
    end
end
    phone= Data_abstraction.new( 'camera',8999999999,'Whatsapp')
    puts phone.Personal_gallery
    puts phone.Personal_number
    puts phone.Used_apps