def first_repeated_value(array)
    set = Set.new

    for i in 0..array.length
        return array[i] if set.include?(array[i])
        set.add(array[i])
    end
    nil
end

class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end
    
    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size 
        @hash.size
    end
end
