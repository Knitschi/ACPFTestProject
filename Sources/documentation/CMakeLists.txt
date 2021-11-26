
include(cpfPackageProject)
include(cpfAddDoxygenPackageComponent)

cpfPackageProject(
    TARGET_NAMESPACE    doc
    COMPONENTS 		    SINGLE_COMPONENT
	DISTRIBUTION_PACKAGES
		DISTRIBUTION_PACKAGE_CONTENT_TYPE 	CT_DOCUMENTATION
		DISTRIBUTION_PACKAGE_FORMATS 		7Z
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

cpfFinalizePackageProject()