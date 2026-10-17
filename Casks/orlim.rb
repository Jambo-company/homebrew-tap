cask "orlim" do
  version "1.0,29"
  sha256 "3a6e392ad614020af7b5062f9ce7617c7395e4476298836f11e50c10ff80cdd4"

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
