#!/usr/bin/env ruby

require "fluent-logger"
fluent = Fluent::Logger::FluentLogger.new("audit", host: "localhost", port: 24224)

pid = Process.pid

while 1 do
  fluent.post("crap", { some: "json", pid: pid })
end
