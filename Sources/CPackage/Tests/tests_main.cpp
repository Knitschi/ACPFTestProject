
#include <CPackage/Tests/function_fixture.h>
#include <CPackage/function.h>


int main(int argc, char **argv)
{
    c::FunctionFixture fixture;
    fixture.SetUp();

    try
    {
        c::function();
        
        return 0;
    }
    catch(...)
    {
        return 1;
    }

}