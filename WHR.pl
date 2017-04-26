use LWP::Simple;
use HTML::FormatText;

print <<EOF;

──▒▒▓▒▒▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓───░▓▓───█▓▒▒▒▒▒█─
───█▒▒▓▓▓▒▒▓▓▒▒▒▒▒▒▓▓───█████▓──█▓▒▒▒▒▓▒
───▓▓█▒─────▒▓▒▒▒▒▒█───░██████──░█▒▒▒▒▓▓
───▓█▒──▒███─▒▓▒▒▒▒█────██████───▓▒▒▒▒▒▓
───██───█████─█▒▒▒▒█─────███▓────▓▓▒▒▒▒▓
───█▓───█████─▒▓▒▒▒█─────────────█▓▓▓▒▒▓
───█▓───░███──░▓▒▒▒▓█──────────░█▓▒▒▒▓▒▓
───██─────────▒▓▒▒▒▒▓▓──────░▒▓█▓────░▓▓
───▓█░────────█▓██▓▒▒▓█▓▓▓▓██▓▓▒▓▒░░▒▓▒▓
───▒██░──────▓▒███▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▓─
────█▓█▓▓▒▒▓█▓▒░██▒▒▓▓█▓▒▒▒▒▒▒▒▒▒▒▒▒▓▓█▒
────▓─░▓▓▓▓▓▒▓▓▓▓▒▓▓▓▒▓▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓
────▒▒▒▓▒▒▒▒▒▒▓█░─░░░─▓▓▒▒▒▒▒▒▒▒▒▒▒▓██▓▒
─────█▓▒▒▒▒▒▒▒▒▓▓─░░░─▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒▒▓▒
──────██▓▓▒▒▒▒▒▒█▒░░░░█▒▒▒▒▒▒▒▒▓█▓▓▒▒▒▒▒
─────░─▒██▓▓▒▒▒▒▒█▓▒▒▓▒▒▒▒▒▒▓███▓▒▒▒▒▒▓▓
──────────░▒▓▓▓▓▒▒▓▓▓▓▓▓████▓▓█▒▒▒▒▒▓▓█░
           `

EOF
#abaixo iremos definir funções 
#são duas funções basicamente uso um módulo para baixar paginas web
#e outro para interpretalas
sub download{

my @countries = qw(
http://www.xroxy.com/proxy-country-GB.htm
https://hidemy.name/en/proxy-list/
);
print "0 to Great britain Proxys.\n";

my $position = <>;


my $url = get("$countries[$position]");

open(FILE, '>', 'document.html');

print FILE $url; 

};

sub show{
my $string = HTML::FormatText->format_file(
'document.html'
);
print "$string";

sub aleatory{

my $fontcode = get("http://txt.proxyspy.net/proxy.txt");
my $fontcode2 = get("http://multiproxy.org/txt_all/proxy.txt");
open(TXT, '>>', 'proxy.txt');
print TXT $fontcode;
print TXT $fontcode2;

open(READTXT, '<', 'proxy.txt');
while(<READTXT>){
sleep 1;
print <<EOF;
¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
$_

EOF
}

}


};
sub Browser{
print "Specify the Web page\n";
my $page = <>;

my $code = get("$page");
open(PAGE, '>', 'code.html');
print PAGE $code;

};
sub codeinterpreter{
my $string2 = HTML::FormatText->format_file(
'code.html'
);
print "$string2";
};
print "1  choose Continent and Country\n";
print "2 to take aleatory Proxys\n ";
print "3 to Download web page\n";
my $mod = <>;
if($mod == 1){
download();
show();
}
elsif($mod == 2){
aleatory();
}
elsif($mod == 3){
Browser();
codeinterpreter();
}

