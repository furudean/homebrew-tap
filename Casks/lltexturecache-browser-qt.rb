cask "lltexturecache-browser-qt" do
  version "0.0.6"

  sha256 "e12f2d2c0e73b12a1ffe7c858e289302518a69f0794a6196a8481a80a959462c"

  url "https://github.com/furudean/lltexturecache-browser-qt/releases/download/v#{version}/lltexturecache-browser-qt-#{version}-macos-arm64.zip"
  name "lltexturecache-browser-qt"
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/lltexturecache-browser-qt"

  depends_on arch: :arm64

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
