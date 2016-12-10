#write your code here
def translate(str)
    vowels = 'aeiou'
    trans = ''
    
    if str.strip.include?(" ")
        
        arr = str.split(' ')
        new_arr = Array.new
        
        arr.each do |x|
            if vowels.include?(x[0])
                
                x = x + "ay"
                new_arr << x
                
                
            elsif vowels.include?(x[1])
            
                if x[0..1] == "qu"
                    last = x.length-1
                    x = x[2..last] + x[0..1] + 'ay'
                else
                    last = x.length-1
                    x = x[1..last] + x[0] + 'ay'
                    
                end
                new_arr << x
            
                
            elsif vowels.include?(x[2])
            
                if x[1..2] == "qu"
                    last = x.length-1
                    x = x[3..last] + x[0..2] + 'ay'
                else
                    last = x.length-1
                    x = x[2..last] + x[0..1] + 'ay'
                    
                end
                new_arr << x
                
            elsif vowels.include?(x[3])
                
                last = x.length-1
                x = x[3..last] + x[0..2] + 'ay'
                new_arr << x
                
            end
        trans = new_arr.join(" ")
        end
    
    else
    
        if vowels.include?(str[0])
            
            trans = trans + str + "ay"
            
        elsif vowels.include?(str[1])
        
            if str[0..1] == "qu"
                last = str.length-1
                trans = str[2..last] + str[0..1] + 'ay'
            else
                last = str.length-1
                trans = trans + str[1..last] + str[0] + 'ay'
            end
        
        
            
        elsif vowels.include?(str[2])
        
            if str[1..2] == "qu"
                last = str.length-1
                trans = str[3..last] + str[0..2] + 'ay'
            else
                last = str.length-1
                trans = trans + str[2..last] + str[0..1] + 'ay'
            end
        
        elsif vowels.include?(str[3])
        
            last = str.length-1
            trans = trans + str[3..last] + str[0..2] + 'ay'
        
        end
    
    end
    
    trans
end
