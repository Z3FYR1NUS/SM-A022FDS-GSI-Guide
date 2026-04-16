# Troubleshooting — Samsung Galaxy A02 (SM-A022F / SM-A022F/DS) GSI

This document covers common issues when installing or running GSIs on the Galaxy A02 and their fixes.

---

## 🚫 1. Device Stuck on Boot Logo / Bootloop

### Symptoms

- Samsung logo stuck
- Reboots repeatedly
- No system boot after flashing GSI

### Causes

- Incompatible GSI variant (wrong architecture)
- Missing userdata wipe
- Broken vendor compatibility

### Fix

Reboot to fastboot and run:

```powershell
.\fastboot -w
.\fastboot reboot
```

If it persists, reflash with the correct GSI variant for this device:

- Architecture: `arm32_binder64`
- Build type: `ab`
- Variant: `vndklite`

---

## 📷 2. Camera Not Working

### Symptoms

- Camera app crashes immediately
- Black screen in camera
- "Can't connect to camera" error

### Causes

- GSI does not support vendor camera HAL on MT6739WW
- Missing Phh Treble workaround

### Fix

1. Open **Settings**
2. Go to **Phh Treble Settings**
3. Go to **Misc features**
4. Enable **Use alternative camera**
5. Reboot

> **Note:** Full camera functionality is not guaranteed on all GSIs for this device.

---

## 🔵 3. Bluetooth Audio Not Working

### Symptoms

- No sound over Bluetooth
- Audio cuts out or distorts
- Headphones connect but produce no output

### Fix

1. Open **Settings**
2. Go to **Phh Treble Settings**
3. Go to **Misc features**
4. Scroll down and toggle **Force-disable A2DP offload**
5. Reboot

---

## 📶 4. SIM Card Not Detected

### Symptoms

- No signal after first boot
- SIM shows as missing or invalid
- Mobile data unavailable

### Causes

- RIL (Radio Interface Layer) incompatibility with the GSI
- Wrong GSI variant flashed

### Fix

- Try a different GSI build (prefer `vndklite` variants)
- In **Phh Treble Settings → Android**, try enabling **Use legacy RIL handling**
- Reboot and allow a few minutes for the modem to register

> **Note:** SIM functionality varies by GSI. Not all builds support it on this chipset.

---

## ⚡ 5. Device Not Detected in Fastboot

### Symptoms

- `.\fastboot devices` returns nothing
- Fastboot commands hang or fail

### Causes

- Missing or incorrect USB drivers
- Cable or port issue
- Device not actually in fastboot mode

### Fix

1. Install the correct **Fastboot USB driver**: `https://developer.android.com/studio/run/win-usb`
2. Try a different USB cable and port (use USB 2.0 if possible)
3. Confirm the device is in fastboot — screen should show the fastboot/recovery menu
4. Run Device Manager on Windows and check for unknown devices under USB

---

## 🔄 6. Odin Fails or Shows "FAIL"

### Symptoms

- Odin ends with `FAIL` in the log
- Flash stops mid-process

### Causes

- Wrong file flashed to wrong slot
- `Auto Reboot` was left enabled
- Corrupted `.tar` or `.tar.md5` file

### Fix

- Ensure **Auto Reboot** is unchecked in Odin Options before flashing
- Re-download the firmware file and verify its integrity
- Confirm you are flashing to the **AP slot** only
- Use **Odin 3.13.1** — other versions may behave differently

---

## 🖥️ 7. ADB Device Not Recognized

### Symptoms

- `adb devices` returns empty or `unauthorized`
- ADB commands fail

### Fix

1. Install Samsung USB drivers: `https://odindownload.com/samsung-usb-driver/`
2. On the device, go to **Settings → Developer Options** and ensure **USB Debugging** is enabled
3. Reconnect the cable and accept the **Allow USB Debugging** prompt on the device
4. If still unauthorized, revoke ADB authorizations in Developer Options and reconnect

---

## 🧱 8. "Invalid Sparse File Format"

### Info

> This is **not** an error if flashing continues normally.

### Meaning

- Fastboot auto-handled image conversion

Ignore if the flash completes successfully.

---

## 🌑 9. Black Screen After First Boot

### Symptoms

- Screen stays black after the boot animation
- Device appears on but display is off

### Fix

- Wait up to **15 minutes** — first boot on some GSIs takes longer than expected
- If it persists, reboot to recovery and run `.\fastboot -w`, then reboot
- Try a GSI with a different display compatibility flag if the issue repeats across reboots

## 📋 General Tips

- Always run `.\fastboot -w` after flashing a new GSI to wipe userdata cleanly
- Keep a backup of your original `boot.img` and `magisk_patched.img`
- Do not flash GSIs intended for SM-A025F (A02s) or other A0x models — they are not compatible
- If a GSI build is unstable, try another build from the same source before switching projects
