my_inject
=========

Inject method for  Ruby's Array class reimplemented using Ruby.

To use this, require "my_inject" in IRB or in a .rb file

then you are free to use this method on an array. eg 

  test_array = [1,2,3]
  
  test_array.my_inject do |accumulator, element|
    accumulator + element
  end


