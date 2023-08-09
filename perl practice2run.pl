#Perl tutorial continued
#scalars
$name = "Jack";

#Arrays
@weekdays = ("Monday", "Tuesday");
$weekdays[0];

#hashes 
%age = ("Rock", 20, "Johnson", 29, "Larry", 22);

#or
%age1 = ("Rock" => 25, "Johnson" => 29, "Larry" => 22);

#single line comment are preceded by the symbol #

$x = 20;
$y = 40;

$z = $x + $y;
print "$z \n";

#operarors
#.(binary operator dot) is used to concatenate two strings
$a = "hello" ;
$b = "world!";
$c = $a . $b;
print "$c \n";
 # $a . $b; #should print hello world

#Repetition operator
 #'-' * 3;
$a = "hello";
$z = $a x 3;
print "$z \n"
