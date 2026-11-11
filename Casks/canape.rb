cask "canape" do
  version "0.5.0"
  sha256 "982600110ecf9ad92a433cd7f08c3961d1a423ee2e2f40b5b3ae4b9b3a5f15f4"

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
