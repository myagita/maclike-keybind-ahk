# macOS-like keybind on Windows with AHK

## Goal
To enable macOS-like cursor control with an unused key (like CapsLock), without disabling Ctrl, Alt or Windows keys...
Because 99.9% of the living creatures still want to use Ctrl-F to find within a webpage AND use C-f to move around in the URL bar.

## What it does
- C-pnbfv, C-ae, C-dhkyw, C-gjoi
- M-pnbfv, M-<>, M-dhw (optional)
- And you can still use the default shortcuts involving Ctrl, Alt, Windows keys (which is the main point of this setting)

## Prerequisite
1. Decide which physical key should be transformed to the 'macOS Control key'. We call this the "CapsLock" key in the following.
2. Remove any settings involving CapsLock key, including things like Ctrl2Cap.
3. Edit the registry so that you will have the CapsLock key transformed into F13. Use any tool like [ChangeKey](https://forest.watch.impress.co.jp/library/software/changekey/)
    - optionally, you can use other keys but you will need to edit the AHK script.
4. Install [AutoHotKey](https://www.autohotkey.com/) (current version, not V2 Alpha)
5. Logout, log back in.

## Installation
- Run `mikiy.ahk`
- If you want this script to always run, see [this guide](https://www.maketecheasier.com/schedule-autohotkey-startup-windows/)

## Todo/Known issues
- Automatically disable this setting in some consoles with built-in C-pnfb
- C-S-f does not select region properly (randomly)
