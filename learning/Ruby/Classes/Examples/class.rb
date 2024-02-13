# Class hold data, have ,methods that interact with that data, and are used to instantiate objects.

class WhatAreClasses
  def initialize
    @data = "Im instance data of this object. Hello"
  end

  def method
    puts @data.gsub("instance","altered")
  end
end

object = WhatAreClasses.new
object.method


