cask "lltexturecache-browser-qt" do
  version "0.7.3"
  sha256 "e7e327f0804b600376897e3af5bba4e6adbe4f2faad2d06303c7678f616b6973"

  url "https://github.com/furudean/lltexturecache-browser-qt/releases/download/v#{version}/lltexturecache-browser-qt-#{version}-macos-universal.zip"
  name "lltexturecache-browser-qt"
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/lltexturecache-browser-qt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "lltexturecache-browser-qt.app"

  zap trash: [
    "~/Library/Preferences/com.furudean.lltexturecache-browser-qt.plist",
    "~/Library/Saved Application State/com.furudean.lltexturecache-browser-qt.savedState",
  ]
end
