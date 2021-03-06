#!/bin/bash
nim compileToC --compileOnly -f -d:release -d:danger -d:ssl --threads:on --app:lib --opt:speed -d:noSignalHandler --listFullPaths:off --excessiveStackTrace:off --tlsEmulation:off --exceptions:goto --gc:markAndSweep --nimcache:. --out:faster_than_requests.so src/faster_than_requests.nim

cp --verbose --force ~/.choosenim/toolchains/nim-1.2.0/lib/nimbase.h nimbase.h

rm --verbose --force faster_than_requests.json
