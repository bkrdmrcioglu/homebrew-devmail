cask "devmail" do
  version "0.2.1"
  sha256 "8546410a6a9a76df3d7ed93c404786119dcea129c145255fdf0665b82d10f155"

  url "https://github.com/bkrdmrcioglu/devmail-site/releases/download/v0.2.1/DevMail-0.2.1.zip"
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
