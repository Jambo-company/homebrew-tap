cask "orlim" do
  version "2.0,47"
  sha256 "f9558c6eba1d99228426e077d23d832bcad8bee7509a52e01dc62e2e8268590a"

  url "https://github.com/Jambo-company/orlim-releases/releases/download/v#{version.csv.first}-#{version.csv.second}/Orlim-#{version.csv.first}-#{version.csv.second}-mac-universal.dmg",
      verified: "github.com/Jambo-company/orlim-releases/"
  name "Orlim"
  desc "Menu bar workstation for AI coding tools, usage limits, and system health"
  homepage "https://jambo.team/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

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
