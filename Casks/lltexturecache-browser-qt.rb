cask "lltexturecache-browser-qt" do
  version "0.0.8"

  sha256 "e6176461626b9b9a52606e114a08a0de2ca30b8ad929e0b7c1cf411093efdada"

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
