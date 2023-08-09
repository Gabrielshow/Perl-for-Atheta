#range operator
(3..7); #includes 7
(3...7);#excludes 7

#control flow
sub loop { my (@list) = @_;
	foreach $a (@list)
	{ print "value of a: $a \n"; };
 }
 
 @list = (20, 25, 30, 45, 55);
 loop(@list);