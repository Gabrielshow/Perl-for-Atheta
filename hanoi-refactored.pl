# instead of teh previous implementations we can also use some kind of gui
# function but instead make the hanoi function call it
sub hanoi {
	my ($n , $start, $end, $extra, $move_disk) = @_;
	if ($n == 1) {
		$move_disk->(1, $start, $end);
	} else {
		hanoi($n-1, $start, $extra, $end, $move_disk);
		$move_disk->($n, $start, $end);
		hanoi ($n-1, $extra, $end, $start, $move_disk);
	}
}

sub print_instruction {
	my ($disk, $start , $end) = @_;
	print "Move disk #$disk from $start to $end. \n"
}

sub main {
	hanoi (3, 'A', 'C', 'B', \&print_instruction);
}

main()