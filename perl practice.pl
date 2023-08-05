#operators
#concatenate operator (.)
$a = "hello";
$b = "world";
$a.$b #outputs "hello world"
#repition operator (x)
'-' x 3 #outputs ---
$a = "hello";
$a x 3 #"hellohellohello"
#range operator
#inclusive 
3 .. 7 #outputs (3,4,5,6,7)
#non-inclusive
3 ... 7 #outputs (3,4,5,6)
#control flow
#for each usage
foreach $a (@list)
{print "value of a: $a";}
#or rather
@list = (20, 25, 30,45,55)
foreach  $a (@list)
{print "value of a: $a";}
#use of while
$month = "June";
while($month eq "June")
{print "the month is June";}
print "the month is January";
#arrays
#arrays are prefixed with @symbol
#index starts at 0
@years = (1995,1996,1998);
@names = ("jay", "juis", "Jack");
print " $years[0]"; #jay
print " $years[1]"; #juis
print " $years[2]"; #Jack
#defining an array with qw
#qw (expression)
#qw /expression/
#qw 'expression'
#qw {expression}
#you can use any delimiter
#e.g.
@friends = qw ( ola lawrence bolu);
my @names = qw (jay rey dip);
#is the same as @names = ("jay", "rey", "dip");
#length of an array
@array = (you, are,  awesome);
$array[5] = 4;
$size = @array;
$index_max = $#array;
print "size: $size "
# print " maximum index : $index_max";
#you could declare an array with the my keyword
# my @names = ("flex", "box", "tim");
#slicing an array
@a = (1,2,3,4,5,6,7,8,9);
@b = @a[1,4]; # 2 5
@c = @a[1..4];# 2,3,4,5
print "@b";
print "@c";
#subroutines
# they can be called by using a subroutine name prefixed with the "&" character
&subroutine_name; #calling a subroutine without parameter
&subroutine_name(arguments_list);
sub ask_buddy 
{print "you are awesome!";}
ask_buddy(); #calling the subroutine
#inside the subroutine arguments are accessible usinghe special array @_.
#hence the first argument to the function is in $_[0], the second is in $_[1], & so on
sub add 
{my $result = 0;
foreach $arg(@_)
{my $result += $arg;}
return $result;}
my $sum1 = add(1,2,3); # outputs 6
print " sum of 1, 2 & 3 is  $sum1\1";
#string
#strings between ('') are non-interpolated string
my $s = 'string with single quote';
#string operation
#empty string -> my $variable = " ";
my $website = "perl";
my $editor = "notepad";
print " $editor loves to teach $website"; #notepad loves to teach perl
#auto-increment operator(++)
$st = "BUV";
$st++;
print "after ++ . $st "; #BUW
#Length of a string
my $perl = "awesome";
print " length = ", length($perl); #7
#errors 
#eval catches the error, stops the block of code & it puts the error message into $@
#try & catch block
#some examples will clarify
eval{...};
if($@) { errorhandler($@);}
eval {nameisntfoundfunction();};
if($@){warn(); }
print 'program proceeds';
#array reference
#array reference is just like a pointer
my @array = (1,2,3,4,5);
my$arrayref1 = @array #array reference
my $arrayref2 = ['a', 'b','c', 'd'];
my $arrayref1->[0]; 1
my $arrayref2->[0]; 'a'
#hash reference 
my %hash = (a => 1, b => 2)
my %hashref1 = %hash
print '$hash{a};' #outputs 1
#code reference
my $coderef = sub {print "stegasaurus";};
$coderef->(); #prints 'stegasaurus'
#functions are known as subroutines in perl e.g.
sub rawr {print "RAWR!;"}
rawr()
#using scalars as function argument
sub rawr {my ($ dinosaur , $how )= @_ ;
print "$dinosaur says RAWR $how\n";}
rawr ("stegasaurus", "loudly");
#using hashes  as function argument
sub rawr { my (%params) = @_ ;
print "$params{dinosaur} says RAWR $params{how}\n";}
rawr (dinosaur => "stegasaurus", how => "loudly");
#functions returning a value
sub get_cookie {return "chocolate  chip" }
my $flavor = get_cookie;
flavor():
sub yet_available_flavors{return ("chocolate chip", "oat meal raisin", "peanut butter");}
my @flavors = yet_available_flavors();
#use of conditionals
if ($eyeballs >= 2 ){print"its alien\n";}
elsif($eyeballs == 2){print "its human\n";}
else {print "its a rock\n"}
#postfix conditionals
print "hello" if $your_name  eq 'Barry';
print "hello" unless the_person_looks_scary();
my $english = $chicken_count == 1 ? "chicken" : "chick-hen";
