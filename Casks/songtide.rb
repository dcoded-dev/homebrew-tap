cask "songtide" do
  version "1.1.20"
  sha256 "bf78b7cf1b03a1ea191ce178b7878edd3918e2e819ac8750aae02f25036aa848"

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
