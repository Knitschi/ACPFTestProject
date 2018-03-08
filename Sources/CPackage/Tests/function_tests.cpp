SWITCH_WARNINGS_OFF
#include <gtest/gtest.h>
SWITCH_WARNINGS_ON

#include <CPackage/function.h>

namespace c
{

    // ============================================== TESTS =======================================
    // --------------------------------------------------------------------------------------------
    TEST(FullFilename_UnitTests,  constructor) // NOLINT
    {
        EXPECT_NO_THROW( function());
    }
}
