
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.5/spektacular_0.18.5_darwin_x86_64.zip"
    sha256 "4b46395363b8bb7092e32c0772ed52b2fb91f9665480c7b7fc90c0834c497513"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.5/spektacular_0.18.5_darwin_arm64.zip"
    sha256 "75ea3602a9a645d6e39e04a07f74a8eb3ac6740f4d9a67ba16d9ba61edfcfb90"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.5/spektacular_0.18.5_linux_x86_64.tar.gz"
    sha256 "9ec4d493aeb705362489ba4589c85849baa4fab2bcf5a8d71a8f55a778416ce3"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.5/spektacular_0.18.5_linux_arm64.tar.gz"
    sha256 "9a77f8a62e893585d4f03f5c7fedc349b23999b9337fc54350b412a46cf6eb78"
  end

  def install
    bin.install "spektacular"
  end
end
