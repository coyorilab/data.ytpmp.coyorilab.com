.PHONY: all

all: out/ytpmp.pages.dev/data.json out/sing.sakamata.ch/data.json out/ytpmp.coyorilab.com/data.json

out/ytpmp.pages.dev/data.json: ytpmp.pages.dev/items.yaml
	cd ytpmp.pages.dev; \
	mkdir out; \
	python ../generator/main.py; \
	mkdir -p ../out/ytpmp.pages.dev/; \
	cp out/*.json ../out/ytpmp.pages.dev/

out/sing.sakamata.ch/data.json: sing.sakamata.ch/items.yaml
	cd sing.sakamata.ch; \
	mkdir out; \
	python ../generator/main.py; \
	mkdir -p ../out/sing.sakamata.ch/; \
	cp out/*.json ../out/sing.sakamata.ch/