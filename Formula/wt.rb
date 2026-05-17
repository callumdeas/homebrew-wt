class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/wtree/-/wtree-0.0.0.tgz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    license "MIT"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    test do
        assert_match(/Usage: wt/, shell_output("#{bin}/wt --help"))
    end
end
