set -euo pipefail
IFS=$'\n\t'

# Download and install the Vulkan SDK.
curl -fL "https://sdk.lunarg.com/sdk/download/1.3.290.0/mac/vulkansdk-macos-1.3.290.0.dmg" -o /tmp/vulkan-sdk.dmg
hdiutil attach /tmp/vulkan-sdk.dmg -mountpoint /Volumes/vulkan-sdk
/Volumes/vulkan-sdk/InstallVulkan.app/Contents/MacOS/InstallVulkan \
    --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.ios
# hdiutil detach /Volumes/vulkan-sdk
rm -f /tmp/vulkan-sdk.dmg
