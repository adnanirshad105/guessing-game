
.PHONY: all

all: README.md

README.md: guessinggame.sh makefile
	@printf "# Guessing Game\n\n" > README.md
	@printf "**Date and time generated:** %s\n\n" "$$(date)" >> README.md
	@printf "**Lines of code in guessinggame.sh:** %s\n" "$$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all

all: README.md

README.md: guessinggame.sh makefile
	@printf "# Guessing Game\n\n" > README.md
	@printf "**Date and time generated:** %s\n\n" "$$(date)" >> README.md
	@printf "**Lines of code in guessinggame.sh:** %s\n" "$$(wc -l < guessinggame.sh)" >> README.md
