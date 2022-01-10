# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJwlm < Formula
  desc ""
  homepage "https://github.com/AndreasSko/go-jwlm"
  version "0.4.1-beta"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AndreasSko/go-jwlm/releases/download/0.4.1-beta/go-jwlm_0.4.1-beta_macOS_64bit.tar.gz"
      sha256 "e00a2696bc62ecac29a10cc40c7d3bf633949233061142ce2321030d0e32c71b"

      def install
        bin.install "go-jwlm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AndreasSko/go-jwlm/releases/download/0.4.1-beta/go-jwlm_0.4.1-beta_Linux_64bit.tar.gz"
      sha256 "759a2ba3d385d8b84d0bb4b70a69029519f9523fb51b79230bf7605377c79680"

      def install
        bin.install "go-jwlm"
      end
    end
  end
end
