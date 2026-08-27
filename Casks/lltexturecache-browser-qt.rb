cask "lltexturecache-browser-qt" do
  version "0.2.1"

  sha256 "61ad58dcd65869a53e463d8372cacdbc2b7aa8d0072d270f90cacc997ff5afef"

  url "https://github.com/furudean/lltexturecache-viewer-gui/releases/download/v#{version}/lltexturecache-browser-qt-#{version}-macos-arm64.zip"
  name "lltexturecache-browser-qt"
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/lltexturecache-viewer-gui"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

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
