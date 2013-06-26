#Lake with ducks

module Flying
	def fly
    'flying'
  end
end

module Quaking
	def quack
    'quack'
  end
end

module Swimming
	def swim
    'swimming'
  end
end

module JetFlying
	include Flying
	def fly
	  super + ' with jet engine'
  end
end

module CopterFly
	include Flying
	def fly
	  super + ' with copter engine'
	end
end

class Duck
	def fly; "can\'t fly" end
	def swim; "can\'t swim" end
	def quack; "can\'t quack" end
end

class RealDuck < Duck
  include Quaking
  include Swimming
  include Flying
end

class RubberDuck < Duck
	include Quaking
	include Swimming
end

class WoodenDuck < Duck
	include Swimming
end

class RoboDuck < Duck
  include Quaking
  include JetFlying
end

class MechaDuck < Duck
  include Quaking
  include CopterFly

end

ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodenDuck.new
ducks << RoboDuck.new
ducks << MechaDuck.new

ducks.each do |duck|
  puts "#{duck.class} #{duck.swim}"
  puts "#{duck.class} #{duck.quack}"
  puts "#{duck.class} #{duck.fly}"
end
