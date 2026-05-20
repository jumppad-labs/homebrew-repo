
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.3.0/spektacular_0.3.0_darwin_x86_64.zip"
    sha256 "dc0a846e340fe717df28cb58828f1cf4a805a06316f348b5e21a5bb8bc2ee252"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.3.0/spektacular_0.3.0_darwin_arm64.zip"
    sha256 "5bc224f46a347642b849c6c005b6be0408355116fe01e4c99f93df212b90fff9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.3.0/spektacular_0.3.0_linux_x86_64.tar.gz"
    sha256 "461962f6d0cabf131e04090f6febc5d25f04894b31651092668fc32291dd9eed"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.3.0/spektacular_0.3.0_linux_arm64.tar.gz"
    sha256 "f9c58aedeb580f42bc5def0255967425244a88ff9a674bfbdc0abe346fe0dbf7"
  end

  def install
    bin.install "spektacular"
  end
end
