#!/bin/bash

# ============================================
# verificar-config.sh - Lectura del YAML
# TP04 - Operaciones1
# ============================================

CONFIG="$(cd "$(dirname "$0")/.." && pwd)/config/app-config.yml"

echo "============================================"
echo " Verificacion de app-config.yml"
echo "============================================"
echo ""

python3 - << PYEOF
import yaml

with open("$CONFIG") as f:
    cfg = yaml.safe_load(f)

print("Entornos configurados:")

for env, data in cfg['environments'].items():

    host   = data['server']['host']
    port   = data['server']['port']
    debug  = data['debug']
    reps   = data['replicas']
    cache  = data.get('cache', {}).get('enabled', False)

    print(
        f"  {env:12} -> "
        f"host={host:25} "
        f"port={port} "
        f"replicas={reps} "
        f"debug={str(debug):5} "
        f"cache={cache}"
    )

print()
print("Scripts programados:")

for s in cfg['scripts']:

    print(
        f"  {s['name']:25} "
        f"cron: {s['schedule']:15} "
        f"timeout: {s['timeout_seconds']}s"
    )
PYEOF
