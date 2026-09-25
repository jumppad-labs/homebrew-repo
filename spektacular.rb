
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.23.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.23.0/spektacular_0.23.0_darwin_x86_64.zip"
    sha256 "9005efcb91ebf3a9b19083edc4c1d0f1e4f4b66c994b476ff17abcc45ab3081c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.23.0/spektacular_0.23.0_darwin_arm64.zip"
    sha256 "76e2fe1181fa71b7e853645a06610e94bdcc9cab3742342113eb7a704aa79664"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.23.0/spektacular_0.23.0_linux_x86_64.tar.gz"
    sha256 "208a583b2d9867afd98977e4d120f1a271c131beaaff3c8f8ec9b2b14c8ba465"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.23.0/spektacular_0.23.0_linux_arm64.tar.gz"
    sha256 "789a8ea2e34f6b67a11629033d9f0d88ddb5146bdf4200b3e4a1ff90213a6a15"
  end

  def install
    bin.install "spektacular"
  end
end
