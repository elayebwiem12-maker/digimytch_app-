# Digimytch — Component Library

Documentation des composants réutilisables de l'application mobile Digimytch.

---

## QuizCard

Widget réutilisable affichant une question de quiz avec 4 options et un bouton de soumission. Gère l'état de sélection et affiche un retour visuel (vert/rouge) après soumission.

**Fichier:** `lib/widgets/quiz_card.dart`

**Props:**

| Nom | Type | Description |
|---|---|---|
| `question` | `String` | Le texte de la question |
| `options` | `List<String>` | Liste des réponses possibles (4 recommandé) |
| `correctIndex` | `int` | Index de la bonne réponse dans `options` |
| `onAnswerSelected` | `Function(bool)` | Callback appelé après soumission, `true` si correct |

**Usage:**
```dart
QuizCard(
  question: "What is Flutter?",
  options: ["A framework", "A bird", "A language", "A database"],
  correctIndex: 0,
  onAnswerSelected: (isCorrect) {
    print(isCorrect ? "Correct!" : "Wrong!");
  },
)
```

**Comportement:**
- L'utilisateur sélectionne une option (radio button)
- Au clic sur "Submit", la réponse est verrouillée
- La bonne réponse s'affiche en vert, la mauvaise sélection en rouge (si différente)
- Le bouton devient "Submitted" et se désactive

---

## AnimatedBadge

Badge circulaire avec emoji et label, animé avec un effet "pop" (scale élastique) à son apparition.

**Fichier:** `lib/widgets/badge_widget.dart`

**Props:**

| Nom | Type | Description |
|---|---|---|
| `emoji` | `String` | Emoji affiché dans le badge (ex: "🐍") |
| `label` | `String` | Texte affiché sous le badge |

**Usage:**
```dart
AnimatedBadge(emoji: "🐍", label: "Python I")
```

**Comportement:**
- À l'affichage, le badge s'anime de taille 0 à sa taille normale avec une courbe élastique (`Curves.elasticOut`)
- Durée de l'animation : 500ms

---

## StreakCounter

Compteur affichant le nombre de jours d'activité consécutifs, avec une icône de flamme.

**Fichier:** `lib/widgets/streak_counter.dart`

**Props:**

| Nom | Type | Description |
|---|---|---|
| `streakDays` | `int` | Nombre de jours de streak à afficher |

**Usage:**
```dart
StreakCounter(streakDays: 7)
```

---

## ProgressRing

Anneau de progression circulaire affichant un pourcentage au centre.

**Fichier:** `lib/widgets/progress_ring.dart`

**Props:**

| Nom | Type | Description |
|---|---|---|
| `progress` | `double` | Valeur entre 0.0 et 1.0 représentant le pourcentage de complétion |

**Usage:**
```dart
ProgressRing(progress: 0.65) // affiche "65%"
```

---

## Écrans (Screens)

| Écran | Fichier | Description |
|---|---|---|
| Home | `lib/screens/home/home_screen.dart` | Dashboard principal : progression, cours en cours, badges, prochain défi |
| Course List | `lib/screens/courses/course_list_screen.dart` | Liste des cours avec recherche et filtres par catégorie |
| Course Detail | `lib/screens/courses/course_detail_screen.dart` | Détail d'un cours avec bouton d'inscription |
| Profile | `lib/screens/profile/profile_screen.dart` | Écran profil avec anneau de progression |
| Leaderboard | `lib/screens/leaderboard/leaderboard_screen.dart` | Classement des étudiants par score |
| Notifications | `lib/screens/notifications/notifications_screen.dart` | Liste des notifications (badges, rappels, streaks) |

---

## Accessibilité

Les composants `HomeScreen`, `CourseListScreen` et `QuizCard` intègrent des widgets `Semantics` pour le support des lecteurs d'écran (TalkBack/VoiceOver). Voir le document *Accessibility Checklist* pour le détail des critères appliqués.
