cask "canape" do
  version "0.6.0"
  sha256 "00bcb7ce135e79d031b563325f2b1de595304e6860f04447336850f9ee56a151"

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
