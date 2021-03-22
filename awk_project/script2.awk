BEGIN{
	FS=","
	OFS=","
}


{ # PART 1: MOST POWERFUL POKEMON (OVERALL)

	print pokemon | "sort -t, -k2,2"
}

END{
	print"The most generally powerful Pokemon is "poke" with total "
}

