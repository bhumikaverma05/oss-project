#!/bin/bash

echo "Updating system..."
sudo apt update

echo "Installing Apache..."
sudo apt install apache2 -y

echo "Starting Apache..."
sudo systemctl start apache2

echo "Enabling Apache..."
sudo systemctl enable apache2

echo "Setup complete. Open http://localhost"
