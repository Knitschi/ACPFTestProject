set( CPF_PACKAGES 
	EXTERNAL cotire
	EXTERNAL CPFCMake
    EXTERNAL CPFBuildscripts
    EXTERNAL libSwitchWarningsOff
	EXTERNAL BPackage BUILD_SHARED_LIBS OFF CPF_ENABLE_ABI_API_COMPATIBILITY_REPORT_TARGETS OFF
	EXTERNAL FPackage 
	EXTERNAL GPackage
    OWNED CPackage
    OWNED DPackage
    OWNED EPackage BUILD_SHARED_LIBS ON 
    OWNED APackage BUILD_SHARED_LIBS OFF 
    OWNED documentation
)