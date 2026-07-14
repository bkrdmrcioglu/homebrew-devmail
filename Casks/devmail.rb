cask "devmail" do
  version "0.1.0"
  sha256 "REPLACE_AFTER_NOTARIZED_ZIP"

  url "https://github.com/bkrdmrcioglu/devmail-site/releases/download/v#{version}/DevMail-#{version}.zip"
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
