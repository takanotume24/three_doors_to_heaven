require "./k_door.cr"

DOOR = 1000
NUMBER_OF_SIMURATION = 10000

DOOR.times do |i|
  K_Door.k_door NUMBER_OF_SIMURATION, i
end
