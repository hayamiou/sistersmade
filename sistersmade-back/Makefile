.PHONY: run test build clean check help

run:
	./mvnw spring-boot:run

test:
	./mvnw test

build:
	./mvnw clean package

clean:
	./mvnw clean

check: build test

help:
	@echo ""
	@echo "🧪 Sistersmade Back Makefile"
	@echo "-----------------------------"
	@echo "make run      → Start Spring Boot app (dev)"
	@echo "make test     → Run unit tests"
	@echo "make build    → Package JAR"
	@echo "make clean    → Clean build artifacts"
	@echo "make check    → ✅ Full check: build + test"
	@echo ""
