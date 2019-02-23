include(cpfInitPackageProject)
include(cpfAddCppPackage)

cpfInitPackageProject()

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
	Tests/tests_main.cpp
)

set(PACKAGE_LINKED_LIBRARIES
	swo::libSwitchWarningsOff
)

set( archiveDevPackageOptions
	DISTRIBUTION_PACKAGE_CONTENT_TYPE 	CT_DEVELOPER
	DISTRIBUTION_PACKAGE_FORMATS 		7Z
)

############################################## Add Package #################################
cpfAddCppPackage( 
	PACKAGE_NAMESPACE		c
	TYPE					LIB
	BRIEF_DESCRIPTION		${briefDescription}
	LONG_DESCRIPTION		${longDescription}
	PUBLIC_HEADER			${PACKAGE_PUBLIC_HEADER}
	PRODUCTION_FILES		${PACKAGE_PRODUCTION_FILES}
	PUBLIC_FIXTURE_HEADER	${PACKAGE_PUBLIC_FIXTURE_HEADER}
	FIXTURE_FILES			${PACKAGE_FIXTURE_FILES}
	TEST_FILES				${PACKAGE_TEST_FILES}
	LINKED_LIBRARIES		${PACKAGE_LINKED_LIBRARIES}
	DISTRIBUTION_PACKAGES 	${archiveDevPackageOptions}
	ENABLE_PACKAGE_DOX_FILE_GENERATION TRUE
)
