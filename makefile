README.md: guessinggame.sh
	echo '# Guessing Game' > README.md
	echo >> README.md
	echo 'The readme is created via make at' >> README.md
	echo >> README.md
	date >> README.md
	echo >> README.md
	echo 'The number of lines guessinggame.sh conatains is' >> README.md
	echo >> README.md
	cat guessinggame.sh | wc -l | tr -d ' ' >> README.md

clean:
	trash README.md
