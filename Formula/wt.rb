class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.1.0.tgz"
    sha256 "8da3b8fa2b148f3674afefbe28803aa0ccd587f3dc54a24a931efd8c25bcc0b2"
    license "MIT"

    depends_on "node"

    def install
        system "npm", "install", "--prefix", libexec, "--production"
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    test do
        assert_match(/Usage: wt/, shell_output("#{bin}/wt --help"))
    end
end
