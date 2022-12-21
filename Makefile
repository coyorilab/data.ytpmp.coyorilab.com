.PHONY: out/ytpmp.pages.dev/data.json

out/ytpmp.pages.dev/data.json: ytpmp.pages.dev/items.yaml
	cd ytpmp.pages.dev; \
	mkdir out; \
	python ../generator/main.py; \
	mkdir -p ../out/ytpmp.pages.dev/; \
	cp out/*.json ../out/ytpmp.pages.dev/