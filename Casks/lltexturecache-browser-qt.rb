cask "lltexturecache-browser-qt" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1"

  sha256 arm:   "9dd2f321e12ff436090c0019ef38738a63e96847c4d01fd04d6b371eb9381617",
         intel: "9dd2f321e12ff436090c0019ef38738a63e96847c4d01fd04d6b371eb9381617"

  url "https://github.com/furudean/lltexturecache-viewer-gui/releases/download/v#{version}/lltexturecache-browser-qt-#{version}-macos-#{arch}.zip"
  name "lltexturecache-browser-qt"
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/lltexturecache-viewer-gui"

  depends_on macos: :ventura

  app "lltexturecache-browser-qt.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.furudean.lltexturecache-browser-qt.plist",
    "~/Library/Saved Application State/com.furudean.lltexturecache-browser-qt.savedState",
  ]
end
