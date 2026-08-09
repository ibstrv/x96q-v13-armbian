#!/bin/bash

set -e

# The previous 6.12 image panicked inside xradio_wlan during an interrupt.
# Keep the first diagnostic image Ethernet-only even if that module appears.
mkdir -p /etc/modprobe.d
cat > /etc/modprobe.d/x96q-diagnostic.conf <<'EOF'
blacklist xradio_wlan
blacklist xradio_core
EOF

cat > /etc/x96q-build-purpose <<'EOF'
X96Q LPDDR3 v1.3 diagnostic image
Stage 1: Ethernet and cold-boot stability
Wi-Fi intentionally disabled pending driver validation
Do not install this test image to eMMC
EOF

