cask "radarboard-beta" do
  arch arm: "aarch64"

  version "0.1.1-beta.7"
  sha256 "11df673177009451b9fbb6474267287a61bdd12f29e898da3161e2d166ded903"

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
