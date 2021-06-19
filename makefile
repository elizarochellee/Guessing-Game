all: README.md

README.md:
	echo "## guessinggame.sh for Coursera: The Unix Workbench course" > README.md
	echo "README.md created: " >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
