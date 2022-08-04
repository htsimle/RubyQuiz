require 'csv'
require 'timeout'
quiz = CSV.read("problems.csv")
wrongAns = 0
rightAns = 0

status = Timeout::timeout(30) {
   for i in 0..11  
      puts "Q#{i+1}" + ": -> What is " + quiz[i][0] +" ?"
      ans = gets.chomp.to_i 
      
      if ans == quiz[i][1].chomp.to_i
         rightAns = rightAns+1
      else
         wrongAns = wrongAns+1
      end
   end
}
puts "You Provide #{rightAns} right and #{wrongAns} wrong answers."
puts "Press 1 if you want to change the file name else 0"
flag = gets.chomp.to_i
if flag == 1
   puts "Now, Enter the New filename: "
   fileName= gets
   File.rename("problem.csv", fileName + ".csv")
end
