.PHONY: help \
        docker-start docker-start-front docker-start-back \
        docker-stop docker-stop-front docker-stop-back \
        docker-rebuild docker-rebuild-front docker-rebuild-back \
        docker-logs docker-bash-front docker-bash-back

# === GLOBAL COMMANDS ===
docker-start:
	docker compose -f .docker/docker-compose.yml up --build -d

docker-stop:
	docker compose -f .docker/docker-compose.yml down

docker-rebuild:
	docker compose -f .docker/docker-compose.yml build --no-cache

docker-logs:
	docker compose -f .docker/docker-compose.yml logs -f

# === FRONT ONLY ===
docker-start-front:
	docker compose -f .docker/docker-compose.yml up --build -d front

docker-stop-front:
	docker compose -f .docker/docker-compose.yml stop front

docker-rebuild-front:
	docker compose -f .docker/docker-compose.yml build --no-cache front

docker-bash-front:
	docker exec -it sistersmade-front bash

# === BACK ONLY ===
docker-start-back:
	docker compose -f .docker/docker-compose.yml up --build -d back

docker-stop-back:
	docker compose -f .docker/docker-compose.yml stop back

docker-rebuild-back:
	docker compose -f .docker/docker-compose.yml build --no-cache back

docker-bash-back:
	docker exec -it sistersmade-back bash

check-all:
	@echo "✅ Running full check: FRONT + BACK"
	cd sistersmade-front && make check
	cd ../sistersmade-back && make check

# === HELP ===
help:
	@echo ""
	@echo "🛠️  Sistersmade Global Makefile"
	@echo "--------------------------------"
	@echo "🔹 GLOBAL:"
	@echo "  make docker-start        → Build & start ALL (front + back)"
	@echo "  make docker-stop         → Stop ALL containers"
	@echo "  make docker-rebuild      → Rebuild ALL without cache"
	@echo "  make docker-logs         → Show logs (all services)"
	@echo ""
	@echo "🔹 FRONT ONLY:"
	@echo "  make docker-start-front  → Start front only"
	@echo "  make docker-stop-front   → Stop front only"
	@echo "  make docker-rebuild-front→ Rebuild front only"
	@echo "  make docker-bash-front   → Bash in front container"
	@echo ""
	@echo "🔹 BACK ONLY:"
	@echo "  make docker-start-back   → Start back only"
	@echo "  make docker-stop-back    → Stop back only"
	@echo "  make docker-rebuild-back → Rebuild back only"
	@echo "  make docker-bash-back    → Bash in back container"
	@echo ""
