all: README.md

README.md: guessinggame.sh
	echo "Guessing Game Assignment" > README.md
	echo -n "\nMake date: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in file :" >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
