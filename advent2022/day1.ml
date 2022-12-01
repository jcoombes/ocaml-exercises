def max_cal_elf(Calories: list[list]):
    max_so_far = 0
    for elf in Calories:
        if sum(elf) > max_so_far:
	    max_so_far = sum(elf)
    return max_so_far