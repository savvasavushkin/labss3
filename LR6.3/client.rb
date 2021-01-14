require_relative 'source'

puts 'block or lambda'
case gets.chomp
when 'block'
  puts 'sin or tg'
  case gets.chomp
  when 'sin'
    Differ.new.differ_with do |x|
      Math.sin(x)
    end
  when 'tg'
    Differ.new.differ_with do |x|
      Math.tan(x)
    end
  else
    p 'invalid input'
  end

when 'lambda'
  puts 'sin or tg'
  case gets.chomp
  when 'sin'
    Differ.new.differ_with &->(x) { Math.sin(x) }
  when 'tg'
    Differ.new.differ_with &->(x) { Math.tan(x) }
  else
    p 'invalid input'
  end

else
  p 'invalid input'
end