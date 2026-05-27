
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.4.0/spektacular_0.4.0_darwin_x86_64.zip"
    sha256 "adfd342e10469072bd24d9444919d478c11efdd08e9d237cb44667237050b244"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.4.0/spektacular_0.4.0_darwin_arm64.zip"
    sha256 "d778f769462ca3603b408b67999f0527d9ef7181c3c0023cf24f31eecccbf84e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.4.0/spektacular_0.4.0_linux_x86_64.tar.gz"
    sha256 "45de7a8e94a8e3ed605b20ae97859187978a1ae127a819b2e5a3c9150a073fd9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.4.0/spektacular_0.4.0_linux_arm64.tar.gz"
    sha256 "fb085ce19a33da788717ac25f513c494612ce34954d326609587cf38e5cc2070"
  end

  def install
    bin.install "spektacular"
  end
end
