#!/bin/bash
set -e

ssh c3x "systemd-analyze plot > /tmp/bootchart.svg"
scp c3x:/tmp/bootchart.svg /tmp/bootchart.svg
google-chrome /tmp/bootchart.svg

