
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.22.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.22.0/spektacular_0.22.0_darwin_x86_64.zip"
    sha256 "d51e3705ed8a205cc652265a4d0f5ab0c0799a82dd90ba4e7cc7af298ec468c6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.22.0/spektacular_0.22.0_darwin_arm64.zip"
    sha256 "81b5c5134c58b907d27670bc2de3f491b2a2cd999c469efcc6ce7130012538dd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.22.0/spektacular_0.22.0_linux_x86_64.tar.gz"
    sha256 "b244e9f3eae24763ca83d75e642c67aae6b62282c419ca94431a24ffbee65732"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.22.0/spektacular_0.22.0_linux_arm64.tar.gz"
    sha256 "31b5d6816092f7ba86336efa55207aa3a03b367ea699e75594392505c9da6420"
  end

  def install
    bin.install "spektacular"
  end
end
