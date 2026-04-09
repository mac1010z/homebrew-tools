class WizCli < Formula
  include Language::Python::Virtualenv

  desc "Control WiZ smart lights from the terminal"
  homepage "https://github.com/mac1010z/wiz-cli"
  url "https://github.com/mac1010z/wiz-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 ""  # Update after first release
  license "MIT"

  depends_on "python@3.13"

  resource "pywizlight" do
    url "https://files.pythonhosted.org/packages/source/p/pywizlight/pywizlight-0.6.3.tar.gz"
    sha256 ""  # Update with actual hash
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/wiz --help")
  end
end
