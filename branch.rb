# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Branch < Formula
    desc "Branch is a small CLI tool to automatically create git branches based on tickets"
    homepage "https://github.com/MaikelVeen/branch"
    url "https://github.com/MaikelVeen/branch/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "0765eb2bfb7b6be0d5ae09f4b17ce9adaa9b823de2c71dcc0ae81e906e55ea88"
    license "MIT"

    # depends_on "cmake" => :build
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w"), "./main.go"
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test branch`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  