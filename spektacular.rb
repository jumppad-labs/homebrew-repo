
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.19.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.0/spektacular_0.19.0_darwin_x86_64.zip"
    sha256 "ce33c230c37c4db42a9d057740a8ee2c7d3e32853ee2033d481764052b396ef2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.0/spektacular_0.19.0_darwin_arm64.zip"
    sha256 "9b27aa7fda04241cc104d68c525360452723066cf564be2457f6ca22e4e4bd5e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.0/spektacular_0.19.0_linux_x86_64.tar.gz"
    sha256 "781bcc9ec03088cc71df13bfb15c7c7f175f902c990c8f4b323cb8a8951b4ba7"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.0/spektacular_0.19.0_linux_arm64.tar.gz"
    sha256 "27d7aac422ccd3d2d954a5be0be959dd5b70f10182631f7b0656fbe68a96b3d7"
  end

  def install
    bin.install "spektacular"
  end
end
