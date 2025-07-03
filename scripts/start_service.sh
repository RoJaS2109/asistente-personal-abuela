#!/bin/bash

# Configurar el asistente como servicio en Raspberry Pi
sudo cp scripts/asistente.service /etc/systemd/system/
sudo systemctl enable asistente.service
sudo systemctl start asistente.service
