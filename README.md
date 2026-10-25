# Geoula Bulletin

Site du bulletin Geoula.

## Où en est le projet ?

**Étape 2 sur 6 — le tableau de bord est en place.**

| # | Étape | État |
|---|-------|------|
| 1 | Dépôt créé | ✅ fait (28/08/2026) |
| 2 | Page de suivi d'avancement | 🟡 en cours |
| 3 | Définir le contenu du bulletin (rubriques, fréquence) | ⬜ à venir |
| 4 | Maquette et charte graphique | ⬜ à venir |
| 5 | Construire le bulletin | ⬜ à venir |
| 6 | Mettre en ligne | ⬜ à venir |

## Contenu actuel

- `index.html` — tableau de bord d'avancement (aussi point de départ du site).
- `ETAT.md` — cet état, en version texte.
- `etat.json` — informations techniques (branche, commit, date), générées.
- `scripts/etat.sh` — régénère `etat.json`.

## Voir le tableau de bord

```bash
python3 -m http.server 8000
# puis ouvrir http://localhost:8000
```

## Mettre l'état à jour

```bash
./scripts/etat.sh   # rafraîchit etat.json à partir de git
```

L'étape courante (`current_step`) se modifie à la main dans `scripts/etat.sh`
(bloc `PROJECT`) et dans la frise de `index.html` / le tableau de `ETAT.md`.
