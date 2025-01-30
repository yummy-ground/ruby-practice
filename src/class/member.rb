# frozen_string_literal: true

class Member
  HELLO = "Hello"

  # 클래스 변수(@@country)는 인스턴스 메서드가 직접 접근할 수 있지만
  # 인스턴스 변수처럼 접근할 수는 없음
  @@country = 'korea'

  def initialize(name)
    @name = name
  end

  def print_name
    puts @name
  end

  # @@country = 클래스 변수 -> `print_country` 메서드를 통해 접근하는 것은 가능하지만
  # member.country -> 직접 접근 불가능
  # def country
  #   @@country
  # end
  def print_country
    puts @@country
  end

  def say_hello
    puts HELLO + " I'm " + @name
  end

  attr_accessor :HELLO, :name, :country
end

member = Member.new('donggyu')
member.print_name

puts member.country
puts member.country # Getter
member.print_country

puts Member::HELLO # 상수는 {클래스 이름}::{상수 이름} 형식으로 실행해야한다.
member.say_hello