
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.26.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.26.0/spektacular_0.26.0_darwin_x86_64.zip"
    sha256 "9a5c4d4bfa7687b1881a06a594598bf5d3e16bc6fdf70ba7a3380a9cb2bbe0ab"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.26.0/spektacular_0.26.0_darwin_arm64.zip"
    sha256 "a041b14b058e2d41793a08d0a5bdaabeb6a1eae842ad91c5c132fa39de3d642a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.26.0/spektacular_0.26.0_linux_x86_64.tar.gz"
    sha256 "afd394cf3d176655e62bbba322fc5fcaf53b713ebec9bd541b15368851eb73e1"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.26.0/spektacular_0.26.0_linux_arm64.tar.gz"
    sha256 "7b3038718c01c10649efe1ee6ba0a1d883ec2c4f36986d14efadce79f2047f61"
  end

  def install
    bin.install "spektacular"
  end
end
