# typed: strict
# frozen_string_literal: true

# Bento terminal.
class Bento < Formula
  desc "Full-screen terminal workspace for one project"
  homepage "https://starkdroid.github.io/Bento-Terminal/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.5.0/bento_darwin_arm64"
      sha256 "ee177c6946853a9d88f7dc410aacdd911f5573829152e971bb2f3d6ea35539e3"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.5.0/bento_darwin_amd64"
      sha256 "6e954cafd8b62ca2278ea93f1acac43d1a1634a337733c8a54e66318f611a27b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.5.0/bento_linux_arm64"
      sha256 "b1bd84c6e9235f49b62bb0a1c17f3cd6ffedb22458c007e884d2c9d5e9dfd2f6"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.5.0/bento_linux_amd64"
      sha256 "3ba87aa924a60c911cfb2011ab1f936f9a37360d5fa8a2d2cf0f44b97b012b67"
    end
  end

  def install
    bin.install Dir["bento_*"].first => "bento"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bento --version")
  end
end
