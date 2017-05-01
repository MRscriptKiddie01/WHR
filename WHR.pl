use LWP::Simple;
use HTML::FormatText;

print <<EOF;

────────────────────────────────                                                          #####
───────────────██████████───────   #       #   #    ##########        ###########          
──────────────████████████──────   #       #   #    #         #       #                   @ @@         
──────────────██────────██──────   #       #   #    #          #      #                   @ @@                     
──────────────██▄▄▄▄▄▄▄▄▄█──────   #       #   #    #           #     #                   @ @@                     
──────────────██▀███─███▀█──────   #       #   #    #            #    #                   @ @@                    
█─────────────▀█────────█▀──────   #       #   #    #            #    #                   @ @@                        
██──────────────────█───────────   #       #   #    #            #    #                   @ @@                    
─█──────────────██──────────────   #       #   #    #            #    ##########          @ @@                       
█▄────────────████─██──████        #########   #    #            #    ##########          @ @@                    
─▄███████████████──██──██████ ──   #       #   #    #            #    #                   @ @@                    
────█████████████──██──█████████   #       #   #    #            #    #                   @ @@                    
─────────────████──██─█████──███   #       #   #    #            #    #                   @ @@                       
──────────────███──██─█████──███   #       #   #    #            #    #                   @ @@                     
──────────────███─────█████████    #       #   #    #            #    #                   @ @@                  
──────────────██─────████████▀     #       #   #    #           #     #                   @ @@                     
────────────────██████████         #       #   #    #          #      #                   @ @@                   
────────────────██████████         #       #   #    ###########       ##########          @@@@
─────────────────████████
──────────────────██████████▄▄
────────────────────█████████▀
─────────────────────████──███                                                                 
────────────────────▄████▄──██
────────────────────██████───▀
────────────────────▀▄▄▄▄▀



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
my $fontcode3 = get("http://rebro.weebly.com/uploads/2/7/3/7/27378307/rebroproxy-5000-113421072014.txt");
my $fontcode4 = get("http://rebro.weebly.com/uploads/2/7/3/7/27378307/rebroproxy-10k-113421072014.txt");
my $fontcode5 = get("http://rebro.weebly.com/uploads/2/7/3/7/27378307/rebroproxy-all-113326062014.txt");
my $fontcode6 = get("http://rebro.weebly.com/uploads/2/7/3/7/27378307/rebroproxy-100-103221072014.txt");
open(TXT, '>>', 'proxy.txt');
print TXT $fontcode;
print TXT $fontcode2;
print TXT $fontcode3;
print TXT $fontcode4;
print TXT $fontcode5;
print TTX $fontcode6;
open(READTXT, '<', 'proxy.txt');
while(<READTXT>){
sleep 1;
print <<EOF;
$_
EOF
}

}


};
sub Browser{
print "Specify the Web page, with https:// or http://\n";
my $page = <>;

my $code = get("$page");
open(PAGE, '>', 'doc.html');
print PAGE $code;

};
sub codeinterpreter{
my $string2 = HTML::FormatText->format_file(
'doc.html'
);
print "$string2";
print "99 will return to begin\n";
my $returnfunction = <>;
if($returnfunction == 99){Browser(); codeinterpreter();}
};

print "1 choose Continent and Country\n";
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
