cask "devmail" do
  version "0.2.0"
  sha256 "f365b08483b4ed1033d5a14be3aa37523062ac73950d03b481da8d626b917efe"

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
