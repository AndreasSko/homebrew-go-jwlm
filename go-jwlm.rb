# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJwlm < Formula
  desc ""
  homepage "https://github.com/AndreasSko/go-jwlm"
  version "0.5.7-beta"

  on_macos do
    url "https://github.com/AndreasSko/go-jwlm/releases/download/0.5.7-beta/go-jwlm_0.5.7-beta_darwin_amd64.tar.gz"
    sha256 "46198850e5a30522b70efaa08f74c44c3787914d287d487796d0bf7f21140d9f"

    def install
      bin.install "go-jwlm"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the GoJwlm
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/AndreasSko/go-jwlm/releases/download/0.5.7-beta/go-jwlm_0.5.7-beta_linux_arm64.tar.gz"
      sha256 "a3dc4c9178f897eea082d11b50306bffdd80d237ffa92cf7d6787d0635a392ce"

      def install
        bin.install "go-jwlm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/AndreasSko/go-jwlm/releases/download/0.5.7-beta/go-jwlm_0.5.7-beta_linux_amd64.tar.gz"
      sha256 "148617337e534b34e78124f9abf2e3efe717d779ccd147449a4c35f61579885f"

      def install
        bin.install "go-jwlm"
      end
    end
  end
end
