def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum (array)
    array_sum = 0
    array.each do |i|
        array_sum += i
    end
    array_sum
end

def multiply (array)
    array_product = array[0]
    i = 1
    while i < array.length
        array_product *= array[i]
        i += 1
    end
    array_product
end

def power (a, b)
    result = 1
    b.times do
        result *= a
    end
    result
end

def factorial (n)
    result = 1
    n.times do
        result *= n
        n -= 1
    end
    result
end

