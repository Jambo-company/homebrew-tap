cask "orlim" do
  version "1.0,25"
  sha256 "aeb513466296bbec8f3349f16d64e51920f44cf2a4f50b7355ed41312ae9084d"

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
