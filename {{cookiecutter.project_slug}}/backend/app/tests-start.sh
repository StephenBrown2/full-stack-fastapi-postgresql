#! /usr/bin/env bash
set -e

python /app/app/tests_pre_start.py

pytest --cov=/app/app --cov-report=term-missing:skip-covered $* /app/app/tests/
