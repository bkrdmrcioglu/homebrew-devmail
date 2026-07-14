cask "devmail" do
  version "0.2.3"
  sha256 "4a7936dae6956274d0a125e3bf6c7764442b2ebb7869942c36d301c6192e4690"

  url "https://github.com/bkrdmrcioglu/devmail-site/releases/download/v0.2.3/DevMail-0.2.3.zip"
  name "DevMail"
  desc "Part of DevSuites — see https://devsuites.dev/devmail/"
  homepage "https://devsuites.dev/devmail/"

  depends_on macos: :sonoma

  app "DevMail.app"

  zap trash: [
    "~/Library/Preferences/com.devmail.app.plist",
    "~/Library/Application Support/DevMail",
  ]
end
