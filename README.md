# TP04 - Redes y YAML

## Objetivo

Practicar:

- Configuracion YAML multi-entorno
- Diagnostico de conectividad de red
- Automatizacion con Bash
- Validacion de configuraciones

---

# Estructura del proyecto

```text
devops-TP04/
├── README.md
├── config/
│   └── app-config.yml
├── reports/
├── scripts/
│   ├── diagnostico-red.sh
│   └── verificar-config.sh
```

---

# 1. YAML multi-entorno

Archivo:

```text
config/app-config.yml
```

Contiene configuracion para:

- development
- staging
- production

Incluye:

- servidor
- base de datos
- cache
- monitoreo
- logging
- scripts programados

Validacion:

```bash
python3 -c "
import yaml
yaml.safe_load(open('config/app-config.yml'))
print('YAML valido')
"
```

---

# 2. Diagnostico de red

Script:

```bash
scripts/diagnostico-red.sh
```

Funciones:

- Interfaces de red
- Tabla de rutas
- DNS
- Ping
- HTTP check
- Puertos abiertos

Uso:

```bash
bash scripts/diagnostico-red.sh
```

Los reportes se guardan en:

```text
reports/
```

---

# 3. Verificacion de configuracion

Script:

```bash
scripts/verificar-config.sh
```

Lee el YAML y muestra:

- entornos
- hosts
- replicas
- debug
- cache
- cron jobs

Uso:

```bash
bash scripts/verificar-config.sh
```

---

# Conceptos utilizados

## YAML

- mapas
- listas
- indentacion
- strings
- booleanos

## Redes

- ping
- dig
- curl
- ss
- DNS
- HTTP
- rutas

---

# Git

```bash
git init
git add .
git commit -m "TP04"
```
