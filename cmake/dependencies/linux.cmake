#=================== ImGui ===================
find_package(SDL2 REQUIRED)
target_link_libraries(ImGui PUBLIC SDL2::SDL2)

if (USE_OPENGLES)
    target_link_libraries(ImGui PUBLIC ${OPENGL_GLESv2_LIBRARY})
    if (USE_GLES2)
        add_compile_definitions(IMGUI_IMPL_OPENGL_ES2)
    else()
        add_compile_definitions(IMGUI_IMPL_OPENGL_ES3)
    endif()
else()
    target_link_libraries(ImGui PUBLIC ${OPENGL_opengl_LIBRARY})
endif()
