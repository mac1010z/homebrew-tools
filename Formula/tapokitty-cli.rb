class TapokittyCli < Formula
  include Language::Python::Virtualenv

  desc "Control Tapo cameras from the terminal (Kitty graphics)"
  homepage "https://github.com/mac1010z/tapokitty-cli"
  url "https://github.com/mac1010z/tapokitty-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2b7074b8520c73a50e11ba8aaee3e5d692f1b8479de2ae3f6b436b8ab04ff7eb"
  license "MIT"

  depends_on "python@3.13"
  depends_on "ffmpeg"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset_normalizer/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "pycryptodome" do
    url "https://files.pythonhosted.org/packages/source/p/pycryptodome/pycryptodome-3.23.0.tar.gz"
    sha256 "447700a657182d60338bab09fdb27518f8856aecd80ae4c6bdddb67ff5da44ef"
  end

  resource "pytapo" do
    url "https://files.pythonhosted.org/packages/source/p/pytapo/pytapo-3.3.30.tar.gz"
    sha256 "cd27837860ffefc6c8a0a9ba07c04de2a5901358af360caf9eb1ad82c7a43373"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.33.1.tar.gz"
    sha256 "18817f8c57c6263968bc123d237e3b8b08ac046f5456bd1e307ee8f4250d3517"
  end

  resource "rtp" do
    url "https://files.pythonhosted.org/packages/source/r/rtp/rtp-0.0.3.tar.gz"
    sha256 "239937b85e6548b0dd0968c11100b8925d9d5b200a707109218c2a9c4bc90c12"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/tapokitty --help")
  end
end
