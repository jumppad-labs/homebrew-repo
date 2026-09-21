
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.20.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.20.0/spektacular_0.20.0_darwin_x86_64.zip"
    sha256 "05e8e630d1b9ddab75c8d41bae878c0c72e3d8eb84149da646853b6ff14d342a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.20.0/spektacular_0.20.0_darwin_arm64.zip"
    sha256 "ed8481c94b5208581811d55686174cbb7b542025db8d8692057391f98474c8df"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.20.0/spektacular_0.20.0_linux_x86_64.tar.gz"
    sha256 "657eb177982dc6447cda3d8811a6bdeede752e86a88335f68b744a2626334ac0"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.20.0/spektacular_0.20.0_linux_arm64.tar.gz"
    sha256 "37b41331969de258318405a688ae69d7b97da8c794e1ff991fb8dcacf1056b64"
  end

  def install
    bin.install "spektacular"
  end
end
