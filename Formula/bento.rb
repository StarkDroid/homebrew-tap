# typed: strict
# frozen_string_literal: true

# Bento terminal.
class Bento < Formula
  desc "Full-screen terminal workspace for one project"
  homepage "https://starkdroid.github.io/Bento-Terminal/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.0/bento_darwin_arm64"
      sha256 "904266fcfc3721037c87f88c518c18056b28d16489c96b89d445e000ca194086"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.0/bento_darwin_amd64"
      sha256 "9c707c69174f648a4625050103396d6277b4f1af93f382fc1bedc46389514578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.0/bento_linux_arm64"
      sha256 "097f34799a86895ce788a3d11fab6a04f89109776ff45f21d3a1df3f5fd10bc4"
    end

    on_intel do
      url "https://github.com/StarkDroid/Bento-Terminal/releases/download/v0.8.0/bento_linux_amd64"
      sha256 "679c8019726b3a031e12e2b3ef5f144ebbf1c1bece154dbb97804fa2ea84a7d5"
    end
  end

  def install
    bin.install Dir["bento_*"].first => "bento"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bento --version")
  end
end
