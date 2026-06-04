
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.7.0/spektacular_0.7.0_darwin_x86_64.zip"
    sha256 "fc6de24c3f65cf0fd2f41dd05d3c9e7cfbc666610aeb47cfc3f6a19c4e5bc090"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.7.0/spektacular_0.7.0_darwin_arm64.zip"
    sha256 "60c4a1e8361f5d67cb8cdd32d2008bfd23bcce529cb5f6b94cb9d12aef712d7c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.7.0/spektacular_0.7.0_linux_x86_64.tar.gz"
    sha256 "99a2986660d5b3bcc5317dff7c5a698dacf2fba2576f40ddcf55b9477a28bb45"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.7.0/spektacular_0.7.0_linux_arm64.tar.gz"
    sha256 "392752d3f61ae45069edcfb71850f891c64f0050366892ce77420385804f6417"
  end

  def install
    bin.install "spektacular"
  end
end
