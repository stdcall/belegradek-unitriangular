set dotenv-load
python := "uv run --locked python"

default: build

build:
    {{python}} scripts/project.py build

check:
    {{python}} scripts/project.py check

fmt:
    {{python}} scripts/project.py fmt

lint:
    {{python}} scripts/project.py lint

test:
    {{python}} scripts/project.py test

corrections:
    {{python}} scripts/project.py corrections

build-no-notes:
    {{python}} scripts/project.py build-no-notes

check-prose:
    {{python}} scripts/check_prose.py

check-lean:
    {{python}} checks/lean/check_axioms.py

check-sage:
    sage -python checks/sage/quasi_product.py
