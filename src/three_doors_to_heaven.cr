def go_hell_1day(count : Int) : Int
    return count+1
end
def go_hell_2day(count : Int) : Int
    return count+2
end
def go_heaven(count : Int) : Int
    return count
end

def select_door(day : Int) : Int
    door = Random.rand(3)
    case(door)
    when 0
        return go_heaven day
    when 1
        return select_door(go_hell_1day day)
    when 2
        return select_door(go_hell_2day day)
    end
    return 0
end

result : Int64= 0 
loop = ARGV[0].to_i64

loop.times do |i|
    result += select_door(0_u64)
end

print result / loop.to_f