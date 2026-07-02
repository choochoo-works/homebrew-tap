cask "choochoo" do
  version "0.23.6"

  on_arm do
    sha256 "905fb8648e8b4b65063a72da06591e5e931cc5bcbf2a90dbc74c2abcbdc08f08"

    url "https://install.choochoo.cc/dl/desktop/v#{version}/ChooChoo_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "87e12694627138a4f306974ded6f1b0ab61318b935ae73f49daef1684e4c9c81"

    url "https://install.choochoo.cc/dl/desktop/v#{version}/ChooChoo_#{version}_x64.dmg"
  end

  name "ChooChoo"
  desc "Desktop app"
  homepage "https://choochoo.cc/"

  livecheck do
    skip "Self-updates via built-in Tauri updater"
  end

  auto_updates true
  depends_on macos: :big_sur

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
