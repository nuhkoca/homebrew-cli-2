# This file was generated by GoReleaser. DO NOT EDIT.
class Lokalise2 < Formula
  desc "Lokalise CLI v2"
  homepage "https://docs.lokalise.com/cli2"
  version "2.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.0/lokalise2_darwin_x86_64.tar.gz"
    sha256 "98c03c8cab02fb8bc7cb925c6070f2ca3feb368503ec6eabc3dae6547548b259"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.0/lokalise2_linux_x86_64.tar.gz"
      sha256 "bfb45039558b4b5729e59021d1ad16beacd58468c21cd8a0a6a199cf638b6ab4"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.0/lokalise2_linux_arm64.tar.gz"
        sha256 "f013df76758bd460b66ed19bb8ec8808d46311ea6b70952059375522e8db258d"
      else
        url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.0/lokalise2_linux_armv6.tar.gz"
        sha256 "e44575bc818c5267d00ace549c61cc015bc7af49ed364504f00595d1957ab986"
      end
    end
  end

  def install
    bin.install "lokalise2"
  end
end
