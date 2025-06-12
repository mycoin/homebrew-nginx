class HttpConcatNginxModule < Formula
  desc "A Nginx module for concatenating files in a given context"
  homepage "https://github.com/mycoin/nginx-http-concat/"
  url "https://github.com/mycoin/nginx-http-concat/archive/1.2.3.tar.gz"
  version "1.2.3"
  sha256 "c3688cf698a4f879a703425d9628ecf01303c0255a436a5358d69fba4a173af4"

  def install
    pkgshare.install Dir["*"]
  end
end

