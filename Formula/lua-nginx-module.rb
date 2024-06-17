class LuaNginxModule < Formula
  desc "Embed the power of Lua into Nginx"
  homepage "https://github.com/openresty/lua-nginx-module"
  url "https://github.com/openresty/lua-nginx-module/archive/v0.10.23.tar.gz"
  sha256 "2d29fa9771c9423b1d5c742d850b2f967948450cb67e26396d71534a6336b54d"
  head "https://github.com/openresty/lua-nginx-module.git", branch: "master"

  depends_on "luajit"
  depends_on "ngx-devel-kit"

  def install
    pkgshare.install Dir["*"]
  end

  def post_install
    # configure script tries to write that file and fails
    # seems to be empty anyways, this hack makes compile succeed
    system "touch",  "#{pkgshare}/src/ngx_http_lua_autoconf.h"
  end
end
