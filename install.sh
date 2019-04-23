biru='\033[34;1m' #biru
green='\e[0;32m' #hijau muda
daun='\033[32;1m' #ijo
purple='\033[35;1m' #purple
cyyan='\033[36;1m' #cyan
merah='\033[31;1m' #merah
putih='\033[37;1m' #pur
tai='\033[33;1m' #kuning
clear
pkg install toilet
toilet -f slant --gay "Dr460n"
echo $daun  "[]=======================[]"
echo $tai   "   Author = Bl4ck Dr460n"
echo $daun  "[]=======================[]"
echo $putih "  Code By Bl4ck Dr460n"
echo
echo
echo $merah "{}======================{}"
echo $daun  "  1.Install"
echo $merah "{}======================{}"
echo $faun  "  E.Exit"
echo $daun
read -p "[root@localhost.dr460n]>> " pil
if [ $pil = "1" ] || [ $pil = "1" ]
then
echo $daun "Install Bahan "
sleep 5
pkg install curl
pkg install gem
apt install autoconf bison clang coreutils curl findutils git apr apr-util libffi-dev libgmp-dev 
echo $daun "Install Metasploit"
sleep 2
cd $HOME
curl -LO https://github.com/rapid7/metasploit-framework/archive/4.16.4.tar.gz
tar -xf $HOME/4.16.4.tar.gz
mv $HOME/metasploit-framework-4.16.4 $HOME/metasploit-framework
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
gem install bundler
bundle config build.nokogiri --use-system-libraries
echo $daun "DONE !!!"
sleep 4
gem install nokogiri -- --use-system-libraries
sed 's|grpc (.*|grpc (1.4.1)|g' -i $HOME/metasploit-framework/Gemfile.lock
gem unpack grpc -v 1.4.1
curl -LO https://raw.githubusercontent.com/grpc/grpc/v1.4.1/grpc.gemspec
curl -L https://wiki.termux.com/images/b/bf/Grpc_extconf.patch -o extconf.patch
patch -p1 < extconf.patch
gem build grpc.gemspec
gem install grpc-1.4.1.gem
cd ..
rm -r grpc-1.4.1
echo $daun "Done !!!"
sleep 3
cd $HOME/metasploit-framework
bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
clear
echo $tai "Thanks To :"
sleep 1
echo $daun "     V3rluchie"
sleep 2
echo $daun "     B4J1N64N"
sleep 3
exit
fi
if [ $pil = "E" ] || [ $pil = "e" ]
then
echo $daun "Code By Bl4ck Dr460n"
echo $tai "We Are Anonymous"
exit
fi
