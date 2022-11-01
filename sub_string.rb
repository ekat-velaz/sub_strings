$dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
$string_value = "Howdy partner, sit down! How's it going?"
$hash_values = {}
def substrings
    $string_value = $string_value.downcase.split(' ')
    $string_value.each {|el| 
    $dictionary.each {|element|    
        if el.include?(element) && $hash_values.none? {|k,v| k == element}
    $hash_values.store(element, 1) 
    elsif el.include?(element) && $hash_values.include?(element)
         $hash_values[element] += 1  
    end}
}
    p $hash_values
end
substrings 