# tutorial on hierachical data
# here is a function that takes the name of a directory as an argument
# and computes the total size of all the files contained in it, and its subdirectories, and in their subdirectories, and son on:

sub total_size {
	my ($top) = @_;
	my $total = -s $stop;
	my $DIR;
	
	return $total if -f $top;
	unless (opendir $DIR, $top) {
		warn "Couldn't open directory $top: $!; skipping. \n";
		return $total;
	}
	
	# the -f operator checks to see if the argument is a plain file; if so, the function can return the total immediately.
	# otherwise, it assumes that the top file is actually a directory, and tries to open it with opendir(). if the directory can't be opened.
	# the function issues a warning message and returns the total so far, which includes the size of the directory itself, but not its contents.
	
	my $file;
	while ($file = readdir $DIR) {
		next if $file eq '.' || $file eq '..';
		$total += total_size("$top/$file");
	}
	closedir $DIR;
	return $total;
}
