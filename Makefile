include config.mk

HOMEDIR = $(shell pwd)

prediction-stream:
	curl -sN -H "accept: text/event-stream" -H "x-api-key: $(API_KEY)" -v "https://api-v3.mbta.com/predictions/?filter\\[route\\]=CR-Lowell&filter\\[stop\\]=place-sstat&stop_sequence=1"

prediction:
	curl -H "x-api-key: $(API_KEY)" -v https://api-v3.mbta.com/predictions?filter%5Bstop%5D=place-sstat&filter%5Bdirection_id%5D=0&include=stop
