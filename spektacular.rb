
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.15.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.2/spektacular_0.15.2_darwin_x86_64.zip"
    sha256 "06ef5473e6c147a6dbc765e9431a71fd72f202d07bef82b5f3ab53d41db06241"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.2/spektacular_0.15.2_darwin_arm64.zip"
    sha256 "15388a3863b8c84f5c6b8380ca7c7219a67c8bc1028d30c4bc311e788b4fc0b5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.2/spektacular_0.15.2_linux_x86_64.tar.gz"
    sha256 "d65686a6474af352092775b22dec610e8c95a8ac028a74da2f41c77266066e54"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.2/spektacular_0.15.2_linux_arm64.tar.gz"
    sha256 "8aba7414e59cd19ac175669276b6d92a40f8a5d71b358fd5e3c7b00bdbd6e47b"
  end

  def install
    bin.install "spektacular"
  end
end
