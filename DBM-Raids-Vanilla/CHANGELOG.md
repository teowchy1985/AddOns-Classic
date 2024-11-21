# DBM - Vanilla and Season of Discovery

## [r761](https://github.com/DeadlyBossMods/DBM-Vanilla/tree/r761) (2024-11-19)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Vanilla/compare/r760...r761) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Vanilla/releases)

- bump vanilla toc  
- push thorough 2nd pass  
- Don't hardcore the "keep" arg, instead we'll handle this in core, for retail and classic going forward with a new core option  
- Switch heal timer to a cast nameplate priority timer on Sulfuron  
    Make geddon armageddon timer a hybrid timer that shows both timer and priority cast nameplate.  
- also fix missing trash reset timer clears  
- Fix missing timer cancel and initial timer  
- Preliminary work on Molten Core trash mod  
     - Now supports announce and nameplate timers for Molten Giant KnockAway tank & Smash aoe mechanics  
     - Now supports announce and nameplate timers for Firelords Summon Lava Spawn mechanic  
     - Now supports announce and nameplate timers for Lava Surger Surge mechanic  
     - Now supports announce and nameplate timers for Ancient Core Hound Lava Breath mechanic  
     - Now supports announce and nameplate timers for Molten Desstroyer's Knock Down & Massive Tremor mechanics  
     - Now supports announce and nameplate timers for Lava Elemental Pyroclast Barrage mechanic  
     - Now supports announce and nameplate timers for Firewalker Fire Blossom & Incite Flames mechanics  
     - Now supports announce and nameplate timers for Flameguard Cone of Fire mechanic  
- fix invalid arg order on Ouro. fixes inline icon being invalid and fixing phase color being missing  
- renames  
- switch MC and AQ40 to zone combat scanner fo starting speed run timer, eliminating inefficient event usage as well as setting the framework for potential nameplate trash timers to be added  
