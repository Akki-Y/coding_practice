# single inhertance - it allows programmer to inherit the characteristics of one class to another class.
# Supports only single inheritance 
#      A----->B
# A-super class    ,B-Sub class 
# Super class - class whose characteristics are inherited is known as super class/base class/parent class.
# Sub class - class which is derived from another class is known as subclass/derived class/child class.

class Inheritance
def initialize(lang1,lang2,lang3)
    @first_lang=lang1
    @second_lang=lang2
    @third_lang=lang3
end
def first_lang
    @first_lang
    # puts 'Mothertongue - telugu'
end
def second_lang
    @second_lang
end
def third_lang
    @third_lang
    # puts 'others'
end 
end
class Language < Inheritance
    def known_lang
        @first_lang+@third_lang
     end
end
obj=Language.new('telugu','hindi','english')
puts obj.first_lang
# puts obj.second_lang
puts obj.third_lang