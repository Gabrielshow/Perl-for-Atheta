# a simple factorial function in perl
sub factorial {
	my ($n) = @_;
	return 1 if $n == 0;
	return factorial($n-1) * $n;
}

sub main {
	print "Enter the number you want to find its factorial \n";
	my $number = <STDIN>;
	$result = factorial($number);
	print " The answer is $result \n";
}

main();