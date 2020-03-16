# cat is not always a pet, you can have a stray cat

class Cat < Animal

  # If i mix in modules here, can the class use that code? - YES
  
  include Ducklike

  

  # :speak, :initialize

  def speak
    # I'm going to add to this superclass's behavior.
    super     # super refers to the "superclass"(parent class)
    puts "Meow."
  end

end
