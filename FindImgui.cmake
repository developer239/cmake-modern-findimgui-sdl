set(IMGUI_LIBRARY ${CMAKE_SOURCE_DIR}/externals/imgui)
# Not that this depends on SDL2
set(IMGUI_INCLUDE_DIR
        ${CMAKE_SOURCE_DIR}/externals/imgui
        ${CMAKE_SOURCE_DIR}/externals/imgui/backends
        ${SDL2_INCLUDE_DIR})

add_library(Imgui STATIC)

target_sources(Imgui PUBLIC
        ${IMGUI_LIBRARY}/imgui.cpp
        ${IMGUI_LIBRARY}/imgui.h
        ${IMGUI_LIBRARY}/imgui_demo.cpp
        ${IMGUI_LIBRARY}/imgui_draw.cpp
        ${IMGUI_LIBRARY}/imgui_tables.cpp
        ${IMGUI_LIBRARY}/imgui_widgets.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdl.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdl.h
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdlrenderer.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdlrenderer.h
        )

target_include_directories(Imgui PUBLIC ${IMGUI_INCLUDE_DIR})
