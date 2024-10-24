fmt:
	npm run fmt

deps:
	rm -rf node_modules && npm install

build:
	rm -rf packages/fizzbuzz/dist/
	rm -rf apps/fizzbuzz/dist/
	npm run build -w packages/fizzbuzz
	npm run build -w apps/fizzbuzz

exe:
	npx tsx watch apps/fizzbuzz/src/index.ts