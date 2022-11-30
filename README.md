# CMake Modern FindImGui(SDL)

Add this repository as a submodule to your project:

```cmake
git submodule add https://github.com/developer239/cmake-modern-findimgui-sdl cmake/imgui
```

Include:
```cmake
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/imgui)
```

Find package:

**Note**: FindImgui file uses `${SDL2_INCLUDE_DIR}` so you need to have SDL2 installed and you need to find it first or set the variable manually. You can find 📚 [minimal ImGui + SDL + CMake example here](https://github.com/developer239/minimal-cmake-sdl-imgui-example).

```cmake
find_package(Imgui REQUIRED)
```

Link:
```cmake
target_link_libraries(${PROJECT_NAME} PUBLIC Imgui)
```
