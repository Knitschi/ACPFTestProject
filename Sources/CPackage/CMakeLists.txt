include(cpfPackageProject)
include(cpfAddCppPackageComponent)

cpfPackageProject(
	BRIEF_DESCRIPTION						"A C++ libary used for testing the CPF"
	TARGET_NAMESPACE 						c
	COMPONENTS SINGLE_COMPONENT
	DISTRIBUTION_PACKAGES
		DISTRIBUTION_PACKAGE_CONTENT_TYPE 	CT_DEVELOPER
		DISTRIBUTION_PACKAGE_FORMATS 		7Z
)

set( PACKAGE_PUBLIC_HEADER
	function.h
)

set( PACKAGE_PRODUCTION_FILES
	function.cpp
)

set(PACKAGE_PUBLIC_FIXTURE_HEADER
	Tests/function_fixture.h
)

set(PACKAGE_FIXTURE_FILES
	Tests/function_fixture.cpp
)
	
set( PACKAGE_TEST_FILES
	Tests/tests_main.cpp
)

set(PACKAGE_LINKED_LIBRARIES
	swo::libSwitchWarningsOff
)

############################################## Add Package #################################
cpfAddCppPackageComponent( 
	TYPE					LIB
	BRIEF_DESCRIPTION		${briefDescription}
	LONG_DESCRIPTION		${longDescription}
	PUBLIC_HEADER			${PACKAGE_PUBLIC_HEADER}
	PRODUCTION_FILES		${PACKAGE_PRODUCTION_FILES}
	PUBLIC_FIXTURE_HEADER	${PACKAGE_PUBLIC_FIXTURE_HEADER}
	FIXTURE_FILES			${PACKAGE_FIXTURE_FILES}
	TEST_FILES				${PACKAGE_TEST_FILES}
	LINKED_LIBRARIES		${PACKAGE_LINKED_LIBRARIES}
	ENABLE_PACKAGE_DOX_FILE_GENERATION TRUE
)

cpfFinalizePackageProject()
