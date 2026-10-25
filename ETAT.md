# État du projet — Geoula Bulletin

> Ce fichier est la version texte du tableau de bord. La version visuelle est `index.html`,
> et l'assistant de construction est `atelier.html`.
> Dernière mise à jour : 25 octobre 2026.

## Où vous en êtes

**Étape 3 sur 6 — définir le contenu du bulletin.**

Le site est **publié** sur GitHub Pages et l'Atelier (assistant intégré) est disponible.
Il reste la décision de fond : qui lit ce bulletin, à quelle fréquence, quelles rubriques.

## Les étapes

| # | Étape | État | Détail |
|---|-------|------|--------|
| 1 | Dépôt créé | ✅ fait — 28/08/2026 | Branche `main` initialisée |
| 2 | Tableau de bord | ✅ fait | `index.html`, `ETAT.md`, `etat.json`, `scripts/etat.sh` |
| 3 | Définir le contenu du bulletin | 🟡 en cours | Lecteurs, fréquence, rubriques |
| 4 | Maquette et charte graphique | ⬜ à venir | Page d'accueil, lisibilité mobile |
| 5 | Construire le bulletin | ⬜ à venir | Articles, dates, archives |
| 6 | Mettre en ligne | 🟡 partiel | GitHub Pages actif ; publication depuis `main` à confirmer |

## Site en ligne

- Adresse : https://franceinfo771-prog.github.io/geoula-bulletin/
- Tableau de bord : `/index.html`
- Atelier (assistant) : `/atelier.html`

## L'Atelier (`atelier.html`)

Assistant intégré au site, **sans clé API ni serveur** — tout fonctionne dans le navigateur :

| Onglet | Ce qu'il fait |
|---|---|
| 💬 Assistant | Répond aux questions sur le projet (publier, 404, rubriques, sauvegarde…) |
| 📍 Où j'en suis | Lit `etat.json` + checklist des actions, cochée et mémorisée |
| ✍️ Générer un article | Construit un prompt prêt à copier pour rédiger un article vérifiable |
| 🧭 Mes décisions | Enregistre lecteurs / fréquence / rubriques et permet de les exporter |

## Les 3 prochaines actions

1. **Répondre aux 3 questions** — lecteurs, fréquence, rubriques (onglet « Mes décisions »).
2. **Confirmer la source de publication** — Settings → Pages → `main` / `(root)`.
3. **Écrire le premier article** — onglet « Générer un article ».

## Contenu du dépôt

| Fichier | Rôle |
|---|---|
| `index.html` | Tableau de bord d'avancement |
| `atelier.html` | L'Atelier : assistant de construction du site |
| `ETAT.md` | Cet état, en texte |
| `etat.json` | Informations techniques générées (branche, commit, date) |
| `scripts/etat.sh` | Régénère `etat.json` |
| `README.md` | Présentation du dépôt |

## Comment le maintenir

```bash
./scripts/etat.sh   # rafraîchit etat.json depuis git
```

Chiffres du bulletin : **0 article, 0 rubrique** — les décisions de l'étape 3 les feront apparaître.
