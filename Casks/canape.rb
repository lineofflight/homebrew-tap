cask "canape" do
  version "0.3.0"
  sha256 "6fa28cfbd985130fea4d4bbbcb09f9a208c093386fd22dcba1f13e9a2a501527"

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
