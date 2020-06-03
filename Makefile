SOURCE_3_DOOR = 3_doors_to_heaven
SOURCE_K_DOOR = k_doors_to_heaven 

build:
	crystal build src/${SOURCE_3_DOOR}.cr -o bin/${SOURCE_3_DOOR}
	crystal build src/${SOURCE_K_DOOR}.cr -o bin/${SOURCE_K_DOOR}