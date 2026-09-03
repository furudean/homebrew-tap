cask "lltexturecache-browser-qt" do
  version "0.5.4"

  sha256 "06c5d1919030c48ca627522192c89f83d8ddfb849d23e1b130e0fdbd620eb8b4"

  url "https://github.com/furudean/lltexturecache-viewer-gui/releases/download/v#{version}/lltexturecache-browser-qt-#{version}-macos-universal.zip"
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
