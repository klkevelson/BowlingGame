class Frame

  def initialize
      @rolls = Array.new(2)
  end
  
  def roll
      #rolls << rand(10) ? @rolls.size < 2: puts "Must leave frame"      
      if(@rolls.size < 2)
          rolls << rand(10)
      else
          puts "Must Leave Frame"
      end
  end
  
  def count
      @rolls.inject do |sum, x|
        sum + x
       end
   end
end


frames = Array.new(10)

for i in 0..9
  puts "We're bowling. Would you like to bowl a new frame? Y for yes, N for no, S for score"

  C = gets

  if((C == "Y")&&(frames.size<10))
    f = Frame.new
    #frames(i) = f.rolls.count
    puts "Bowling"
  else
    frames.inject do |sum, x|
      sum + x
    end
    puts "Your score is #{sum}"
  end
  
  
end

  
  