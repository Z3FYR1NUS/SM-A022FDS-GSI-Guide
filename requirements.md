# Requirements — Samsung Galaxy A02 (SM-A022F/DS)

## Device

- Samsung Galaxy A02
- Model: SM-A022F/DS
- Bootloader unlocked
- USB debugging enabled
- OEM unlocking enabled in Developer Options

## PC Tools

| Tool                          | Link                                                        |
| ----------------------------- | ----------------------------------------------------------- |
| Samsung USB Drivers           | https://odindownload.com/samsung-usb-driver/                |
| Odin 3.13.1                   | https://odindownload.com/download                           |
| ADB & Fastboot Platform Tools | https://developer.android.com/tools/releases/platform-tools |
| Fastboot USB Driver           | https://developer.android.com/studio/run/win-usb            |
| 7-Zip (or any archive tool)   | https://www.7-zip.org/                                      |

> **Note:** Any Windows PC capable of running ADB and Odin will work.

## Install ADB

- You can use my `InstallADB.bat` to install ADB at register it in system Path
- The script will download ADB and put it in `C:\ADB-platform-tools`

## Recommended GSI Format

Use a GSI that matches your device class:

- `arm32_binder64`
- `vndklite` preferred
- `ab` build only if the image is known to work for your layout

Example:

- `system-squeak-arm32_binder64-ab-vndklite-vanilla.img`

## Files to Keep as Backup

- Original `boot.img`
- Patched `magisk_patched.img`
- [Stock firmware package](https://samfw.com/firmware/SM-A022F/CAL/A022FXXS3BWH1)
- Working GSI image
