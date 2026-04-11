cask "runenv" do
  arch arm: "arm64"

  version "0.1.5"
  
  on_arm do
    sha256 "0f023e30dfbd8e949827df05dc8fd91b94a845e877eb43fb520b62a333a398e8"
  end

  url "https://github.com/Jambo-company/homebrew-tap/releases/download/v#{version}/RunEnv.Desktop-#{version}-mac-#{arch}.dmg"
  
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
