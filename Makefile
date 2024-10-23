fmt:
	npm run fmt

aexe:
	npx tsx watch apps/src/index.ts

deps:
	rm -rf node_modules && npm install
	rm -rf packages/fizz-buzz/node_modules && npm install -w packages/fizzbuzz
	rm -rf apps/src/node_modules && npm install -w apps/src

build:
	rm -rf packages/fizz-buzz/dist/
	rm -rf apps/src/dist
	npm run build -w packages/fizzbuzz
	npm run build -w apps/src