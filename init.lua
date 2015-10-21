require "cutorch"
cutensor = paths.require("libcutensor")

include('Tensor.lua')
include('FFI.lua')
include('test.lua')

return cutensor
