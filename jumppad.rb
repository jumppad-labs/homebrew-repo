# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.42"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.42/jumppad_0.5.42_darwin_x86_64.zip"
    sha256 "78d04fb8e7ef1bba5abeb8b62dab602493131653e17a3c0fe383f93503cc10f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.42/jumppad_0.5.42_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.42/jumppad_0.5.42_linux_x86_64.tar.gz"
    sha256 "660b27f04bd53871c2ea98f899cd1feb951173fcae4dc858beb890eb24ffb6cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.42/jumppad_0.5.42_linux_arm64.tar.gz"
    sha256 "2c7410bd5dee0981fe9a4e6d601246aae67caacd94a227c0e90ca864ecfc4b4b"
  end

  def install
    bin.install "jumppad"
  end
end
