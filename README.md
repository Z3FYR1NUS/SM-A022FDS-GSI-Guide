# Samsung Galaxy A02 (SM-A022F/DS) GSI Installation Guide

This guide will teach you how to install custom GSI on Samsung A02 (SM-A022F/DS)

- This device is Ass. At 03:42 pm, I use Revanced Manager to mod Youtube Music, now 07:14 PM, it still compile, WTF 😭
- I hate MT6739ww
- Result may vary, best of luck! :3

> [!WARNING]
> **THIS WILL VOID YOUR WARRANTY**
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
- Flashing a GSI image
- First boot setup
- Phh Treble settings
- Root the phone

## Recommended GSI type

Recommended example:

- `system-squeak-arm32_binder64-ab-vndklite-vanilla.img`
- `system-squeak-arm32_binder64-ab-vndklite-gogapps.img.xz`

For details on GSI format requirements, see [requirements.md](requirements.md)

## Files needed

- See [requirements.md](requirements.md)

## Repository layout

- **[requirements.md](requirements.md)** — What you need before starting
- **[Important file](Important%20file/)** — Necessary files
- **[Script](Script/)** — Scripts to automate installation
- **[unlock_bootloader.md](unlock_bootloader.md)** — Unlock bootloader
- **[root.md](root.md)** — Root the phone
- **[flashing.md](flashing.md)** — Step-by-step install guide
- **[troubleshooting.md](troubleshooting.md)** — Common issues and fixes

## Installation Workflow

Follow these steps **in order** for the best chance of success:

- [ ] **Step 1:** Check [requirements.md](requirements.md) — Verify firmware, drivers, and tools
- [ ] **Step 2:** [Unlock Bootloader](unlock_bootloader.md) — Enable custom firmware installation
- [ ] **Step 3:** [Flash GSI](flashing.md) — Install custom GSI
- [ ] **Step 4:** [Troubleshoot](troubleshooting.md) — If needed

## Root

- [Root Device (optional)](root.md) — I made this for someone who want to root the phone that on original firmware.

## Important notes

- Use the exact firmware and model for your device
- Always keep a backup of your working boot image
- Do not flash images for A02s or other A0x devices
- If the image is compressed (`.xz`), extract it first to get the raw `.img`

## Credits

- phhusson Treble project
- LineageOS GSI maintainers
- Samsung firmware tools community
- XDA forum (https://shorturl.at/WuyPj)

## Contribution

- Read `contribution.md`

## License

This project is licensed under the [MIT License](LICENSE).
