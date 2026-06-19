
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.11.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.0/spektacular_0.11.0_darwin_x86_64.zip"
    sha256 "f12f7d9934f3e504d2857426caf06bf69c2f47a470c873f93ed2e405abfa0395"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.0/spektacular_0.11.0_darwin_arm64.zip"
    sha256 "f5f438a143787c0a3b9d757664898b0c7a91f94d4fc27c24752378a58589776a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.0/spektacular_0.11.0_linux_x86_64.tar.gz"
    sha256 "164a2497ecb4f3944ff767913665510aa658c273740a4509c270e622c4275050"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.0/spektacular_0.11.0_linux_arm64.tar.gz"
    sha256 "c6cfc9edbff69871094968b9d4bee4c2be1d7d69c104ac11b555d2378297c818"
  end

  def install
    bin.install "spektacular"
  end
end
