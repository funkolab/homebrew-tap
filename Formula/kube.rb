# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kube < Formula
  desc "CLI tools to manage your kubeconfig file !"
  homepage "https://github.com/funkolab/kube"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/funkolab/kube/releases/download/v0.1.2/kube_v0.1.2_darwin_amd64.tar.gz"
      sha256 "fd137ba3c176761bf4f491f4c3d55228e384977056083f355ca7eaf08d5131f6"

      def install
        bin.install "kube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/funkolab/kube/releases/download/v0.1.2/kube_v0.1.2_darwin_arm64.tar.gz"
      sha256 "a8c47dbe3bb2190898e76e187e85ba34948f2e2f8c7104ab723e0ea69563ba76"

      def install
        bin.install "kube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/funkolab/kube/releases/download/v0.1.2/kube_v0.1.2_linux_amd64.tar.gz"
      sha256 "ab505d474e0eb848fab0a33e504798831824ae951f3a19a655bca5c6fa785894"

      def install
        bin.install "kube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/funkolab/kube/releases/download/v0.1.2/kube_v0.1.2_linux_arm64.tar.gz"
      sha256 "526868a6b94c7949303fc35b0a66f36e83d224fd6c501a0aba8af2beffbdc181"

      def install
        bin.install "kube"
      end
    end
  end

  test do
    system "kube -h"
  end
end
