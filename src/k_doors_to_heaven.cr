require "./k_doors.cr"

num_of_simulation = ARGV[0].to_i64
door = ARGV[1].to_i64
K_Door.k_door num_of_simulation, door
