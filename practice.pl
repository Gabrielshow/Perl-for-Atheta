my $numeric_x = 0 + $x; # forces numeric context
my $stringy_x = '' . $x; # forces string context
my $boolean_x = !!$x; # forces boolean context

# my $uncle = "Bob\n";
# chomp $uncle;
# say $uncle;  # this gives an error can't locate object method say via package bob

# say "#$_" for 1 .. 10;

my @squares = map { $_ * $_ } 1 .. 10;
say for @squares; # note the postfix for
# say "Our current discount is $discount!"
