cask "devmail" do
  version "0.2.2"
  sha256 "a70a2e60406a8e91b9624f43e7cb56e954a2a188b09e7118242b273385d8d345"

  url "https://github.com/bkrdmrcioglu/devmail-site/releases/download/v0.2.2/DevMail-0.2.2.zip"
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
