cask "choochoo" do
  version "0.21.0"
  sha256 "5631b062e542c8d1403d6de39dc3cca983474f2b6e4e1bd9434eb55cc2bd2cbe"

  url "https://install.choochoo.cc/dl/v#{version}/ChooChoo_#{version}_aarch64.dmg"
  name "ChooChoo"
  desc "ChooChoo desktop app"
  homepage "https://choochoo.cc"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  auto_updates true

  app "ChooChoo.app"

  zap trash: [
    "~/.choochoo",
    "~/Library/Application Support/cc.choochoo.desktop",
    "~/Library/Caches/cc.choochoo.desktop",
    "~/Library/Logs/cc.choochoo.desktop",
    "~/Library/Preferences/cc.choochoo.desktop.plist",
    "~/Library/Saved Application State/cc.choochoo.desktop.savedState",
    "~/Library/WebKit/cc.choochoo.desktop",
  ]
end
