cask "orlim" do
  version "1.0"
  sha256 "7fc69f48e8edc8bca15aadff492218096d78a04e6dd2e80b0c7924c729432eeb"

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
