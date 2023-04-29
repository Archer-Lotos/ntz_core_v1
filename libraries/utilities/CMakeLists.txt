file(GLOB HEADERS "include/graphene/utilities/*.hpp")

set(sources
   key_conversion.cpp
   string_escape.cpp
   tempdir.cpp
   words.cpp
   elasticsearch.cpp
   ${HEADERS})

find_package(CURL REQUIRED)
include_directories(${CURL_INCLUDE_DIRS})
add_library( graphene_utilities
             ${sources}
             ${HEADERS} )
if(CURL_STATICLIB)
  SET_TARGET_PROPERTIES(graphene_utilities PROPERTIES
  COMPILE_DEFINITIONS "CURL_STATICLIB")
endif(CURL_STATICLIB)
target_link_libraries( graphene_utilities fc ${CURL_LIBRARIES})
target_include_directories( graphene_utilities
                            PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include" )
if (USE_PCH)
  set_target_properties(graphene_utilities PROPERTIES COTIRE_ADD_UNITY_BUILD FALSE)
  cotire(graphene_utilities)
endif(USE_PCH)

install( TARGETS
   graphene_utilities

   RUNTIME DESTINATION bin
   LIBRARY DESTINATION lib
   ARCHIVE DESTINATION lib
)
install( FILES ${HEADERS} DESTINATION "include/graphene/utilities" )
