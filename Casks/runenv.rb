cask "runenv" do
  arch arm: "arm64"

  version "0.1.4"
  
  on_arm do
    sha256 "74aafa26f7a61b3f4e72a7d185bdc9e83152059b7ea1219ab0d61663616b9dcc"
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
