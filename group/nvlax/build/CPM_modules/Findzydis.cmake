include("/home/jeff/ChibiLinux/group/nvlax/build/cmake/CPM_0.34.0.cmake")
CPMAddPackage(GITHUB_REPOSITORY;zyantific/zydis;GIT_TAG;55dd08c210722aed81b38132f5fd4a04ec1943b5;EXCLUDE_FROM_ALL;YES)
set(zydis_FOUND TRUE)