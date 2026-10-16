cask "orlim" do
  version "1.0"
  sha256 "7051910ce4f7c0e86053aeaf08611007c7c8d69e0693f3246ed7aea31cd19642"

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
