build:
	docker build -t discord-bot-mr-propre .

run:
	docker run -it discord-bot-mr-propre -v ${PWD}:/root --rm backbone-send sh

exe:
	python bot.py
