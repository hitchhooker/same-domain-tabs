# Manage Tabs by Domain (manifestv3)

A modern Chrome extension for managing same-domain tabs, built with Manifest V3 and UnoCSS.

Tabs with the same domain as the active tab can be closed with CMD + Shift + X or gathered around the active tab with CMD + Shift + A. All same-domain tabs can be gathered with CMD + Shift + L. Alternatively, tabs can be managed by clicking on the extension's button and selecting Close, Gather, or Gather All.

<p align="center">
  <img src="https://lh3.googleusercontent.com/Q29f-0zD2oWxmIdlf2mZ-T5FqWzU88EasykSvNW4mpgxsqPDjb5ZYyGK6BzvRp7czp5Xc4Po2FJ3oZchX7zdn58_gQ" alt="Extension Screenshot" width="320" />
</p>

## Features

- ✨ Modern UI with UnoCSS atomic styling
- 🌙 Native dark mode support
- 🔄 Close all tabs from the same domain as your active tab
- 📎 Gather same-domain tabs around your active tab
- 🌐 Gather all tabs by domain across the entire window
- ⌨️ Convenient keyboard shortcuts
- 🎯 Lightweight with CDN-based dependencies
- 🔍 Fully accessible with keyboard navigation

## Installation

### From Chrome Web Store
Coming soon!

### Manual Installation
1. Download or clone this repository
2. Open Chrome and navigate to `chrome://extensions/`
3. Enable "Developer mode" using the toggle switch in the top-right corner
4. Click "Load unpacked" and select the extension directory
5. The extension is now installed and ready to use

## Keyboard Shortcuts

- `Command+Shift+X` (Mac) / `Ctrl+Shift+X` (Windows/Linux): Close same-domain tabs
- `Command+Shift+A` (Mac) / `Ctrl+Shift+A` (Windows/Linux): Gather same-domain tabs around active tab
- `Command+Shift+L` (Mac) / `Ctrl+Shift+L` (Windows/Linux): Gather all same-domain tabs

You can customize these shortcuts at `chrome://extensions/shortcuts`

## Technical Details

- Built with Manifest V3
- Styled with UnoCSS (Atomic CSS utilities)
- Includes Carbon icons via UnoCSS Icons preset
- Service worker background script for improved performance
- Responsive and accessible design

## Build

```bash
make build version=x.x.x
```

## License

MIT Licensed - see LICENSE file for details
