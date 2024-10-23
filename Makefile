fmt:
	npm run fmt

exe:
	npx tsx watch apps/src/index.ts

deps:
	rm -rf node_modules && npm install

build:
	rm -rf packages/fizz-buzz/dist/
	rm -rf apps/src/dist
	npm run build -w packages/fizzbuzz
	npm run build -w apps/src