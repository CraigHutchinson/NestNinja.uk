---
layout: page
title: Hardware
permalink: /hardware/
---

NestNinja is built on the **Waveshare ESP32-P4-WIFI6 Development Board**, a high-performance platform combining the ESP32-P4 application processor with ESP32-C6 connectivity.

---

## Development Board

### Waveshare ESP32-P4-WIFI6

<div class="hardware-section">

**Core Processor: ESP32-P4**
- 400MHz dual-core RISC-V processor
- 32MB PSRAM (stacked)
- 32MB NOR Flash
- ISP + H.264 encoder @ 1080p 30fps
- MIPI-CSI camera interface
- USB 2.0 OTG High Speed
- SDIO 3.0 with SD card slot
- 27 programmable GPIOs via 40-pin header

**Connectivity: ESP32-C6**
- Wi-Fi 6 (802.11ax) @ 2.4GHz
- Bluetooth 5 / BLE
- Connected to P4 via SDIO slave interface
- Pre-flashed with factory firmware

</div>

**Official Documentation:**
- [Waveshare Wiki](https://www.waveshare.com/wiki/ESP32-P4-WIFI6)
- [ESP32-P4 Datasheet](https://files.waveshare.com/wiki/common/Esp32-p4_datasheet_en.pdf)
- [ESP32-P4 Technical Reference](https://files.waveshare.com/wiki/common/Esp32-p4_technical_reference_manual_en.pdf)
- [Board Schematic](https://files.waveshare.com/wiki/ESP32-P4-WIFI6/ESP32-P4-WIFI6-datasheet.pdf)

> ⚠️ **Critical Design Note:** ESP32-P4 is the **application host**. The ESP32-C6 acts as a connectivity co-processor and cannot independently control peripherals.

---

## Camera Module

### OV5647 with 160° Fisheye Lens

<div class="hardware-section">

**Specifications:**
- **Sensor:** OV5647 (5 megapixel)
- **Lens:** 160° fisheye for full nest coverage
- **Resolution:** Up to 1080p @ 30fps
- **IR Cut Filter:** Automatic day/night switching
- **IR LEDs:** Integrated for night vision
- **Interface:** MIPI-CSI to ESP32-P4

**Features:**
- Wide viewing angle captures entire nest interior
- Excellent low-light performance
- Invisible IR illumination doesn't disturb birds
- Hardware-compatible with Raspberry Pi Camera Module v1

</div>

**Reference Product:** [AliExpress Link](https://www.aliexpress.com/item/1005004616186950.html)

---

## Motion Detection

### HC-SR501 PIR Sensor

<div class="hardware-section">

**Purpose:** Wake the ESP32-P4 from deep sleep when bird motion is detected

**Features:**
- Passive Infrared (PIR) motion detection
- Adjustable sensitivity and delay time
- Wide detection angle (~120°)
- Ultra-low power consumption
- 3.3V compatible

**Operation:**
- Monitors for warm-body movement (birds)
- Triggers wake signal to ESP32-P4
- Enables low-power standby mode
- Essential for battery-powered installations

</div>

---

## Power Options

### Flexible Power Delivery

**USB-C Power (Primary)**
- Standard 5V USB-C input
- Simple plug-and-play operation
- Suitable for installations near power outlets

**Battery Operation**
- Compatible with rechargeable lithium batteries
- PIR motion detection minimizes power usage
- Deep sleep mode draws <3mA (target)
- Ideal for remote installations

**Solar Power**
- Works with solar panels + battery systems
- Requires appropriate voltage regulator
- Perfect for off-grid bird boxes
- Environmentally friendly operation

---

## Connectivity & Storage

### Wireless & Data

**Wi-Fi 6 (802.11ax)**
- 2.4GHz for best range outdoors
- Better penetration through walls and vegetation
- Modern protocol efficiency

**Bluetooth 5**
- Easy setup and pairing
- Configuration without Wi-Fi
- Future mobile app support

**microSD Card**
- SDIO 3.0 interface for high-speed writes
- Local video recording storage
- Supports large capacity cards
- Your data stays with you

---

## GPIO & Expansion

### Developer-Friendly Design

**40-Pin GPIO Header**
- 27 programmable GPIO pins
- I2C bus (GPIO7 SDA, GPIO8 SCL)
- I2S audio interface (GPIO9-13)
- 3.3V and 5V power rails
- Ground pins throughout

**Expansion Possibilities:**
- Add environmental sensors (temperature, humidity)
- Attach displays for local viewing
- Connect external storage
- Control servos for pan/tilt
- Custom integration projects

---

## Bill of Materials (BOM)

| Component | Description | Approx. Cost |
|-----------|-------------|--------------|
| ESP32-P4-WIFI6 Board | Waveshare development board | £30-40 |
| OV5647 Camera | 160° fisheye with IR | £10-15 |
| HC-SR501 PIR | Motion sensor | £1-2 |
| microSD Card | 32GB+ recommended | £5-10 |
| USB-C Cable | Power cable | £3-5 |
| Enclosure | Weather-resistant bird box | £15-30 |
| **Total** | Approximate | **£65-100** |

> Prices are estimates and vary by supplier and quantity. This is for a single prototype unit.

---

## Assembly Notes

### Hardware Integration

1. **Camera Connection:** MIPI-CSI cable to P4 camera port
2. **PIR Sensor:** Connect to GPIO46 (or chosen wake pin) + power
3. **SD Card:** Insert microSD into onboard slot
4. **Power:** USB-C or battery via appropriate regulator
5. **Enclosure:** Weather-proof, bird-friendly housing with camera view

### Recommended Tools

- Soldering iron (for headers/wires if needed)
- Small screwdriver set
- Wire strippers
- Multimeter for testing
- Hot glue or mounting adhesive

---

## Purchase Options

### Premium Products (Coming Soon)

**Complete Bird Box System**
- Fully assembled smart bird box
- Pre-configured camera and sensors
- Weather-resistant enclosure
- Professional installation guide
- Email support included
- Perfect for end users who want plug-and-play

**Smart Camera Module**
- Pre-assembled camera system
- Easy mounting for existing bird boxes
- Configuration guide included
- Ideal for tinkerers with DIY bird boxes
- Community forum support

### DIY Component Build

**For Advanced Users:**

If you prefer to source components yourself:

**Development Board:**
- [Waveshare Official Store](https://www.waveshare.com/esp32-p4-wifi6.htm)
- Amazon, AliExpress, etc.

**Camera Module:**
- Search for "OV5647 160 degree fisheye IR camera"
- Raspberry Pi Camera suppliers
- Electronics distributors

**Other Components:**
- Standard electronics suppliers (Digikey, Mouser, Farnell)
- Amazon for general items
- Local electronics shops

**Note:** DIY builds require technical skills and are supported through community forums only. Community Edition firmware will be released late 2026.

---

## Technical Deep Dive

For detailed hardware information, architecture decisions, and pinout diagrams:

- [Complete Hardware Documentation]({{ site.url }}/hardware/) (Collection)
- [ESP32-P4 Pinout Reference](https://github.com/CraigHutchinson/NestNinja/blob/main/docs/PCB_PINOUT.md)
- [Architecture Decision Records](https://github.com/CraigHutchinson/NestNinja/tree/main/docs/adr)

---

<div class="cta-buttons">
  <a href="/features" class="btn btn-secondary">← Back to Features</a>
  <a href="/documentation" class="btn btn-primary">Documentation →</a>
</div>
