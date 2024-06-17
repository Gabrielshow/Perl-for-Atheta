sub binary {
	my ($n) = @_;
	return $n if $n == 0 || $n == 1;
	
	my $k = int($n/2);
	my $b = $n % 2;
	
	my $E = binary($k);
	return $E . $b;
}


sub main {
	print "Enter the number to convert to binary \n";
	my $number = <STDIN>;
	chomp($number);
	$number = int($number);
	
	my $result = binary($number);
	print "Result is $result \n";
	}
main();