
include(cpfPackageProject)
include(cpfAddDoxygenPackageComponent)

cpfPackageProject(
    TARGET_NAMESPACE    doc
    COMPONENTS 		    SINGLE_COMPONENT
)

set( sources
    ACPFTestProjectDocs.dox
)

cpfAddDoxygenPackageComponent(
    SOURCES ${sources}
    DOXYGEN_CONFIG_FILE "${CMAKE_CURRENT_SOURCE_DIR}/DoxygenConfig.txt"
    DOXYGEN_LAYOUT_FILE "${CMAKE_CURRENT_SOURCE_DIR}/DoxygenLayout.xml"
    DOXYGEN_STYLESHEET_FILE "${CMAKE_CURRENT_SOURCE_DIR}/DoxygenStylesheet.css"
)

finalizePackageProject()