
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.5.0/spektacular_0.5.0_darwin_x86_64.zip"
    sha256 "f260bd928ff96ad43f9a5af16f5e6f8ecfe3f85af255d8851ceb99e9eacad39e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.5.0/spektacular_0.5.0_darwin_arm64.zip"
    sha256 "292311201eb8ceda2d520bf65648086e264960c7c67430aa99996a6d76d9e18d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.5.0/spektacular_0.5.0_linux_x86_64.tar.gz"
    sha256 "8457a2f671cd94f9290e967095836dc62d76dc7225ecffe30848987c61f24aad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.5.0/spektacular_0.5.0_linux_arm64.tar.gz"
    sha256 "74c85f49798631450d8b4c6f2166d7680db9d5eadf5665f25aee477a9edbbbb6"
  end

  def install
    bin.install "spektacular"
  end
end
