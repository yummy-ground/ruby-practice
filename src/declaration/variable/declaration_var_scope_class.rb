# frozen_string_literal: true

class Ruler
  @@hello = 'world'

  def get_length
    puts @length
  end
  def set_length(len)
    @length = len
  end

  def get_hello
    puts @@hello
  end
end

ruler = Ruler.new.set_length(5)

ruler.get_length
ruler.get_hello