cask "runenv" do
  version "0.1.11"
  sha256 "e7efaa848ec28364192382d437cf472565a36c09a78e60f1ece5cb6218417138"

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
