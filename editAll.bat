

pushd Sources\APackage

echo namespace{} >> a.cpp
git commit . -m"dummy edit"
echo namespace{} >> a.cpp
git commit . -m"dummy edit"
echo namespace{} >> a.cpp
git commit . -m"dummy edit"

git push

popd