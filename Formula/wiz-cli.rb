class WizCli < Formula
  include Language::Python::Virtualenv

  desc "Control WiZ smart lights from the terminal"
  homepage "https://github.com/mac1010z/wiz-cli"
  url "https://github.com/mac1010z/wiz-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2a4ab501566e30081442663b5aa1d1f063c99a181edf4b32f6cd40eb588c61c9"
  license "MIT"

  depends_on "python@3.13"

  resource "pywizlight" do
    url "https://files.pythonhosted.org/packages/source/p/pywizlight/pywizlight-0.6.3.tar.gz"
    sha256 "75da1bbae321cd58656933e8c7fa035d0cb01926ea6ff393e5d5e832a48f9d86"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/wiz --help")
  end
end
