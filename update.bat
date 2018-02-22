git pull
git submodule update

:: Tags
pushd Sources\APackage
    git tag -l | xargs git tag -d
    git fetch --tags
popd

git tag -l | xargs git tag -d
git fetch --tags