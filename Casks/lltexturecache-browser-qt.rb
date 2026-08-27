cask "lltexturecache-browser-qt" do
  version "0.1.0"

  sha256 "d577df2a75a407459c59854b87619798ab8dfaa99c4e31b687e3be90c80a2a2b"

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
