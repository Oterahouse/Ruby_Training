# food.rbとdrink.rbを読み込むように書き換えてください
require "./menu"

# food1とfood2をFoodクラスのインスタンスに書き換えてください
food1 = Menu.new(name: "ピザ", price: 800)
food2 = Menu.new(name: "すし", price: 1000)
# drink1とdrink2をDrinkクラスのインスタンスに書き換えてください
drink1 = Menu.new(name: "コーラ", price: 300)
drink2 = Menu.new(name: "お茶", price: 200)

menus = [food1, food2, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"
