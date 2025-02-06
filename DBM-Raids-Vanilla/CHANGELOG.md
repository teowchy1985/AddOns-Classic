# DBM - Vanilla and Season of Discovery

## [r776](https://github.com/DeadlyBossMods/DBM-Vanilla/tree/r776) (2025-02-06)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Vanilla/compare/r775...r776) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Vanilla/releases)

- Naxxramas: Add mod for SoD hardmode challenges  
- Tests: Delete test report data, DBM-Offline handles this better  
    DBM-Offline output is at https://github.com/DeadlyBossMods/DBM-Test-Results  
- Update koKR (#318)  
    * Update koKR (Classic)  
    * Update koKR (BCVanilla)  
    * Update koKR (Vanilla)  
    * Update koKR (BCVanilla)  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
    * Update koKR  
- Tests: Make commit message for multi-commit pushes to test results more readable  
- Update localization.fr.lua (#317)  
- Update localization.br.lua (#316)  
- Update localization.mx.lua (#315)  
- Update localization.es.lua (#314)  
- Update localization.ru.lua (#313)  
- Tests: Remove deprecated ignoreWarnings configs  
- CI: Github starts counting format args at 0  
- DBM-Offline: Improve commit message on full test diffs  
- Actually query visible nameplate tokens and only query those instead of all. in vanilla, this will rarely be 10, in fact in most cases i'll be FAR less, so it's more efficient for an infinite loop to query  
    Also filter friendly nameplates to further reduce things cause if friendly nameplates are on them it actually does populate nameplates massively. this also fixes a bug with old code where if friendly are on, the first 10 might not even be the nearby enemies.  
- Remove debug code  
- Viscidus: Track frost and melee hits per second  
- AQ Trash: Scan nameplates more aggressively for abilities while in combat  
- Update DBM-Test-Vanilla\_Vanilla.toc (#310)  
- MC: Fix Majordomo shield timer for SoD  
- Minor adjustments for some timers  
- CI: Full DBM-Offline run on push to master  
- CI: Use new params  
- Mark vanilla packages as PTR compatible  
- adjust one variance timer on garr  
- Upload test results to DeadlyBossMods/DBM-Test-Results  
- Update localization.br.lua  
- Update localization.fr.lua  
- Update localization.es.lua  
- Update localization.mx.lua  
- Update koKR (#297)  
- CI: Use new DBM-Offline parameters  
- didn't mean to remove antispam  
- Change object type  
- Add generated locales from encounter info  
- AQ Trash: Add nameplate timer for Thunderclap  
- AQ40 Trash: Add tracking for Thorns and add debug info for buff-based tracking  
