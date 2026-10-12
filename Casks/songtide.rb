cask "songtide" do
  version "1.1.21"
  sha256 "e0f05aaa22b1af38bd241db18115ad2dcf6d9364fc9834eb7f995cfc6f8ab1ff"

  url "https://songtide.dcoded.dev/releases/Songtide-#{version}.dmg"
  name "Songtide"
  desc "Native YouTube Music app with an equalizer, visualizer and lyrics"
  homepage "https://songtide.dcoded.dev/"

  livecheck do
    url "https://songtide.dcoded.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Songtide.app"

  zap trash: [
    "~/Library/Containers/dev.dcoded.songtide",
    "~/Library/Containers/dev.dcoded.songtide.widget",
    "~/Library/Group Containers/YQ9V6SFRL4.dev.dcoded.songtide",
  ]
end
