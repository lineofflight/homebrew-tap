cask "canape" do
  version "0.7.0"
  sha256 "fa746276f9e7a379e9579b56468444490c22336d2f76af2718528fda89c8ab42"

  url "https://cana.pe/cli/canape-#{version}.zip"
  name "Canape CLI"
  desc "Command-line tool and MCP server for Canape, a personal reference library"
  homepage "https://cana.pe/"

  livecheck do
    url "https://cana.pe/cli/releases.json"
    strategy :json do |json|
      json["releases"]&.first&.dig("version")
    end
  end

  depends_on macos: :sequoia

  binary "CanapeCLI.app/Contents/MacOS/canape"
end
