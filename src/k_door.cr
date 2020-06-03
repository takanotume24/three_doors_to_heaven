module K_Door
  def self.go_heaven(count)
    return count
  end

  def self.go_hell(count, selected_door)
    return count + selected_door
  end

  def self.select_door(day, door)
    if door < 1
      return nil
    end

    selected_door = Random.rand(door)

    if selected_door == 0
      return go_heaven day
    else
      return select_door go_hell(day, selected_door), door
    end
  end

  def self.k_door(num_of_simulation, door)
    sum : Int64 = 0
    max : Int64 = 0
    num_of_simulation.times do |i|
      result = select_door(0_i64, door)
      if result
        sum += result
        if max < result
          max = result
        end
      end
    end
    puts "天国に行ける平均日数: #{sum / num_of_simulation.to_f}日"
    puts "最長で地獄にいた日数: #{max}日"
  end
end

# if ARGV.size
#   num_of_simulation = ARGV[0].to_i64
#   door = ARGV[1].to_i64
#   K_Door.k_door num_of_simulation, door
# end
