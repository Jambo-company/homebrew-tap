cask "orlim" do
  version "1.0"
  sha256 "9a893596de3a02621ca5e1761a660221384b61acece6b296bd10e59f834a26a7"

  url "https://github.com/Jambo-company/homebrew-tap/releases/download/orlim-v#{version}/Orlim-#{version}-mac-universal.dmg"
  name "Orlim"
  desc "Menu bar workstation for AI coding tools, usage limits, and system health"
  homepage "https://jambo.team/"

  depends_on macos: ">= :ventura"

  app "Orlim.app"

  zap trash: [
    "~/Library/Application Support/Orlim",
    "~/Library/Caches/com.jambolab.orlim",
    "~/Library/Group Containers/7732Q53565.group.com.jambolab.orlim",
    "~/Library/Preferences/com.jambolab.orlim.plist",
    "~/Library/Saved Application State/com.jambolab.orlim.savedState",
  ]
end
