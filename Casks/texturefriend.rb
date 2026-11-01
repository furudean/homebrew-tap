cask "texturefriend" do
  version "1.2.0"
  sha256 "20dc7db2646bdbe0aea5a1370e8f5f77032480581b31d54fea520f566d535f21"

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
