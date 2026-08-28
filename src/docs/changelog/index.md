---
title: "Freecord Changelog"
---

## Freecord Changelog

NOTE: Only the two most recent versions are listed here. Older versions are listed on [Codeberg](/links/source).

Changelog `eb7751c24f6562f4bcdd5f2e95876eb171d4db02` .. `d4c5def8846b3176b928879e5a65a81d639b003d`.<br> 
Full changelog [here](https://codeberg.org/zion8992/freecord/compare/61678597ac60c30bc575aa79787ffb53ac316991..45b40df94bf6964b654d4c4984c505d4c23f953c#diff-80cae3044e65bf0bf3306183317aeb2d29637588).

**Repository**
- Update README
- Update LICENSE
- Migrate issues to codeberg

**Protocol**
- Add name constants for default port, path and scheme

**Server**
- Fixed #2: add duplicate key detection on store.go
- Fixed MySQLDSN function

**Client**
- Moved config loading logic to backend thread
- Added theming
- Store session cookie on login
- Refactored client source code
