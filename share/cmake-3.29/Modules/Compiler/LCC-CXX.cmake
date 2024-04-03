include(Compiler/LCC)
__compiler_lcc(CXX)


if((NOT DEFINED CMAKE_DEPENDS_USE_COMPILER OR CMAKE_DEPENDS_USE_COMPILER)
    AND CMAKE_GENERATOR MATCHES "Makefiles|WMake"
    AND CMAKE_DEPFILE_FLAGS_CXX)
  # dependencies are computed by the compiler itself
  set(CMAKE_CXX_DEPFILE_FORMAT gcc)
  set(CMAKE_CXX_DEPENDS_USE_COMPILER TRUE)
endif()

set(CMAKE_CXX_COMPILE_OPTIONS_EXPLICIT_LANGUAGE -x c++)

set(CMAKE_CXX_COMPILE_OPTIONS_VISIBILITY_INLINES_HIDDEN "-fvisibility-inlines-hidden")

set(CMAKE_CXX98_STANDARD_COMPILE_OPTION "-std=c++98")
set(CMAKE_CXX98_EXTENSION_COMPILE_OPTION "-std=gnu++98")
set(CMAKE_CXX98_STANDARD__HAS_FULL_SUPPORT ON)

if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 1.20)
  set(CMAKE_CXX11_STANDARD_COMPILE_OPTION "-std=c++11")
  set(CMAKE_CXX11_EXTENSION_COMPILE_OPTION "-std=gnu++11")
  set(CMAKE_CXX11_STANDARD__HAS_FULL_SUPPORT ON)
endif()

if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 1.21)
  set(CMAKE_CXX14_STANDARD_COMPILE_OPTION "-std=c++14")
  set(CMAKE_CXX14_EXTENSION_COMPILE_OPTION "-std=gnu++14")
  set(CMAKE_CXX14_STANDARD__HAS_FULL_SUPPORT ON)
endif()

if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 1.24)
  set(CMAKE_CXX17_STANDARD_COMPILE_OPTION "-std=c++17")
  set(CMAKE_CXX17_EXTENSION_COMPILE_OPTION "-std=gnu++17")
endif()

if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 1.26)
  set(CMAKE_CXX20_STANDARD_COMPILE_OPTION "-std=c++2a")
  set(CMAKE_CXX20_EXTENSION_COMPILE_OPTION "-std=gnu++2a")
endif()

__compiler_check_default_language_standard(CXX 1.19 98 1.20 11 1.21 14 1.24 17 1.26 20)
