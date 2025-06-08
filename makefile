make all: create_readme
.PHONY: all create_readme

create_readme:
	touch README.md
	echo "This is a README file." > README.md
	echo "## Guessing Game" >> README.md
	echo "### this was run at $(shell date)" >> README.md
	echo "### Number of lines in this file is: $(shell wc -l < guessing_game.sh)" >> README.md
clean:
	rm -f README.md
