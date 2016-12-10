#write your code here
def add(x,y)
    x+y
end

def subtract(x,y)
    x-y
end

def sum(arr)
    sum = 0
    arr.each{|x| sum+=x}
    sum
end

def multiply(arr)
    total = 1
    arr.each{|x| total*=x}
    total
end

def power(a,b)
    a**b
end

def factorial(a)
    total = 1
    if a == 0
        total = 0
    end
    while a > 0
        total *= a
        a-=1
    end
    total
end

