cask "orlim" do
  version "1.0,24"
  sha256 "aeca8fd6fc604e97fddf6704b931c9269b4e9feb6f6bd30559006c41c72fa536"

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
