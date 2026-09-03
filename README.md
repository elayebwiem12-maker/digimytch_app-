# digimytch_app

Digimytch — Mobile App (Flutter)

Skills-to-jobs EdTech platform — student-facing mobile app prototype.

##  Objectif
Prototype mobile Flutter pour Digimytch : navigation entre cours, quiz interactifs, 
et gamification (badges, streak, leaderboard) pour motiver les étudiants dans leur 
parcours d'apprentissage.

##  Tech Stack
- **Framework:** Flutter (Dart)
- **State management:** setState (Month 1 — StatefulWidget)
- **Backend (à venir):** Firebase

##  Structure du projet

lib/
├── main.dart
├── models/ → Course, Quiz, User models
├── screens/ → Home, Courses, Profile, Leaderboard
├── widgets/ → Composants réutilisables (QuizCard, BadgeWidget...)
├── navigation/ → Bottom navigation bar
└── services/ → Firebase & API calls (à venir)


##  Comment lancer le projet

```bash
flutter pub get
flutter run
```

##  Fonctionnalités (Month 1)
- [x] Course listing avec recherche et filtres par catégorie
- [x] Course detail screen
- [x] Student dashboard
- [x] Quiz component réutilisable
- [x] Bottom navigation (Home, Courses, Profile, Leaderboard)
- [x] Gamification (badges animés, streak counter, leaderboard, progress ring)
- [x] Notifications screen

##  Month 2 — à venir
- Connexion Firebase (authentification + base de données réelle)
- Profile screen complet
- Notifications push réelles

##  Auteur
Wiem — Stage , Digimytch