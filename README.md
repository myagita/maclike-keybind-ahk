# macOS-like keybind on Windows with AHK

## Goal
To enable macOS-like cursor control with CapsLock, without disabling Ctrl, Alt or Windows keys...
Because 99.9% of the living creatures still want to use Ctrl-F to find within a webpage AND use C-f (CapsLock-f) to move around in the URL bar.

## What it does
- C-pnbfv, C-ae, C-dhkyw, C-gjoi
- M-pnbfv, M-<>, M-dhw (optional)
- And you can still use the default shortcuts involving Ctrl, Alt, Windows keys, which is the main point

## Prerequisites
1. Decide which physical key should be transformed to the 'macOS Control key'. We call this the "CapsLock" key in the following.
2. Remove any settings involving CapsLock key, including things like Ctrl2Cap.
3. Edit the registry so that you will have the CapsLock key transformed into F13 (or some other weird key that doesn't physically exist). Use any tool like [ChangeKey](https://forest.watch.impress.co.jp/library/software/changekey/)
4. Install [AutoHotKey](https://www.autohotkey.com/) (current version, not V2 Alpha)
5. Logout, log back in.

## Installation
- Run `mikiy.ahk`
- If you want this script to always run, see [this guide](https://www.maketecheasier.com/schedule-autohotkey-startup-windows/)


