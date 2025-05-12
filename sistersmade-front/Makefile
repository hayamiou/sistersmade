.PHONY: dev test lint format build check help

dev:
	npm run start

build:
	npm run build

test:
	npm run test

lint:
	npm run lint

format:
	npm run fix-code-format

check: build lint format test

help:
	@echo ""
	@echo "🎨 Sistersmade Front Makefile"
	@echo "-----------------------------"
	@echo "make dev       → Start Angular dev server"
	@echo "make build     → Build Angular app"
	@echo "make lint      → Run linter"
	@echo "make format    → Format code"
	@echo "make test      → Run unit tests"
	@echo "make check     → ✅ Full check: build + lint + format + test"
	@echo ""
