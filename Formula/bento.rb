# typed: strict
# frozen_string_literal: true

# Bento terminal.
class Bento < Formula
  desc "Full-screen terminal workspace for one project"
  homepage "https://starkdroid.github.io/Bento-Terminal/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.7.0/bento_darwin_arm64"
      sha256 "aa93412166dfdd2bfde765a98c830634cf71313929417fa5a2f73c87848b7490"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.7.0/bento_darwin_amd64"
      sha256 "42f47b3c4ed2d6e9b13903a36fe5e1cfb5610f179cabd3d805d3fd5ca6188361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.7.0/bento_linux_arm64"
      sha256 "27db28908f86f5838dd0bc0535f272ee2340b5d3d9162a89d92cfb9d86533c75"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.7.0/bento_linux_amd64"
      sha256 "c88a5e9db4791965bbde6269f2c7081817ca014e1c1ee15560652a381fdd9f55"
    end
  end

  def install
    bin.install Dir["bento_*"].first => "bento"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bento --version")
  end
end
