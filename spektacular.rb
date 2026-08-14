
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.0/spektacular_0.18.0_darwin_x86_64.zip"
    sha256 "9112e79eda70db3120154885fbce260f7f84de67b46625f25f7d534baa0fa3bc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.0/spektacular_0.18.0_darwin_arm64.zip"
    sha256 "3b26ac7b784b5f8f5b17bc455cbf22550aacac77c55af9574f90ff00b46392f7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.0/spektacular_0.18.0_linux_x86_64.tar.gz"
    sha256 "e2912a4dda2957e580822a17021150e13e0e1c42c33305b704a0542811c3f165"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.0/spektacular_0.18.0_linux_arm64.tar.gz"
    sha256 "26b22bc19cc560c9ea13be57d9c67e9a43ccb33c8ba28cd0733602aafedf36b8"
  end

  def install
    bin.install "spektacular"
  end
end
