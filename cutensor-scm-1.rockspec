package = "cutensor"
version = "scm-1"

source = {
   url = "git://github.com/kulinseth/cutensor.git",
   tag = "master"
}

description = {
   summary = "Complete Tensor package with CUDA backend",
   detailed = [[
   	    A complete tensor package with CUDA backend, with CP and
        Tucker decomposition.
   ]],
   homepage = "https://github.com/kulinseth/cutensor.git",
   license  = "MIT"
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE) -j$(getconf _NPROCESSORS_ONLN) install
]],
   install_command = "cd build"
}
