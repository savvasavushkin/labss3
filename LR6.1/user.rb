require_relative 'main.rb'

hash = calculate 1e-3
puts "Результат с точностью 1e-3: #{hash[:sum]}, количество итераций: #{hash[:iter]}"

hash = calculate 1e-4
puts "Результат с точностью 1e-4: #{hash[:sum]}, количество итераций: #{hash[:iter]}"