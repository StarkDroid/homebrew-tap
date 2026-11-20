# typed: strict
# frozen_string_literal: true

# Bento terminal.
class Bento < Formula
  desc "Full-screen terminal workspace for one project"
  homepage "https://starkdroid.github.io/Bento-Terminal/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.9.0/bento_darwin_arm64"
      sha256 "9b9c87e66460221e62437e91ec2e1904364e18ae3faa693b4c8205766f5f1062"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.9.0/bento_darwin_amd64"
      sha256 "3a46b859cc970fbaf38ba2a426fc24ad5c25d771de721f48e4e292b3f961e7e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.9.0/bento_linux_arm64"
      sha256 "7b1f57ecf640d11df089640c2cfb9e906a133024e880164327af98935f8c2c5f"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.9.0/bento_linux_amd64"
      sha256 "dd4b539a846af7f1eb23d6f46b47ed91bd663492fc9230616db230efdf15ad49"
    end
  end

  def install
    bin.install Dir["bento_*"].first => "bento"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bento --version")
  end
end
