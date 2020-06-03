module K_Door
  def self.go_heaven(count)
    count
  end

  def self.go_hell(count, selected_door)
    count + selected_door
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

  def self.variance (results)
    n = results.size
    average = results.sum / n
    sigma = 0
    results.each do |result|
      sigma += (result - average) ** 2
    end

    sigma / n
  end

  def self.k_door(num_of_simulation, door, flag_csv = false)
    sum : Int64 = 0
    max : Int64 = 0
    results = [] of Int64

    num_of_simulation.times do |i|
      result = select_door(0_i64, door)
      if result
        sum += result
        results << result
        if max < result
          max = result
        end
      end
    end

    variance = variance results
    average = results.sum / results.size

    if flag_csv
      puts "#{door},#{average},#{variance}"
    else
      puts "#{door}枚のドアで#{num_of_simulation}回試行すると､"
      puts "平均#{average}, 分散 : #{variance}"
    end
  end
end

