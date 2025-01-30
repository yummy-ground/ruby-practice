# frozen_string_literal: true

class AttrPractice
  CLASS_CONSTANT = "CONSTANT_CLASS"
  @@class_var = "VARIABLE_CLASS"

  def initialize(var)
    @instance_var = var
  end

  def instance_var
    @instance_var
  end

  def class_var
    @@class_var
  end
end

puts AttrPractice::CLASS_CONSTANT

attr_practice = AttrPractice.new('VARIABLE_INSTANCE')

puts attr_practice.instance_variable_get("@instance_var")
puts attr_practice.instance_var

puts attr_practice.class_var