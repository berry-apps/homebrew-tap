cask "berrydb" do
  version "1.0.8"
  sha256 "e69608eb75081aa38fa1703a5a8e420a11fb80331fdbcb6b3f2323dc550fa980"

  url "https://github.com/berry-apps/berrydb-desktop/releases/download/v#{version}/BerryDB-#{version}.dmg"
  name "BerryDB"
  desc "Open-source lightweight native macOS database client"
  homepage "https://db.berryhub.app"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "BerryDB.app"

  zap trash: [
    "~/Library/Application Support/BerryDB",
    "~/Library/Caches/app.berryhub.db",
    "~/Library/Preferences/app.berryhub.db.plist",
    "~/Library/Saved Application State/app.berryhub.db.savedState",
  ]
end
