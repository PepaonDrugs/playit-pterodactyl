
version=${VERSION}
#curl -L "https://github.com/playit-cloud/playit-agent/releases/download/v${version}/playit-linux-amd64" -o "playit-x64"
#
uname -m
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
# 64-bit stuff here
echo "Installing for 64bit"
curl -L "https://github.com/playit-cloud/playit-agent/releases/download/v${version}/playit-linux-amd64" -o "playit-x64"
elif [ ${MACHINE_TYPE} == 'aarch64' ]; then
echo "Installing for aarch64"
curl -L "https://github.com/playit-cloud/playit-agent/releases/download/v${version}/playit-linux-aarch64" -o "playit-x64"
else
echo "installing for armv7"
curl -L "https://github.com/playit-cloud/playit-agent/releases/download/v${version}/playit-linux-armv7" -o "playit-x64"
fi
chmod 0755 playit-x64
echo "installation finished"