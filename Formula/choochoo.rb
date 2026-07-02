class Choochoo < Formula
  desc "Evaluate and optimize AI coding agents"
  homepage "https://choochoo.cc"
  version "0.23.6"

  on_macos do
    on_arm do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_darwin_arm64.tar.gz"
      sha256 "843d7bcbe7f77ee16f7728b909cfc7fd1b64f076d14a7cf410ca69395c35ae07"
    end
    on_intel do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_darwin_amd64.tar.gz"
      sha256 "0d076c70ae731aef4fa0ddd122df95e0e9879f25259c08747c42264b1af19501"
    end
  end

  on_linux do
    on_arm do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_linux_arm64.tar.gz"
      sha256 "ae3100eb9086470bcf65aa473aba19b8b27f2cffcec9b777995f16979cf7ad8f"
    end
    on_intel do
      url "https://install.choochoo.cc/dl/v#{version}/choochoo_#{version}_linux_amd64.tar.gz"
      sha256 "fbb0c927d324aa095e51afde6a680abcbd86ec1944e2321c468433b2bc319b5e"
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
