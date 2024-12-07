# DBM - Vanilla and Season of Discovery

## [r764](https://github.com/DeadlyBossMods/DBM-Vanilla/tree/r764) (2024-12-07)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Vanilla/compare/r763...r764) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Vanilla/releases)

- AQ20/Buru: Fix trigger for Pursue warning  
    It's used as a regex, hence the %s doesn't work as expected, just use the main part of the string as it's an in-combat event anyways  
- SoD/Emerald Dragons: Update for SoD  
    * Add encounter IDs  
    * Add creature IDs  
    * Add timer, warning, and yell for the new Ysondre soaking mechanic  
    * Filter the sleep fog warning to only show once  
