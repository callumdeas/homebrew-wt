class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.5.2.tgz"
    sha256 "ddd9dedee7cafe827ba26b5d1b3aea12c314a64b114cfeec0a410ba41da133e6"
    license "MIT"

    depends_on "node"

    def install
        system "npm", "install", "--omit=dev", "--ignore-scripts"
        libexec.install Dir["*"]
        chmod 0755, libexec/"dist/cli.js"
        bin.install_symlink libexec/"dist/cli.js" => "wt"
    end

    test do
        assert_match(/Usage: wt/, shell_output("#{bin}/wt --help"))
    end
end
