puts "Welcome to bowling. Would you like to bowl ten frames? Type Y for yes and N for no."
i = 0
j = 0
C = gets

if(C=="Y") 
  frames = Array.new(10) { Array.new(2) }
  
  
  puts "Are you ready to bowl frame number #{(i+1)}? "
  choice = gets
  while (i<10) do
    if((choice == "Y")&&(j<2))
      frames[i,j] = rand(10) 
      j = j+1
      puts "The roll was ball number #{(j+1)} of frame number #{(i+1)} is #{frames[i,j]} \n" 
    elsif ((choice == "Y")&&(j==2))
      j = 0
      i = i + 1
      frames[i,j] = rand(10)
      puts "The roll was ball number #{(j+1)} of frame number #{(i+1)} is #{frames[i,j]} \n" 
    end
  end
else
 puts "Then have a nice day!"
 
end
  

  
