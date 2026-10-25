#!/usr/bin/env bash
# Régénère etat.json : les faits techniques affichés par index.html.
# Usage :  ./scripts/etat.sh
set -euo pipefail

cd "$(dirname "$0")/.."

branch="$(git rev-parse --abbrev-ref HEAD)"
short_sha="$(git rev-parse --short HEAD)"
full_sha="$(git rev-parse HEAD)"
last_commit_message="$(git log -1 --pretty=%s)"
last_commit_date="$(git log -1 --pretty=%cI)"
tracked_files="$(git ls-files | wc -l | tr -d ' ')"
uncommitted="$(git status --porcelain | wc -l | tr -d ' ')"
generated_at="$(date -Iseconds)"

python3 - "$branch" "$short_sha" "$full_sha" "$last_commit_message" \
          "$last_commit_date" "$tracked_files" "$uncommitted" "$generated_at" <<'PY' > etat.json
import json, sys

branch, short_sha, full_sha, msg, cdate, files, dirty, gen = sys.argv[1:9]

# Étape courante du projet : c'est la seule valeur à modifier à la main.
PROJECT = {
    "current_step": 2,
    "total_steps": 6,
    "current_label": "Le tableau de bord est en place",
}

data = {
    "project": "geoula-bulletin",
    "branch": branch,
    "short_sha": short_sha,
    "full_sha": full_sha,
    "last_commit_message": msg,
    "last_commit_date": cdate,
    "tracked_files": int(files),
    "uncommitted_changes": int(dirty),
    "generated_at": gen,
    "step": PROJECT,
}

print(json.dumps(data, ensure_ascii=False, indent=2))
PY

echo "etat.json régénéré — branche $branch, commit $short_sha, $tracked_files fichier(s) suivi(s)."
