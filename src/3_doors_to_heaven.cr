require "./k_doors.cr"

num_of_simulation = ARGV[0].to_i64
door = 3
K_Door.k_door num_of_simulation, door
