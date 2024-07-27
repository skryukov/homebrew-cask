cask "font-goorm-sans" do
  version "1.0.0"
  sha256 "c59219d6ef005aa7035fa0ddd13612a36179bd59463b3f3b9ca960e44451dc52"

  url "https://statics.goorm.io/fonts/goorm-sans/goorm-sans-#{version}.zip"
  name "goorm Sans"
  homepage "https://goorm-sans.goorm.io/"

  livecheck do
    url "https://goorm-sans.goorm.io"
    strategy :page_match do |page|
      page.scan(/href=.*?goorm-sans-(\d+(?:\.\d+)*)\.zip/i).map { |match| match[0] }
    end
  end

  font "goorm sans/Public/TTF/goorm-sans-regular.ttf"
  font "goorm sans/Public/TTF/goorm-sans-medium.ttf"
  font "goorm sans/Public/TTF/goorm-sans-bold.ttf"
end
