<p align="center">
  <img src="https://sylloo.com/frontend/images/logo/1.png" alt="Sylloo" height="64">
</p>

<h1 align="center">Sylloo POS for Windows</h1>

<p align="center">
  Point-of-sale desktop app for shops using <a href="https://sylloo.dev">Sylloo</a>.<br>
  Works offline and syncs sales with your Sylloo account when you're back online.
</p>

<p align="center">
  <a href="https://github.com/rishadblack/desktop-pos-releases/releases/latest"><img src="https://img.shields.io/github/v/release/rishadblack/desktop-pos-releases?label=latest%20version&color=07556a" alt="Latest version"></a>
  <img src="https://img.shields.io/badge/platform-Windows%2010%20%7C%2011%20(64--bit)-f49031" alt="Windows 10 and 11, 64-bit">
</p>

---

## Download

### [⬇ Download the latest version](https://github.com/rishadblack/desktop-pos-releases/releases/latest)

On the release page, under **Assets**, click **`Sylloo-POS-x.x.x-setup.exe`**.

Current version: **1.0.0** ([direct download](https://github.com/rishadblack/desktop-pos-releases/releases/download/v1.0.0/Sylloo-POS-1.0.0-setup.exe), 173 MB).

## Requirements

- Windows 10 or Windows 11, 64-bit
- About 500 MB of free disk space
- Internet connection for the first activation and for syncing (sales still work offline)
- Your shop's terminal activation details from your Sylloo account

## Installation

### Step 1: Trust the Sylloo certificate (once per computer)

Sylloo POS is signed with the Sylloo certificate. Do this once on each computer before installing, so Windows recognises Sylloo as the publisher and doesn't block the installer.

1. Download [`sylloo-code-signing.cer`](https://github.com/rishadblack/desktop-pos-releases/raw/main/certificate/sylloo-code-signing.cer) and [`install-certificate.cmd`](https://github.com/rishadblack/desktop-pos-releases/raw/main/certificate/install-certificate.cmd) into the **same folder**.
2. Right-click **`install-certificate.cmd`** and choose **Run as administrator**.
3. Click **Yes** when Windows asks for permission. Wait for **"Done"**, then press any key.

<details>
<summary>Prefer to do it by hand?</summary>

Open **Command Prompt as administrator** in the folder with the certificate and run:

```bat
certutil -addstore Root sylloo-code-signing.cer
certutil -addstore TrustedPublisher sylloo-code-signing.cer
```

To check that you have the right certificate: it is issued to **CN=Sylloo, O=Sylloo, C=BD**, its thumbprint is `D5C72356D57D29C747D2A7F346798B30B4EFF00A`, and it is valid until October 2031.
</details>

### Step 2: Install Sylloo POS

1. Run **`Sylloo-POS-x.x.x-setup.exe`**.
2. The app installs automatically and opens when it finishes. You don't need administrator rights.
3. A **Sylloo POS** shortcut is added to the desktop and the Start menu.

> If Windows still shows **"Windows protected your PC"**, click **More info → Run anyway**. You should only see this if Step 1 was skipped.

### Step 3: Activate the terminal

1. On first launch, enter the activation details for this terminal from your Sylloo account.
2. Sign in with your cashier account.
3. The app downloads your products, customers and settings. You're ready to sell.

## Updates

Sylloo POS updates itself. When a new version is ready, the app tells you and installs it after a restart, so you don't need to download anything again.

You can always install the [latest version](https://github.com/rishadblack/desktop-pos-releases/releases/latest) over your current one. Your data and settings are kept.

## Customer display

If you have a second monitor facing the customer, open **Customer Display** from the app menu (or press **Ctrl + Shift + D**). It shows the cart, totals and change. When the till is idle it shows your advertisements.

To add your own advertisements, choose **Customer Display → Manage advertisements…** and copy images (`.jpg`, `.png`, `.webp`, `.gif`) or videos (`.mp4`, `.webm`) into the folder that opens.

## Uninstall

Open **Settings → Apps → Installed apps**, find **Sylloo POS**, and click **Uninstall**.

## Support

For activation, accounts or other help, contact Sylloo support through [sylloo.com](https://sylloo.com).

## All versions

See every release and its changes on the [Releases page](https://github.com/rishadblack/desktop-pos-releases/releases).
