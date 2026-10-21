cask "songtide" do
  version "1.2.0"
  sha256 "e3d465c949db282dc7ea54402f6710e10f548e8c8e2865ab689c057b628fd7f5"

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
