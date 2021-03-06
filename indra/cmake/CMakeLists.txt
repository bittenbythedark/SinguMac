# -*- cmake -*-

include(00-Common)

project(cmake)

set(cmake_SOURCE_FILES
    CMakeLists.txt

    00-Common.cmake
    APR.cmake
    Audio.cmake
    Boost.cmake
    BuildBranding.cmake
    BuildVersion.cmake
    CEFPlugin.cmake
    CMakeCopyIfDifferent.cmake
    CURL.cmake
    ConfigurePkgConfig.cmake
    Copy3rdPartyLibs.cmake
    CXXFeatureDetection.cmake
    DBusGlib.cmake
    DeploySharedLibs.cmake
    DragDrop.cmake
    EXPAT.cmake
    ExamplePlugin.cmake
    FMODSTUDIO.cmake
    FindAPR.cmake
    FindAutobuild.cmake
    FindGLOD.cmake
    FindGoogleBreakpad.cmake
    FindGooglePerfTools.cmake
    FindHunSpell.cmake
    FindNDOF.cmake
    FindOpenJPEG.cmake
    FindTut.cmake
    FindURIPARSER.cmake
    FindXmlRpcEpi.cmake
    FindZLIB.cmake
    FreeType.cmake
    GLOD.cmake
    GStreamer010Plugin.cmake
    Glui.cmake
    Glut.cmake
    GoogleBreakpad.cmake
    GooglePerfTools.cmake
    Hunspell.cmake
    JPEG.cmake
    Json.cmake
    LLAddBuildTest.cmake
    LLAppearance.cmake
    LLAudio.cmake
    LLCharacter.cmake
    LLCommon.cmake
    LLImage.cmake
    LLImageJ2COJ.cmake
    LLInventory.cmake
    LLMath.cmake
    LLMessage.cmake
    LLPhysicsExtensions.cmake
    LLPlugin.cmake
    LLPrimitive.cmake
    LLPhysicsExtensions.cmake
    LLRender.cmake
    LLSharedLibs.cmake
    LLUI.cmake
    LLVFS.cmake
    LLWindow.cmake
    LLXML.cmake
    LibXML2.cmake
    LScript.cmake
    Linking.cmake
    MediaPluginBase.cmake
    NDOF.cmake
    OPENAL.cmake
    OpenGL.cmake
    OpenJPEG.cmake
    OpenSSL.cmake
    PNG.cmake
    PluginAPI.cmake
    Prebuilt.cmake
    PulseAudio.cmake
    Python.cmake
    RunBuildTest.cmake
    TemplateCheck.cmake
    Tut.cmake
    UI.cmake
    UnixInstall.cmake
    URIPARSER.cmake
    Variables.cmake
    ViewerMiscLibs.cmake
    WinManifest.cmake
    LibVLCPlugin.cmake
    XmlRpcEpi.cmake
    ZLIB.cmake
    )

source_group("Shared Rules" FILES ${cmake_SOURCE_FILES})

set(master_SOURCE_FILES
    ../CMakeLists.txt
    )

source_group("Master Rules" FILES ${master_SOURCE_FILES})

set_source_files_properties(${cmake_SOURCE_FILES} ${master_SOURCE_FILES}
                            PROPERTIES HEADER_FILE_ONLY TRUE)

add_library(cmake
            cmake_dummy.cpp
            ${cmake_SOURCE_FILES}
            ${master_SOURCE_FILES}
            )
