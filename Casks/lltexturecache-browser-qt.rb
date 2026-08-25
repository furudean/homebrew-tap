cask "lltexturecache-browser-qt" do
  version "0.0.5"

  sha256 "933592a74b991aff8080805cd633b2916f48edf4f3ea783c2a32ad190c528f17"

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
