class Choochoo < Formula
  desc "ChooChoo CLI"
  homepage "https://choochoo.cc"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_darwin_arm64.tar.gz"
      sha256 "08c92ab6aa0a3deb10c956cd1f630ee2b8a7deaac7df55866dee8752d5ef94b2"
    end
    on_intel do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_darwin_amd64.tar.gz"
      sha256 "725af61f278a706b76b6c6dd230aac282c4593f8e6dad947dbcd71a661903c22"
    end
  end

  on_linux do
    on_arm do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_linux_arm64.tar.gz"
      sha256 "e1d3ae102a7bc659b66d9680096923f0d7f8d3295c1da64bfc708390ccaefb93"
    end
    on_intel do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_linux_amd64.tar.gz"
      sha256 "fba60da31b1107d7aabd831548a74c0e7936e09099c348c55286c47540963a90"
    end
  end

  def install
    bin.install "choochoo"
    man1.install "choochoo.1"
    bash_completion.install "completions/choochoo.bash" => "choochoo"
    zsh_completion.install "completions/_choochoo"
    fish_completion.install "completions/choochoo.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choochoo --version")
  end
end
