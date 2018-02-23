

pushd Sources\APackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\BPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\CPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\DPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\EPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\FPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

pushd Sources\GPackage
echo namespace{} >> function.cpp
git commit . -m"dummy edit"
popd

git commit . -m"update packages"