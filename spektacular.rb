
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.28.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.28.0/spektacular_0.28.0_darwin_x86_64.zip"
    sha256 "2d2788df9bad2ed2b71ddf20f6329915aaf178ef46ffa13ed6b704ed403b631a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.28.0/spektacular_0.28.0_darwin_arm64.zip"
    sha256 "8d91543cd84eb4960b64b05e0443d48f1b1297d59edad0245b7b220431e1ee91"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.28.0/spektacular_0.28.0_linux_x86_64.tar.gz"
    sha256 "191e0e21855ccab7ae4e81ca65758f34eea20c24b1ac3aa083955fe06e412828"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.28.0/spektacular_0.28.0_linux_arm64.tar.gz"
    sha256 "7420ee7e0d95cc0983806aded9dba139f94f648be96a56a520f37b717f6aea73"
  end

  def install
    bin.install "spektacular"
  end
end
