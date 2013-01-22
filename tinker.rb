

@grid = Hash.new("yadda")

for i in 0..10
  for j in 0..10
    puts @grid[[i,j]]
  end
end

puts "mega: #{@grid[[1,000,000, 2,000,000]]}"
