set(IMGUI_LIBRARY ${CMAKE_SOURCE_DIR}/externals/imgui)
# Not that this depends on SDL2
set(IMGUI_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/externals/imgui ${IMGUI_DIR}/backends ${SDL2_INCLUDE_DIR})

add_library(Imgui STATIC)

target_sources(Imgui PUBLIC
        ${IMGUI_LIBRARY}/imgui.cpp
        ${IMGUI_LIBRARY}/imgui_demo.cpp
        ${IMGUI_LIBRARY}/imgui_draw.cpp
        ${IMGUI_LIBRARY}/imgui_tables.cpp
        ${IMGUI_LIBRARY}/imgui_widgets.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdl.cpp
        ${IMGUI_LIBRARY}/backends/imgui_impl_sdlrenderer.cpp
        )

target_include_directories(Imgui PUBLIC ${IMGUI_INCLUDE_DIR})
