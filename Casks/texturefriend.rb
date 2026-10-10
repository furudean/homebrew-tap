cask "texturefriend" do
  version "0.7.3"
  sha256 "e7e327f0804b600376897e3af5bba4e6adbe4f2faad2d06303c7678f616b6973"

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
