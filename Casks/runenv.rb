cask "runenv" do
  version "0.1.6"
  sha256 "b7e52d50e91b0ef713c805c5393fa003b88e0b9762eb8e6999984363f8fd0088"

  url "https://github.com/Jambo-company/homebrew-tap/releases/download/v#{version}/RunEnv.Desktop-#{version}-mac-universal.dmg"
  
  name "RunEnv Desktop"
  desc "Enterprise-grade Secret Management Desktop Application"
  homepage "https://runenv.dev/"

  app "RunEnv Desktop.app"

  zap trash: [
    "~/Library/Application Support/RunEnv Desktop",
    "~/Library/Preferences/com.jambo.runenv.plist",
    "~/Library/Saved Application State/com.jambo.runenv.savedState",
  ]
end
