cask "runenv" do
  arch arm: "arm64"

  version "0.1.5"
  
  on_arm do
    sha256 "f37b74cebb8ea4a852a6e350ec19262e405330b0231a5ea05aabb9c3940114a9"
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
