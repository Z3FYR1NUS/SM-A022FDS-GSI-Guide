# Samsung Galaxy A02 (SM-A022F/DS) GSI Installation Guide

This guide will teach you how to install custom GSI on Samsung A02 (SM-A022F/DS)

- This device is Ass.
- I hate MT6739ww
- Result may vary, best of luck! :3

> # ⚠️ WARNING ⚠️
>
> ## THIS WILL VOID YOUR WARRANTY
>
> **This guide is intended for advanced users only.**
>
> Flashing a GSI **will** wipe all your data and **may permanently damage** your device.
>
> - 💀 Bootloops with no recovery
> - 🗑️ Complete data loss
> - 📵 Broken camera, Bluetooth, and SIM
> - 🔥 Permanent system instability
> - 🧱 Soft-brick or hard-brick
>
> **You have been warned. Proceed at your own risk.**

## My Device

- Model: Samsung Galaxy A02 (SM-A022F/DS)
- Android base: Android 11
- CPU: Mediatek MT6739WW (arm-v7a)
- Bootloader build: `A022FXS3BWH1`
- AVB: orange state
- Bootloader state: unlocked

## What this guide covers

- Preparing firmware
- Root the phone
- Flashing a GSI image
- First boot setup
- Phh Treble settings

## Recommended GSI type

Recommended example:

- `system-squeak-arm32_binder64-ab-vndklite-vanilla.img`

## Files needed

- Samsung firmware package for SM-A022F/DS
- ADB and Fastboot platform tools
- Odin
- Magisk APK
- GSI image in `.img` format
- Samsung USB drivers

## Repository layout

- **[requirements.md](requirements.md)**: -— what you need before starting
- **[Important file](./Important%20file/)** -- Necessary file
- **[Unlock_bootloader.md](Unlock_bootloader.md)**: -- Unlock bootloader
- **[root.md](root.md)**: -- root the phone
- **[flashing_guide.md](flashing_guide.md)**: -- step-by-step install guide
- **[troubleshooting.md](troubleshooting.md)**: -- guide on contribution

## Getting Started

Follow the documentation in this specific order to ensure the best chance of success:

1. **[Requirements](requirements.md)**: Verify you have the correct Samsung firmware and the necessary drivers/tools.
2. **[Unlock Bootloader](Unlock_bootloader.md)**: first step.
3. **[Rooting](root.md)**: Patching the AP file is required to disable AVB (Android Verified Boot)
4. **[Flashing Guide](flashing_guide.md)**: Step-by-step instructions on using Fastbootd to flash the GSI.
5. **[Troubleshooting](troubleshooting.md)**: Read this if you encounter any problem post install, good luck!

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

## Contribution

- Read `contribution.md`

## License

This project is licensed under the [MIT License](LICENSE).
