---
layout: page
title: Documentation
permalink: /documentation/
---

Welcome to the NestNinja documentation. Here you'll find build guides, API references, and technical documentation.

---

## Quick Start

### 🚀 Getting Started

**Prerequisites:**
- Waveshare ESP32-P4-WIFI6 development board
- OV5647 camera with fisheye lens
- HC-SR501 PIR motion sensor
- microSD card (32GB+ recommended)
- USB-C cable and 5V power supply

**Development Environment:**
- CMake 3.20+
- ESP-IDF v6.0-beta2+ (or auto-fetch via CPM)
- Git
- Python 3.8+

---

## Build Instructions

### Setting Up ESP-IDF

**Option 1: Manual Installation (Recommended)**

```powershell
# Download and install ESP-IDF v6.0-beta2+
# https://github.com/espressif/esp-idf/releases

# Set up environment
& $env:IDF_PATH\export.ps1

# Set target
idf.py set-target esp32p4

# Build
idf.py build

# Flash to device
idf.py -p COM3 flash monitor
```

**Option 2: Automatic CPM Fetch**

```powershell
# CPM will automatically fetch ESP-IDF v6.0-beta2
idf.py set-target esp32p4
idf.py build

# First-time setup: Install ESP-IDF tools if build fails
.\.cpm-cache\esp-idf\*\install.ps1  # Windows
# or
./.cpm-cache/esp-idf/*/install.sh   # Linux/Mac
```

---

## Hardware Setup

### Camera Connection

1. Connect OV5647 camera to MIPI-CSI port on ESP32-P4
2. Ensure ribbon cable is properly seated
3. Camera lens should face outward from board

### PIR Sensor Wiring

```
HC-SR501 → ESP32-P4
  VCC    → 3.3V
  GND    → GND
  OUT    → GPIO46 (or chosen wake pin)
```

### SD Card

1. Insert microSD card into onboard slot
2. Format as FAT32 or exFAT
3. Recommended: 32GB or larger, Class 10+

---

## Project Structure

```
NestNinja/
├── CMakeLists.txt          # Root build configuration
├── firmware/
│   └── main/               # Main application code
├── components/             # Custom components (future)
├── docs/                   # Documentation
│   ├── adr/               # Architecture Decision Records
│   ├── BUILD.md           # Build system guide
│   ├── DEPLOYMENT.md      # Deployment architecture
│   └── datasheets/        # Component datasheets
├── Claude.md              # AI assistant context
├── HARDWARE.md            # Hardware specifications
└── ROADMAP.md             # Development roadmap
```

---

## Architecture

### System Overview

**Application Host: ESP32-P4**
- Runs all application logic
- Camera capture and H.264 encoding
- SD card storage management
- PIR sensor monitoring
- Deep sleep power management

**Connectivity: ESP32-C6**
- Wi-Fi 6 (802.11ax) connectivity
- Bluetooth 5 / BLE
- SDIO slave to ESP32-P4
- Factory firmware via `esp_wifi_remote`

**Design Rationale:** See [ADR-002: P4 Application Host](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/002-p4-application-host.md)

---

## Configuration

### ESP-IDF Configuration

```bash
# Open menuconfig
idf.py menuconfig

# Key settings to configure:
# - Wi-Fi SSID and password
# - Camera resolution and frame rate
# - PIR sensitivity
# - SD card settings
# - Power management options
```

### Runtime Configuration

(Coming soon: Web interface for configuration)

---

## Architecture Decision Records (ADRs)

We document major design decisions in ADRs. Read these to understand why certain choices were made:

- [ADR-001: ESP32-P4 Platform](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/001-esp32-p4-platform.md)
- [ADR-002: P4 Application Host](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/002-p4-application-host.md)
- [ADR-003: Single-Target Build](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/003-single-target-build.md)
- [ADR-004: CMake 4.x Build System](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/004-cmake4-build-system.md)
- [ADR-005: ESP-IDF v6](https://github.com/CraigHutchinson/NestNinja.open/blob/main/docs/adr/005-esp-idf-v6.md)

---

## API Reference

(Coming soon - API documentation for developers)

### Core Modules

- **Camera Driver** - OV5647 control and capture
- **Video Encoder** - H.264 hardware encoding
- **Power Management** - Deep sleep and wake control
- **Motion Detection** - PIR sensor integration
- **Storage** - SD card file operations
- **Networking** - Wi-Fi and streaming protocols

---

## Development Roadmap

See our [detailed roadmap](https://github.com/CraigHutchinson/NestNinja.open/blob/main/ROADMAP.md) for current development status and planned features.

### Current Phase: Architecture Finalization 🔄

- [x] Research board architecture
- [ ] Finalize power management approach
- [ ] Select Path 1 (Standard) or Path 2 (Custom C6)
- [ ] Begin core component integration

---

## Troubleshooting

### Common Issues

**Build Fails:**
- Ensure ESP-IDF v6.0+ is installed
- Check CMake version (3.20+ required)
- Verify Python 3.8+ is in PATH

**Camera Not Detected:**
- Check MIPI-CSI cable connection
- Verify camera is OV5647 compatible
- Check power to camera module

**No Wi-Fi Connection:**
- Verify ESP32-C6 firmware is flashed
- Check Wi-Fi credentials in menuconfig
- Ensure 2.4GHz Wi-Fi (not 5GHz)

**High Power Consumption:**
- Verify deep sleep is entering correctly
- Check PIR sensor isn't triggering constantly
- Monitor serial output for wake reasons

---

## Product Documentation

### Premium Products

**Complete Bird Box System** (Coming Soon)
- Installation guide
- Quick start manual  
- Mounting instructions
- Network setup wizard
- Troubleshooting guide

**Smart Camera Module** (Coming Soon)
- Installation for various bird box types
- Configuration guide
- Mounting options
- Network setup

### DIY Builds

**Community Supported:**
- Build guides on GitHub (Community Edition releasing late 2026)
- Component sourcing lists
- Assembly instructions
- Community forum for help

## Contributing

We welcome contributions to the Community Edition:

- [GitHub Repository](https://github.com/CraigHutchinson/NestNinja.open) (Community Edition - releasing late 2026)
- [Community Forums](https://github.com/CraigHutchinson/NestNinja.open/discussions)
- Development guidelines (coming soon)

---

## Additional Resources

### Official Documentation

- [ESP32-P4 Technical Reference](https://files.waveshare.com/wiki/common/Esp32-p4_technical_reference_manual_en.pdf)
- [ESP-IDF Programming Guide](https://docs.espressif.com/projects/esp-idf/en/latest/)
- [OV5647 Datasheet](https://www.uctronics.com/download/cam_module/OV5647DS.pdf)

### Community

- [NestNinja Community Forum](/community)
- [GitHub Discussions](https://github.com/CraigHutchinson/NestNinja.open/discussions)
- Follow us on [Twitter](https://twitter.com/NestNinjaUK)

---

<div class="cta-buttons">
  <a href="{{ "/hardware" | relative_url }}" class="btn btn-secondary">← Hardware Overview</a>
  <a href="{{ "/community" | relative_url }}" class="btn btn-primary">Join Community →</a>
</div>
