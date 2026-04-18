# Requirements — Samsung Galaxy A02 (SM-A022F/DS)

## Device

- **Model:** Samsung Galaxy A02 (SM-A022F/DS)
- **Configuration:** USB debugging must be enabled in Developer Options.

---

## PC Tools & Drivers

Ensure the following tools are installed on a Windows environment for compatibility with Odin and ADB.

| Tool                    | Purpose                                     | Download Link                                                           |
| :---------------------- | :------------------------------------------ | :---------------------------------------------------------------------- |
| **Samsung USB Drivers** | Device recognition for Odin/Download Mode   | [Download](https://odindownload.com/samsung-usb-driver/)                |
| **Odin 3.13.1**         | Primary flashing tool for Samsung binaries  | [Download](https://odindownload.com/download)                           |
| **ADB & Fastboot**      | Platform tools for command-line interface   | [Download](https://developer.android.com/tools/releases/platform-tools) |
| **Fastboot USB Driver** | Google USB Driver for Fastboot connectivity | [Download](https://developer.android.com/studio/run/win-usb)            |
| **7-Zip**               | Extraction of firmware and GSI archives     | [Download](https://www.7-zip.org/)                                      |

> **Note:** Any Windows PC capable of executing ADB commands and running Odin is compatible.

---

## Automated ADB Environment Setup

You can use my `InstallADB.bat` script to automate the configuration:

1. The script will downloads the latest ADB tools.
2. It put them at `C:\ADB-platform-tools`.
3. It automatically register ADB to system Path.

---

## MANDATORY GSI format

You GSI must have these

- Architecture: `arm32_binder64`
- Partition compatibility: `ab`
- Vendor interface: `vndklite`

## Example GSI

- **Repository:** [Phhusson Treble Experimentations (v416)](https://github.com/phhusson/treble_experimentations/releases/tag/v416)

### Examples:

- I've test these both and it working great.
- **Vanilla Build:** `system-squeak-arm32_binder64-ab-vndklite-vanilla.img`
- **Google-Apps Build:** `system-squeak-arm32_binder64-ab-vndklite-gogapps.img.xz`

---

## Critical Backups & Essential Files

- **Original `boot.img`**: Extracted from stock firmware.
- **Patched `magisk_patched.img`**: For root access.
- **Stock Firmware**: Download [SM-A022F/DS](https://samfw.com/firmware/SM-A022F/CAL/A022FXXS3BWH1)
- **Working GSI Image**: The specific `.img` file used for the current installation.

---

## If you already have all of this, go unlock bootloader

**[Unlock Bootloader](unlock_bootloader.md)**
