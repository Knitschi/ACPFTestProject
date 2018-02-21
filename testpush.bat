
echo namespace{} >> Sources\CPackage\c.cpp
git commit . -m"dummy change"
git notes append -m "dontTr1gger"
git push origin refs/notes/* refs/heads/master refs/tags/*