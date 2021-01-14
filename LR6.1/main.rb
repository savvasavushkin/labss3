def calculate(eps)
    return if eps <= 0
    a, b = 1, 2
    h = eps
    i = 0
    x = a
    sum = Math.log(x)*1.0/x
    loop do
    prev = sum
    x += h
    i += 1
    sum += Math.log(x)*1.0/x
    break if x > b
    end
    sum *= h
    { :sum => sum, :iter => i }
    end