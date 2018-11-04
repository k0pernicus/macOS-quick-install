#!/bin/sh

MOJAVE_VERSION="10.14"

MACOS_VERSION="$(defaults read loginwindow SystemVersionStampAsString)"
MAJOR_VERSION="${MACOS_VERSION:0:5}"

# Path to the setup/security scripts
CURRENT_ARCHITECTURE="HighSierra"

# If the current OS version is Mojave,
# Change the path
if [ "$MAJOR_VERSION" = "$MOJAVE_VERSION" ]; then
    CURRENT_ARCHITECTURE="Mojave";
fi

echo "We will install the scripts from ${CURRENT_ARCHITECTURE}"

# Install setup and security scripts from the CURRENT_ARCHITECTURE
# directory
for f in ./$CURRENT_ARCHITECTURE/*; do
    echo "sh ${f}"
    # sh ./$CURRENT_ARCHITECTURE/$f;
done

# Configure the user apps
