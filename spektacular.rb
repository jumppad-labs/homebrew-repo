
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.6.0/spektacular_0.6.0_darwin_x86_64.zip"
    sha256 "b44b07fa006104b26b06ff5b82e8b72b272ed9d58f004a8b2c6b3f544a66f823"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.6.0/spektacular_0.6.0_darwin_arm64.zip"
    sha256 "62e7356b253b49b50ebcf256ff0eac70c68a4986ac97d0fa592ecf022955e597"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.6.0/spektacular_0.6.0_linux_x86_64.tar.gz"
    sha256 "b4f8bc389659d62dc1dd0217df5e2a0f784e2379e849451ca40d9bd47e107b34"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.6.0/spektacular_0.6.0_linux_arm64.tar.gz"
    sha256 "44a6e5689ba68c72fd45461dfe8458802e675b582645746aff50f34e9186ca5e"
  end

  def install
    bin.install "spektacular"
  end
end
