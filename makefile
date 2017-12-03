README.md:
	echo "## My Unix Workbench Project " > README.md
	#d=date
	#dd= $(d)
	echo  "make was run: "  >> README.md
	date -R | cut -f 1,2,3,4,5 -d " "  >> README.md
	echo >> README.md
	echo  "The file guessinggame.sh contains "  >> README.md
	###########################
	## these don't work ###
	#tmp=$(cat guessinggame.sh | wc -l)
	#echo "tmp is: $($tmp)
	#rows=$(echo "$tmp")
	#echo "rows is: $rows"
	#echo "$(cat guessinggame.sh | wc -l)"    >> jj_makefile_example_jj.txt
	##########################
	#cat guessinggame.sh | wc -l   >> jj_makefile_example_jj.txt
	wc -l guessinggame.sh | cut -f 1 -d " "   >> README.md
	echo "lines" >> README.md	
