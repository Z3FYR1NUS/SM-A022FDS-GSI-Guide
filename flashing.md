# Flashing Guide — Samsung Galaxy A02 (SM-A022F/DS)

## Important

This guide assumes you already have:

- an unlocked bootloader if you not, see `Unlock_bootloader.md`
- Magisk root or a patched boot image path
- a GSI image extracted to `.img`

If your file is compressed as `.xz`, extract it first.

---

## Step 1 — Prepare the GSI image

Make sure you have a raw image file like:

```text
system-squeak-arm32_binder64-ab-vndklite-vanilla.img
```

## Step 2 — Flash Fastboot via Odin

- Power off, Hold Volume up + Down, connect to PC.
- Open Odin and uncheck `Auto Reboot` in Options.
- Flash `vbmetar.tar` in AP slot. (get that in **[Important file](./Important%20file/)** )
- Click start

## Step 3 — Flash vbmeta

- Power off, hold Volume up + Down, connect to PC.
- Open Odin and uncheck `Auto Reboot` in Options.
- Flash `fastbootd-recovery.tar.md5` in AP slot.
- Click start

## Step 4 — Enter Recovery

- After flashing Fastboot, hold Power + Volume Down
- The moment the screen turns off, switch to Power + Volume Up instantly.
- Keep holding till recovery loads.
- Select `Enter Fastboot`
- Check if the phone is detected

```text
fastboot devices
```

- run

```text
fastboot erase system
fastboot erase cache
fastboot flash system YOUR_GSI.img
fastboot -w
fastboot reboot
```

## Step 5 — Wait

- Wait around 10 minutes for the phone to do its thing, the first boot may take several minutes.

## Step 6 — Initial Setup

- Let the system settle for a few minutes

## Step 7 — Verify

- Confirm the device has booted successfully before proceeding.

## Step 8 — Fix Bluetooth Audio

- If Bluetooth audio behaves incorrectly
- Open Settings
- Phh Treble Settings
- Misc features
- Scroll down and toggle `Force-disable A2DP offload`
- Reboot

## If you encounter any problem

- Go see [Troubleshooting Guide](troubleshooting.md)
