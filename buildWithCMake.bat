PATH=C:/Users/dk/.conan/data/mingw-builds/12.2.0/_/_/package/6903a9d1b48b06f7fbe0929db654512c77e6cc32/bin;C:/Users/dk/.conan/data/cmake/3.25.1/_/_/package/0a420ff5c47119e668867cdb51baff0eca1fdb68/bin;C:/Users/dk/.conan/data/ninja/1.11.1/_/_/package/0a420ff5c47119e668867cdb51baff0eca1fdb68/bin;C:/Users/dk/.conan/data/zulu-openjdk/11.0.15/_/_/package/ca33edce272a279b24f87dc0d4cf5bbdcffbc187/bin;%PATH%
cmake --build . --target clean
cmake . -G Ninja
cmake --build .