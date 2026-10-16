cask "orlim" do
  version "1.0"
  sha256 "c0ad318bc0f1e08e313cc204dd5550838331e8f4c124fcd0026b7012ab7cc7bc"

  url "https://github.com/Jambo-company/homebrew-tap/releases/download/orlim-v#{version}/Orlim-#{version}-mac-universal.dmg"
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
