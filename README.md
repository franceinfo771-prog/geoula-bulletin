# Geoula Bulletin

Site du bulletin Geoula.

🔗 **Site en ligne** : https://franceinfo771-prog.github.io/geoula-bulletin/
🧭 **L'Atelier (assistant de construction)** : `/atelier.html`

## Où en est le projet ?

**Étape 3 sur 6 — définir le contenu du bulletin.**

| # | Étape | État |
|---|-------|------|
| 1 | Dépôt créé | ✅ fait (28/08/2026) |
| 2 | Tableau de bord + Atelier | ✅ fait |
| 3 | Définir le contenu du bulletin (rubriques, fréquence) | 🟡 en cours |
| 4 | Maquette et charte graphique | ⬜ à venir |
| 5 | Construire le bulletin | ⬜ à venir |
| 6 | Mettre en ligne | 🟡 partiel (GitHub Pages actif) |

## Contenu actuel

- `index.html` — tableau de bord d'avancement (point de départ du site).
- `atelier.html` — l'Atelier : assistant intégré, sans clé API, pour construire le site.
- `ETAT.md` — l'état du projet en version texte.
- `etat.json` — informations techniques (branche, commit, date), générées.
- `scripts/etat.sh` — régénère `etat.json`.

## L'Atelier

Quatre onglets, aucun compte, aucune clé, tout reste dans le navigateur :

| Onglet | Rôle |
|---|---|
| 💬 Assistant | Réponses écrites sur le projet : publier, 404, rubriques, sauvegarde… |
| 📍 Où j'en suis | État lu dans `etat.json` + checklist mémorisée |
| ✍️ Générer un article | Prompt prêt à copier pour rédiger un article vérifiable |
| 🧭 Mes décisions | Lecteurs / fréquence / rubriques, enregistrés et exportables |

## Voir le site en local

```bash
python3 -m http.server 8000
# http://localhost:8000        -> tableau de bord
# http://localhost:8000/atelier.html -> l'Atelier
```

## Mettre l'état à jour

```bash
./scripts/etat.sh   # rafraîchit etat.json à partir de git
```

L'étape courante (`current_step`) se modifie à la main dans `scripts/etat.sh`
(bloc `PROJECT`) et dans la frise de `index.html` / le tableau de `ETAT.md`.
