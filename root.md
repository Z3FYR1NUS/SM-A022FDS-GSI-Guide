# Rooting Guide — Samsung Galaxy A02 (SM-A022F / SM-A022F/DS)

This guide explains how to root the device using Magisk on stock firmware.

---

> # ⚠️ WARNING ⚠️
>
> Rooting will **permanently trip Knox** (irreversible), disable Samsung Secure features, and may break OTA updates.
>
> **Proceed only if the bootloader is already unlocked.**

---

## Supported Setup

| Field      | Value              |
| ---------- | ------------------ |
| Model      | SM-A022F/DS        |
| Bootloader | Unlocked           |
| AVB        | 1.1 (orange state) |
| Android    | 11                 |

---

## Requirements

**PC**

- [Odin v3.13.1](https://odindownload.com/download)
- [Samsung USB drivers](https://odindownload.com/samsung-usb-driver/)
- [ADB + Fastboot platform tools](https://developer.android.com/tools/releases/platform-tools)
- 7-Zip or any archive tool

**Phone**

- [Magisk APK](https://github.com/topjohnwu/Magisk/releases) (latest stable)

**Firmware**

- Official SM-A022F/DS firmware — `AP_*.tar.md5` package
- [SM-A022F/DS](https://samfw.com/firmware/SM-A022F/CAL/A022FXXS3BWH1)

## Steps

### 1 — Extract Firmware

Extract `AP_*.tar.md5` and locate `boot.img`.

---

### 2 — Patch Boot Image

1. Copy `boot.img` to phone storage
2. Install and open Magisk
3. Tap **Install → Select and Patch a File**
4. Select `boot.img`

Output saved to:

```text
/Download/magisk_patched.img
```

---

### 3 — Flash via Odin

1. Power off the phone
2. Hold **Volume Up + Down**, then plug in USB
3. Press **Volume Up** once to enter Download Mode
4. Open Odin → load `magisk_patched.img` in the **AP slot**
5. Uncheck **Auto Reboot** → click **Start**

---

### 4 — First Boot

Reboot the phone, open Magisk, and allow setup to complete. Root activates automatically.

---

### 5 — Verify Root

```powershell
.\adb shell
su
id
```

Expected:

```text
uid=0(root)
```

---

## Common Issues

| Problem                   | Cause                                          | Fix                             |
| ------------------------- | ---------------------------------------------- | ------------------------------- |
| Bootloop after root       | Wrong `boot.img` version                       | Flash stock `boot.img` via Odin |
| Magisk not detecting root | Bootloader not fully unlocked or vbmeta active | Flash `vbmeta.tar` via Odin     |
| Root lost after reboot    | Wrong patched image flashed                    | Repatch and reflash `boot.img`  |

---

## Notes

- Always match `boot.img` to your exact firmware version
- Keep backups of both stock and patched `boot.img`

---

## 🔁 Hard Brick Recovery

1. Hold **Volume Up + Down** + plug USB to enter Download Mode
2. Flash full stock firmware via Odin
3. Reboot

> See `troubleshooting.md` for more recovery steps.
