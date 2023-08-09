#defining an array using qw in perl
#1 
#qw(Expression)
#qw/Expression/
#qw'Expression'
#qw{Expression}
#you can use any delimeter i.e. (), [], {}, //
#however () & // are used generally
@friends  = qw ("Rock", "Tom", "Jenny"); #this is another style of declaring an array
print "$friends[0]";
#this above is the same as 
my @names = ("Rock", "Tom", "Jenny"); #this is the main default pattern of array declaration