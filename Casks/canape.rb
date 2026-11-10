cask "canape" do
  version "0.4.0"
  sha256 "04fb580aa925e59a71426c48d1fc95e033863ac8de919e09c9c17a84915ebcf0"

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
