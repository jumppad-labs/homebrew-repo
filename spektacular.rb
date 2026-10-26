
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.29.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.29.0/spektacular_0.29.0_darwin_x86_64.zip"
    sha256 "a46a476e9361cbe0b00082f4395500222ed385a72d8513b72ca9132b0a90350b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.29.0/spektacular_0.29.0_darwin_arm64.zip"
    sha256 "2096f538cd411a5aeaed3f8e61724324c08b08ea58a81528aa6716408929b464"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.29.0/spektacular_0.29.0_linux_x86_64.tar.gz"
    sha256 "26d0588af3f2f27f92d51a93b6bf64305244ee9578b598bb8142554306566e76"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.29.0/spektacular_0.29.0_linux_arm64.tar.gz"
    sha256 "cb4745f06079834af1d3b61ca0008d36f1b27fe94088860c88461451261cd2f9"
  end

  def install
    bin.install "spektacular"
  end
end
