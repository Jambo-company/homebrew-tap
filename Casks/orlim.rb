cask "orlim" do
  version "2.0,41"
  sha256 "b8b7256aec9e820d61c171e9e465095986f40c17be59751ca18964e6d3420c3d"

  url "https://github.com/Jambo-company/homebrew-tap/releases/download/orlim-v#{version.csv.first}/Orlim-#{version.csv.first}-mac-universal.dmg"
  name "Orlim"
  desc "Menu bar workstation for AI coding tools, usage limits, and system health"
  homepage "https://jambo.team/"

  depends_on macos: :ventura

  app "Orlim.app"

  zap trash: [
    "~/Library/Application Support/Orlim",
    "~/Library/Caches/com.jambolab.orlim",
    "~/Library/Group Containers/7732Q53565.group.com.jambolab.orlim",
    "~/Library/Preferences/com.jambolab.orlim.plist",
    "~/Library/Saved Application State/com.jambolab.orlim.savedState",
  ]
end
