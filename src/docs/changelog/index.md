---
title: "Freecord Changelog"
---

## Freecord Changelog

NOTE: Only the two most recent versions are listed here. Older versions are listed on [Codeberg](/links/source).

Changelog `eb7751c24f6562f4bcdd5f2e95876eb171d4db02` .. `d4c5def8846b3176b928879e5a65a81d639b003d`.<br> 
Full changelog [here](https://codeberg.org/zion8992/freecord/compare/eb7751c24f6562f4bcdd5f2e95876eb171d4db02..d4c5def8846b3176b928879e5a65a81d639b003d).

**Protocol**
- Moved errors to an `Error` struct
- Added various constants for names like `session_token`, `username` and `loginSuccess`

**Server**
- Replace `http.Error()` with `a.writeError()` on `routes.go`
- Moved `maxRegisterBody` and `maxLoginBody` to `maxAuthBody`
- Replaced old unicode username validator with new one
- Updated `MySQLDSN` function to use the driver config creator instead of `fmt.Sprintf`
- Make `clients` map unexported on `Hub`
- Add flags for setting debug and database file
- Use `varchar(255)` instead of `varchar(60)` for storing password hashes

**Client**
- Remove unused `printSpace()` function
- Added support for the new error handling