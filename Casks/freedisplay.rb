cask "freedisplay" do
  version "0.3.0"
  sha256 "ea144a992f37faeca5eb16c2ec944f76360a1e0ae4593f5da7e431db10f3d693"

  url "https://github.com/ludos1978/FreeDisplay/releases/download/v#{version}/FreeDisplay-#{version}.zip"
  name "FreeDisplay"
  desc "Free display manager: brightness, gamma, XDR, HiDPI and virtual displays"
  homepage "https://github.com/ludos1978/FreeDisplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FreeDisplay.app"

  caveats <<~EOS
    FreeDisplay is ad-hoc signed and not notarized, so macOS will refuse to open
    it ("cannot be opened because the developer cannot be verified") until the
    quarantine attribute is removed once:

      xattr -d com.apple.quarantine "#{appdir}/FreeDisplay.app"

    Repeat this after every upgrade.
  EOS

  zap trash: [
    "~/Library/Application Support/FreeDisplay",
    "~/Library/Preferences/com.freedisplay.app.plist",
  ]
end
