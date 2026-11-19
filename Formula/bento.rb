# typed: strict
# frozen_string_literal: true

# Bento terminal.
class Bento < Formula
  desc "Full-screen terminal workspace for one project"
  homepage "https://starkdroid.github.io/Bento-Terminal/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.1/bento_darwin_arm64"
      sha256 "0cfd8024e974ca1b5517ce31c6138aa0feb8f71e4a032fb093f447598b78485d"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.1/bento_darwin_amd64"
      sha256 "903d2b5bddbece6885e8f360da313c41aad6d6688bd15931d4a6c89cd45d0ba2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.1/bento_linux_arm64"
      sha256 "f74bfc53e392d7d34f26a105c45ac4c96ad5b381d02b9378910ae9425b454aeb"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.1/bento_linux_amd64"
      sha256 "236f79afdfabaac61de385841ddf0b1902f3e222dcc18f238adb5314eb9e190b"
    end
  end

  def install
    bin.install Dir["bento_*"].first => "bento"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bento --version")
  end
end
