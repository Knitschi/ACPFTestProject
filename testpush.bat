
echo " " >> Sources\CPackage\c.cpp
git commit . -m"whitespace"
git notes append -m "dontTr1gger"
git push origin refs/notes/* refs/heads/master refs/tags/*