cask "orlim" do
  version "2.0,31"
  sha256 "6ee077d06401766dcb399bc5c5e0dd491b9c9ef07b8b09e7d2f804e4a5bb404e"

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
