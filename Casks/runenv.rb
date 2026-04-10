cask "runenv" do
  arch arm: "arm64"

  version "0.1.3"
  
  on_arm do
    sha256 "0b9fecbd82e4a6ff1630c9d2050dc30c3f098cb9a6d118ac54ee7f53a54e3787"
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
