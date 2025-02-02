cmake_minimum_required(VERSION 3.10)
project(GhostMansion OBJC)

add_executable(GhostMansion
    src/main.m
    src/Ghosts.h
    src/Ghosts.m
    src/Utils.h
    src/Utils.m
)

target_link_libraries(GhostMansion
    "-framework Foundation"
)