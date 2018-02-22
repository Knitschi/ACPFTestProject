
echo namespace{} >> Sources\CPackage\c.cpp
git commit . -m"dummy edit"
echo namespace{} >> Sources\CPackage\c.cpp
git commit . -m"dummy edit"
echo namespace{} >> Sources\CPackage\c.cpp
git commit . -m"dummy edit"


echo namespace{} >> Sources\APackage\c.cpp
git commit . -m"dummy edit"
echo namespace{} >> Sources\APackage\c.cpp
git commit . -m"dummy edit"
echo namespace{} >> Sources\APackage\c.cpp
git commit . -m"dummy edit"

::git notes append -m "dontTr1gger"
git push origin refs/notes/* refs/heads/master refs/tags/*