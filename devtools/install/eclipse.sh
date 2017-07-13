sudo apt-get install openjdk-8-jre openjdk-8-jdk

DOWNLOAD_URL="https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-cpp-neon-R-linux-gtk-x86_64.tar.gz&r=1"

ECLIPSE_BIN_PATH="$LOCAL_DIR/bin/eclipse-cdt"
ECLIPSE_TAR_FILE="$ECLIPSE_BIN_PATH/eclipse-neon.tar.gz"
LINK_PATH="$LOCAL_DIR/bin/eclipse"

rm -rf "$LINK_PATH"
rm -rf "$ECLIPSE_BIN_PATH"

mkdir -p "$ECLIPSE_BIN_PATH"
wget -O "$ECLIPSE_TAR_FILE" $DOWNLOAD_URL 
tar -xvzf "$ECLIPSE_TAR_FILE" --directory "$ECLIPSE_BIN_PATH" --strip-components=1

# Change default workspace path.
# Environment variables are not supported in config.ini -> write variable value instead.
sed -i "s|\(osgi.instance.area.default\)=.*|\1=$ECLIPSE_WORKSPACE|g" $ECLIPSE_BIN_PATH/configuration/config.ini
ln -sfv -T "$ECLIPSE_BIN_PATH/eclipse" "$LINK_PATH"

rm -f "$ECLIPSE_TAR_FILE"
