git pull
git submodule update --remote --merge

:: Tags
pushd Sources\APackage
    git tag -l | xargs git tag -d
    git fetch --tags
popd

git tag -l | xargs git tag -d
git fetch --tags