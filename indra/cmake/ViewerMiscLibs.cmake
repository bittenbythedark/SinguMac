# -*- cmake -*-
include(Prebuilt)

if (NOT USESYSTEMLIBS)
  if(LINUX)
    use_prebuilt_binary(fontconfig)
  endif(LINUX)
  use_prebuilt_binary(libhunspell)
  use_prebuilt_binary(slvoice)
else (NOT USESYSTEMLIBS)
  # Download there even when using standalone.
  set(STANDALONE OFF)
  set(USESYSTEMLIBS OFF)
  use_prebuilt_binary(vivox)
  if(LINUX AND ${ARCH} STREQUAL "x86_64")
    use_prebuilt_binary(32bitcompatibilitylibs)
  endif(LINUX AND ${ARCH} STREQUAL "x86_64")
  set(STANDALONE ON)
  set(USESYSTEMLIBS ON)
endif(NOT USESYSTEMLIBS)
