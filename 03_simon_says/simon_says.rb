#write your code here
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat str, num=2
    if num == 2
        str + " " + str
    else
        i = 0
        while i < num-1
            sum = sum.to_s + str + " "
            i += 1
        end
        sum = sum + str
    end
end

def start_of_word(str,num)
    str[0..num-1]
end

def first_word(str)
    arr = str.split(" ")
    arr[0]
end

def titleize(str)
    little_words = ['and', 'the', 'a', 'an', 'or', 'but', 'for', 'in', 'as', 'of', 'up', 'nor', 'on', 'at', 'to', 'by', 'over', 'with']
    arr = Array.new
    new_arr = Array.new
    
    if str.include?(" ")
        
        arr = str.split(" ")
        
        arr.each do |a|
            if little_words.include?(a) == false
                a.capitalize!
            end
            
            new_arr.push a
            new_arr[0].capitalize!
        end
        new_str = new_arr.join(" ")
        
        return new_str
    end
    
    str.capitalize
end
