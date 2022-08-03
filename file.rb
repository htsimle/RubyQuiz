require 'csv'
quiz = CSV.read("problems.csv")
wrongAns = 0
rightAns = 0
for i in 0..11  
     puts "Q#{i+1}" + ": -> What is " + quiz[i][0] +" ?"
     ans = gets.chomp.to_i 
     if ans == quiz[i][1].chomp.to_i
        rightAns = rightAns+1
     else
        wrongAns = wrongAns+1
     end
end
puts "You Provide #{rightAns} right and #{wrongAns} wrong answers."
