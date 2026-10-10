cask "texturefriend" do
  version "1.0.1"
  sha256 "052e551f403259e802500c4df7dbd566fce52638f9b428529848ae128129cf24"

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
