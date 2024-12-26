#!/bin/bash

# Update and upgrade system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Java (OpenJDK 11)
echo "Installing OpenJDK 11..."
sudo apt install openjdk-11-jdk -y

# Verify Java installation
echo "Java version installed:"
java -version

# Define Maven version and download URL
MAVEN_VERSION=3.9.5
MAVEN_DOWNLOAD_URL="https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz"

# Download Maven
echo "Downloading Maven $MAVEN_VERSION..."
wget $MAVEN_DOWNLOAD_URL -P /tmp

# Extract Maven
echo "Extracting Maven..."
sudo tar -xvzf /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -C /opt

# Rename the extracted folder for simplicity
sudo mv /opt/apache-maven-$MAVEN_VERSION /opt/maven

# Configure environment variables
echo "Setting up environment variables..."
if ! grep -q "Maven environment variables" ~/.bashrc; then
  echo -e "\n# Maven environment variables" >> ~/.bashrc
  echo "export M2_HOME=/opt/maven" >> ~/.bashrc
  echo "export PATH=\$M2_HOME/bin:\$PATH" >> ~/.bashrc
fi

# Reload the .bashrc file
echo "Reloading environment variables..."
source ~/.bashrc

# Verify Maven installation
echo "Verifying Maven installation..."
mvn -version

echo "Maven $MAVEN_VERSION installation completed successfully!"
