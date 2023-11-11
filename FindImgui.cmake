set(IMGUI_LIBRARY ${CMAKE_SOURCE_DIR}/externals/imgui)

set(IMGUI_INCLUDE_DIR
        ${CMAKE_SOURCE_DIR}/externals/imgui
        ${CMAKE_SOURCE_DIR}/externals/imgui/backends
        )

add_library(Imgui STATIC)

target_sources(Imgui PUBLIC
        ${IMGUI_LIBRARY}/imgui.cpp
        ${IMGUI_LIBRARY}/imgui.h
        ${IMGUI_LIBRARY}/imgui_demo.cpp
        ${IMGUI_LIBRARY}/imgui_draw.cpp
        ${IMGUI_LIBRARY}/imgui_tables.cpp
        ${IMGUI_LIBRARY}/imgui_widgets.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdl2.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdl2.h
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdlrenderer2.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdlrenderer2.h
        )

target_include_directories(Imgui PUBLIC ${IMGUI_INCLUDE_DIR})

# NOTE: Maybe also find find_package(SDL2)?
# find_package(SDL2 REQUIRED)
# find_package(SDL2_ttf REQUIRED)
# find_package(SDL2_image REQUIRED)
# find_package(SDL2_mixer REQUIRED)
target_link_libraries(Imgui PUBLIC SDL2::SDL2 SDL2::TTF SDL2::Image SDL2::Mixer)
