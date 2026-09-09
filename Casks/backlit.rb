cask "backlit" do
  version "0.5.0"
  sha256 "683051525f04c9b4c67aec47af9ec398e7180f2cffdca7623d743c46d76853e1"

  url "https://github.com/ludos1978/Backlit/releases/download/v#{version}/Backlit-#{version}.zip"
  name "Backlit"
  desc "Free display manager: brightness, gamma, XDR, HiDPI and virtual displays"
  homepage "https://github.com/ludos1978/Backlit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Backlit.app"

  caveats <<~EOS
    Backlit is ad-hoc signed and not notarized, so macOS will refuse to open
    it ("cannot be opened because the developer cannot be verified") until the
    quarantine attribute is removed once:

      xattr -d com.apple.quarantine "#{appdir}/Backlit.app"

    Repeat this after every upgrade.
  EOS

  zap trash: [
    "~/Library/Application Support/Backlit",
    "~/Library/Preferences/io.github.ludos1978.backlit.plist",
  ]
end
