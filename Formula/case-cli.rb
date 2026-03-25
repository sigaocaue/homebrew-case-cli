# Homebrew formula for case-cli

class CaseCli < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool for converting strings between case styles"
  homepage "https://github.com/sigaocaue/case-cli"
  url "https://files.pythonhosted.org/packages/source/c/case-cli/case_cli-0.1.1.tar.gz"
  sha256 "3e26356488105f994ee1389e34317941163674ba2c2398c8e8e8f1df79c7e12d"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    bash_completion.install buildpath/"case_cli/completions/case-cli.bash" => "case-cli"
    zsh_completion.install buildpath/"case_cli/completions/case-cli.zsh" => "_case-cli"
  end

  test do
    assert_equal "hello_world", shell_output("#{bin}/case-cli 'hello world' --case=snake").strip
  end
end
