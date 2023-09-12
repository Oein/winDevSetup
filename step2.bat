Powershell.exe -executionpolicy remotesigned -File step2.ps1

cd C:\
mkdir Pjs
cd Pjs
git clone https://github.com/Oein/SveltePOIUITemplate.git kcf
cd kcf
yarn install
git remote remove origin
code .
exit