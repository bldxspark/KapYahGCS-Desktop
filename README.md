# KapYah GCS

<p align="center">
  <img src="resources/KapYahGCS.png" alt="KapYah GCS Logo" width="500">
</p>

KapYah GCS is a Ground Control Station application for MAVLink-enabled UAV operations.

## Desktop release

**Current release:** KapYah GCS Desktop v1.0.0

The Windows installer is distributed as:

```text
KapYahGCS-Setup.exe
```

The installer includes the Qt and GStreamer runtime components required for the application and RTSP video streaming.

### Download

[Android Version](https://github.com/bldxspark/KapYahGCS-Android)

[Download KapYah GCS Desktop v1.0.0](https://github.com/bldxspark/KapYahGCS-Desktop/releases/download/v1.0.0/KapYahGCS-Setup.exe)
### Desktop features

- MAVLink vehicle communication and telemetry
- Mission planning and flight operations
- RTSP video-stream viewing through GStreamer
- KapYah-branded user interface and application icons
- Configurable video source and camera connection settings
- Windows Start Menu and desktop shortcut installation

### Example direct-camera network configuration

```text
PC Ethernet IP: 192.168.144.100
Subnet mask:    255.255.255.0
Camera IP:      192.168.144.25
RTSP URL:       rtsp://192.168.144.25:8554/main.264
```

Camera IP addresses and RTSP paths can differ by device model and configuration.

## Android

Android support will be maintained in a separate Android release workflow.

## Building

KapYah GCS uses CMake and Qt 6. For Windows builds with RTSP support, configure GStreamer before building:

```text
GStreamer_ROOT_DIR=C:\sdk_and_dependencies\gstreamer\1.0\msvc_x86_64
```

## License and acknowledgments

This project includes components derived from QGroundControl and other open-source projects. Retain the included license and copyright notices when distributing modified versions.

- [Apache License 2.0](LICENSE_APACHE)
- [GNU General Public License v3.0](LICENSE_GPL)
