# SM-A022F/DS-GSI-Guide

This guide will teach you how to install custom GSI on Samsung A02 (SM-A022F/DS)

## Warning

This guide is intended for advanced users only.

Flashing a GSI may cause:

- bootloops
- data loss
- broken camera / Bluetooth / SIM features
- temporary or permanent system instability
  Proceed at your own risk.

## My Device

- Model: Samsung Galaxy A02 (SM-A022F)
- Android base: Android 11
- CPU: Mediatek MT6739WW (arm-v7a)
- Bootloader state: unlocked

## What this guide covers

- Preparing firmware
- Flashing a GSI image
- First boot setup
- Phh Treble settings

## Recommended GSI type

Recommended example:

- `system-squeak-arm32_binder64-ab-vndklite-vanilla.img`

## Files needed

- Samsung firmware package for SM-A022F
- ADB and Fastboot platform tools
- Odin
- Magisk APK
- GSI image in `.img` format
- Samsung USB drivers

## Repository layout

- `requirements.md` — what you need before starting
- `flashing_guide.md` — step-by-step install guide
- `troubleshooting.md` — common issues and fixes

## Important notes

- Use the exact firmware and model for your device.
- Always keep a backup of your working boot image.
- Do not flash images for A02s or other A0x devices.
- If the image is compressed (`.xz`), extract it first to get the raw `.img`.

## Credits

- phhusson Treble project
- LineageOS GSI maintainers
- Samsung firmware tools community
- XDA forum (https://shorturl.at/WuyPj)
