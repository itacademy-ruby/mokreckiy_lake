# class Duck
#   def fly; 'flying' end

#   def quack; 'quacking' end

#   def swim; 'swimming' end
# end

# class RubberDuck < Duck
# 	def fly; nil end
# end

# class WoodenDuck < Duck
# 	def fly; nil end
# 	def quack; nil end
# end

# class FlyingDuck
# end

# class QuakingDuck
# end

module Flying
	def fly; 'flying' end
end

module Quaking
	def quack; 'quack' end
end

module Swimming
	def swim; 'swimming' end
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

ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodenDuck.new

ducks.each do |duck|
	puts "#{duck.class} #{duck.swim}"
	puts "#{duck.class} #{duck.quack}"
	puts "#{duck.class} #{duck.fly}"
end
