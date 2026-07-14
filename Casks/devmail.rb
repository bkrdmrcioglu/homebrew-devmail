cask "devmail" do
  version "0.2.4"
  sha256 "d56f8224a8f859923b590106141b71f999480358488f0a2880c5ced5f06bff67"

  url "https://github.com/bkrdmrcioglu/devmail-site/releases/download/v0.2.4/DevMail-0.2.4.zip"
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
