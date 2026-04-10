cask "runenv" do
  arch arm: "arm64"

  version "0.1.0"
  
  on_arm do
    sha256 "cbc2f8cc446a7f152a60f37f4af9285f166fac4203ba4b45ba01feb32a513841"
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
