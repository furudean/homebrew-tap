cask "texturefriend" do
  version "1.1.0"
  sha256 "29c17dc43223587e69f3cb7e6dc6db9214a6e32e4a931528dcc5737405fbb61c"

  url "https://github.com/furudean/texturefriend/releases/download/v#{version}/texturefriend-#{version}-macos-universal.zip"
  name "TextureFriend"
  desc "Browse and export textures from the Second Life texture cache"
  homepage "https://github.com/furudean/texturefriend"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "texturefriend.app"

  zap trash: [
    "~/Library/Preferences/com.furudean.texturefriend.plist",
    "~/Library/Preferences/com.paisley-softworks.texturefriend.plist",
    "~/Library/Saved Application State/com.furudean.texturefriend.savedState",
  ]
end
