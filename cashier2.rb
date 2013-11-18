require 'pry'
total = []
while true
  puts "What is the sale price?"
  subtotal = gets.chomp
  total << subtotal
  if subtotal == "done"
    total.pop
    text = "Here are your item prices:"
    total.each do |item|
      item.to_f.round(2)
      puts item
    end
    total_price = total.inject(0){|sum, price| sum.to_f + price.to_f}
    puts "The total amount due is #{total_price}"
    puts "What is the amount tendered?"
    tender = gets.chomp.to_f
    change = tender - total_price
    date = Time.now.strftime("%m/%d/%y %I:%M:%S") 
    puts "=====Thank You!====="
    puts "The total change due is #{change}"
    puts "#{date}"
    abort
  end

end
    
