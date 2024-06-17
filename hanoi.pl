# hanoi( N, start, end ,extra)
# solve tower of Hanoi problem for a tower of N disks, 
# of which the largest is disk #N. Move the entire tower from
# peg 'start' to peg 'end', using peg 'extra' as a work space
sub hanoi {
	my ($n, $start, $end, $extra) = @_;
	if ( $n == 1) {
		print "Move disk #1 from $start to $end. \n"; # Step 1
	} else {
		hanoi($n-1, $start, $extra, $end);   # Step 2
		print "Move disk #$n from $start to $end. \n"; # Step 3
		hanoi($n-1, $extra, $end, $start);   # Step 4
	}
}

# this function prints a series of instructions for how to move the tower.
sub main {
	print "Enter the number of disks \n";
	$size = <STDIN>;
	$size = int($size);
	hanoi($size, 'A', 'C' , 'B');
}
main();
 