
include(cpfAddCppPackage)

set( PACKAGE_NAMESPACE c )
cpfInitPackageProject(
	PACKAGE_NAME
	${PACKAGE_NAMESPACE}
)
set( briefDescription "A C++ libary used for testing the CPF" )
set( longDescription "" )


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
	Tests/function_tests.cpp

)

set(PACKAGE_LINKED_LIBRARIES
	libSwitchWarningsOff
)

set(PACKAGE_LINKED_TEST_LIBRARIES
	GMock::main
)

set( archiveDevPackageOptions
	DISTRIBUTION_PACKAGE_CONTENT_TYPE 	CT_DEVELOPER
	DISTRIBUTION_PACKAGE_FORMATS 		7Z
)

############################################## Add Package #################################
cpfAddCppPackage( 
	PACKAGE_NAME			${PACKAGE_NAME}
	PACKAGE_NAMESPACE		${PACKAGE_NAMESPACE}
	TYPE					LIB
	BRIEF_DESCRIPTION		${briefDescription}
	LONG_DESCRIPTION		${longDescription}
	PUBLIC_HEADER			${PACKAGE_PUBLIC_HEADER}
	PRODUCTION_FILES		${PACKAGE_PRODUCTION_FILES}
	PUBLIC_FIXTURE_HEADER	${PACKAGE_PUBLIC_FIXTURE_HEADER}
	FIXTURE_FILES			${PACKAGE_FIXTURE_FILES}
	TEST_FILES				${PACKAGE_TEST_FILES}
	LINKED_LIBRARIES		${PACKAGE_LINKED_LIBRARIES}
	LINKED_TEST_LIBRARIES	${PACKAGE_LINKED_TEST_LIBRARIES}
	DISTRIBUTION_PACKAGES 	${archiveDevPackageOptions}
)
