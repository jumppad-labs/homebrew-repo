
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.30.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.30.0/spektacular_0.30.0_darwin_x86_64.zip"
    sha256 "f2a31bd66d5e74655abe0e286985a07545289e1cc1298394b9a2d2997b1b0af2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.30.0/spektacular_0.30.0_darwin_arm64.zip"
    sha256 "3c4b567b33417d7dd5110c2aec8f24d22776e19c651fa57a81280e1fa03a3138"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.30.0/spektacular_0.30.0_linux_x86_64.tar.gz"
    sha256 "7069a81e7945b521b053eaec91b5660b58863e1175e3ba2fdf60ebcd701c1171"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.30.0/spektacular_0.30.0_linux_arm64.tar.gz"
    sha256 "dd365f3fb8fbb89f3872785600f00d629ebe22474eae48c3fc0410db3fa56b3d"
  end

  def install
    bin.install "spektacular"
  end
end
