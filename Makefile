.PHONY: install ruff lint test clean

# Install all project dependencies
install:
	poetry install --with dev --sync

# Format code using Ruff
ruff:
	poetry run ruff format .

# Check for linting errors without fixing them
lint:
	poetry run ruff check .

# Run tests
test:
	poetry run pytest

# Remove build artifacts and temporary files
clean:
	rm -rf .venv .pytest_cache dist .ruff_cache
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete