cask "brave-browser-beta" do
  version "84.1.13.69,113.69"
  sha256 "5010044cdd87bd81eb62fb70ebe92557109490b7a2822a608b4821a76df74b3c"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
  name "Brave Beta"
  homepage "https://brave.com/download-beta/"

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
