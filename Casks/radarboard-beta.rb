cask "radarboard-beta" do
  arch arm: "aarch64"

  version "0.1.1-beta.4"
  sha256 "2a3a56e5f80d129b30725d36a2a078a77dbf14dfe3229191e4ac27bd6a511757"

  url "https://github.com/Radarboard/homebrew-radarboard/releases/download/desktop-v#{version}/Radarboard-#{version}-macos-#{arch}.dmg",
      verified: "github.com/Radarboard/homebrew-radarboard/"
  name "Radarboard Beta"
  desc "Local-first desktop board for code, ops, and growth signals"
  homepage "https://radarboard.app"

  livecheck do
    url "https://github.com/Radarboard/homebrew-radarboard/releases"
    regex(/^desktop-v(\d+(?:\.\d+){2}-beta\.\d+)$/i)
  end

  auto_updates true
  conflicts_with cask: "radarboard"
  depends_on macos: ">= :monterey"

  app "Radarboard.app"

  zap trash: [
    "~/Library/Application Support/Radarboard",
    "~/Library/Application Support/com.radarboard.client",
    "~/Library/Caches/com.radarboard.client",
    "~/Library/HTTPStorages/com.radarboard.client",
    "~/Library/LaunchAgents/com.radarboard.client.plist",
    "~/Library/Logs/com.radarboard.client",
    "~/Library/Preferences/com.radarboard.client.plist",
    "~/Library/Saved Application State/com.radarboard.client.savedState",
    "~/Library/WebKit/com.radarboard.client",
  ]
end
