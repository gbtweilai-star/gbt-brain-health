#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_brain_health info
PYTHONPATH=src python -m gbt_brain_health check --payload '{}'
PYTHONPATH=src python -m gbt_brain_health run   --payload '{}'
