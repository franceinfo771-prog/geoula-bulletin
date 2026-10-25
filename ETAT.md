# État du projet — Geoula Bulletin

> Ce fichier est la version texte du tableau de bord. La version visuelle est `index.html`.
> Dernière mise à jour : 25 octobre 2026.

## Où vous en êtes

**Étape 2 sur 6 — le tableau de bord est en place.**

Le dépôt ne contenait qu'un README vide : aucun travail antérieur n'y avait été
enregistré. Il existe désormais un point de repère unique qui dit toujours ce qui
est fait, ce qui reste et quoi faire ensuite.

## Les étapes

| # | Étape | État | Détail |
|---|-------|------|--------|
| 1 | Dépôt créé | ✅ fait — 28/08/2026 | Branche `main` initialisée, aucun contenu |
| 2 | Page de suivi d'avancement | 🟡 en cours | `index.html`, `ETAT.md`, `etat.json`, `scripts/etat.sh` |
| 3 | Définir le contenu du bulletin | ⬜ à venir | Rubriques, fréquence, sources |
| 4 | Maquette et charte graphique | ⬜ à venir | Page d'accueil, lisibilité mobile |
| 5 | Construire le bulletin | ⬜ à venir | Articles, dates, archives |
| 6 | Mettre en ligne | ⬜ à venir | Publication publique |

## Les 3 prochaines actions

1. **Répondre à trois questions** — qui lit ce bulletin, à quelle fréquence,
   quelles rubriques ?
2. **Valider la maquette** — proposition de page d'accueil, corrections.
3. **Remplir le premier bulletin** — vrais contenus, puis mise en ligne.

## Contenu du dépôt

| Fichier | Rôle |
|---|---|
| `index.html` | Tableau de bord d'avancement (point de départ du site) |
| `ETAT.md` | Cet état, en texte |
| `etat.json` | Informations techniques générées (branche, commit, date) |
| `scripts/etat.sh` | Régénère `etat.json` |
| `README.md` | Présentation du dépôt |

## Comment le maintenir

```bash
./scripts/etat.sh   # rafraîchit etat.json depuis git
```

Chiffres du bulletin : **0 article, 0 rubrique** — normal à ce stade.
