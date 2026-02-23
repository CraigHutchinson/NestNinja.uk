---
layout: page
title: Features
permalink: /features/
---

## Core Capabilities

### 🎥 High-Performance Video System

**1080p HD Streaming**
- Real-time H.264 hardware encoding
- 30fps smooth video at 1080p resolution
- WebRTC or HTTP streaming options
- Adaptive bitrate for varying network conditions

**160° Fisheye Lens**
- Ultra-wide field of view captures the entire nest interior
- OV5647 camera sensor with excellent low-light performance
- Professional-grade imaging for bird watching

**Night Vision**
- Integrated IR LEDs for invisible illumination
- IR cut filter automatically switches for day/night operation
- Clear monitoring 24/7 without disturbing the birds

---

### 🔋 Smart Power Management

**Motion-Activated Wake**
- PIR (Passive Infrared) sensor detects bird movement
- Device stays in deep sleep until motion detected
- Ultra-low power consumption extends battery life

**Optimized Sleep Modes**
- Deep sleep draws <3mA (target)
- Wake-on-demand architecture
- Perfect for solar-powered or battery installations

**Flexible Power Options**
- USB-C power input
- Battery operation support
- Solar panel compatible (with appropriate regulator)

---

### 📡 Modern Connectivity

**Wi-Fi 6 (802.11ax)**
- Latest wireless standard via ESP32-C6
- Better range and reliability
- 2.4GHz for long-distance outdoor use

**Bluetooth 5 / BLE**
- Easy setup and configuration
- Mobile app pairing (planned)
- Status monitoring without Wi-Fi

---

### 💾 Local Storage & Recording

**SD Card Support**
- Store recordings locally on microSD
- No cloud required - your data stays yours
- SDIO 3.0 interface for fast writes

**Recording Features** (Planned)
- Motion-triggered recording
- Scheduled recording windows
- Time-lapse creation
- Automatic old file cleanup

---

### 🛠️ Flexible Purchase Options

**Choose Your Level**
- **Premium Complete System** - Ready-to-install bird box with integrated camera
- **Smart Camera Module** - Add intelligence to your existing bird box
- **DIY Build** - Community Edition open-source firmware for component-level builds (late 2026)

**For Developers**
- Community Edition firmware will be open-sourced (currently in development)
- Hardware schematics planned for release
- CMake build system
- ESP-IDF v6.0+ framework
- Premium features available commercially

**Extensible Platform**
- 27 GPIO pins available on 40-pin header
- I2C, I2S, USB interfaces exposed
- Add your own sensors and features
- Well-documented API (coming soon)

**Development Tools**
- USB programming and debugging
- Serial console access
- Architecture Decision Records (ADRs) document design choices
- Active development community

---

## Technical Specifications

| Component | Specification |
|-----------|--------------|
| **Processor** | ESP32-P4 (400MHz dual-core RISC-V) |
| **Co-Processor** | ESP32-C6 (Wi-Fi 6 + BT5) |
| **RAM** | 32MB PSRAM (stacked) |
| **Flash** | 32MB NOR Flash |
| **Camera** | OV5647, 1080p, 160° fisheye, IR |
| **Storage** | microSD via SDIO 3.0 |
| **Connectivity** | Wi-Fi 6 (2.4GHz), Bluetooth 5, BLE |
| **Motion Sensor** | HC-SR501 PIR |
| **Video Encoding** | H.264 hardware @ 1080p 30fps |
| **Power** | USB-C, battery, or solar compatible |
| **GPIO** | 27 programmable pins |
| **Interfaces** | MIPI-CSI, MIPI-DSI, I2C, I2S, USB 2.0 |

---

## Use Cases

### 🏡 Home Bird Watching
Monitor bird boxes in your garden without disturbing the birds. Get alerts when birds visit and record memorable moments.

### 🔬 Research & Education
Perfect for schools and researchers studying bird behavior. Record nesting patterns, feeding times, and chick development.

### 🌍 Conservation Projects
Track endangered species, monitor nesting success, and contribute data to conservation efforts.

### 🎨 Nature Photography
Capture amazing footage for documentaries, time-lapses, or simply sharing with fellow enthusiasts.

---

## Coming Soon

- 📱 **Mobile App** - iOS and Android apps for easy monitoring
- 🤖 **AI Detection** - Automatic bird species recognition
- 🌡️ **Environmental Sensors** - Temperature, humidity monitoring
- 🔔 **Smart Alerts** - Notifications for activity patterns
- 🌐 **Web Dashboard** - Browser-based monitoring and configuration
- 🎮 **Pan/Tilt** - Optional motorized camera positioning

---

<div class="cta-buttons">
  <a href="{{ "/hardware" | relative_url }}" class="btn">View Hardware Details</a>
  <a href="{{ "/documentation" | relative_url }}" class="btn">Read Documentation</a>
  <a href="{{ "/community" | relative_url }}" class="btn btn-primary">Join Community</a>
</div>
