cask "lltexturecache-browser-qt" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.4"

  sha256 arm:   "06c5d1919030c48ca627522192c89f83d8ddfb849d23e1b130e0fdbd620eb8b4",
         intel: "a24d48227c0d09fa621d0a004715e6c2b9ca6c5c7d1cd7f10c9dbbd2b617f721"

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
