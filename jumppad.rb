# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.35"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.35/jumppad_0.5.35_darwin_x86_64.zip"
    sha256 "4b015884a0764fb0d209431b81348bd6656a92afdfd909b480a8383fe4c819eb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.35/jumppad_0.5.35_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.35/jumppad_0.5.35_linux_x86_64.tar.gz"
    sha256 "5fb04a5af55534ea5d21b763625eda82b6c7b9bf0f8ca0068a5aaa8b40f89a96"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.35/jumppad_0.5.35_linux_arm64.tar.gz"
    sha256 "b341210fcc2e10650fcd06c67d1bf35fb039d2a97c29723b642851f8291a620f"
  end

  def install
    bin.install "jumppad"
  end
end
