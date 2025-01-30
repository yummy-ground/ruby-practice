# frozen_string_literal: true

class MemberA
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
  def name=(name)
    @name = name
  end
end

# to-be
class MemberB
  def initialize(name)
    @name = name
  end

  attr_reader :name
  attr_writer :name
end

class MemberC
  CONSTANT = ''
  @@member_c_class_var = ''
  def initialize(name)
    @name = name
  end

  attr_accessor :name, :member_c_class_var, :CONSTANT
end

member_a = MemberA.new('donggyu')
member_b = MemberB.new('donggyu')
member_c = MemberC.new('donggyu')

puts member_a.name
puts member_b.name
puts member_c.name

member_a.name = "new donggyu"
member_b.name = "new donggyu"
member_c.name = "new donggyu"
member_c.member_c_class_var = "new donggyu"
member_c.CONSTANT = "new donggyu"

puts member_a.name
puts member_b.name
puts member_c.name
puts member_c.member_c_class_var
puts member_c.CONSTANT