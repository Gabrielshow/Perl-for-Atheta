sub humanchecker {
  my ($eyeballs) = @_;
  if ($eyeballs >= 2 ){
    print "its alien\n";
  }
  elsif($eyeballs == 2){
    print "its human\n";
  }
  else {
    print "its a rock\n"
  }
}

print "Enter number of eyeballs: ";
my $eyeballs = <STDIN>; #If the user enters a string instead of a number, the int() function will convert it to 0.
#we could write a function that checks whether the number is zero or not and then output an answer
#but this is already handled implicitly and "its a rock will be printed"
chomp($eyeballs);
$eyeballs = int($eyeballs);

humanchecker($eyeballs);


#error checking using  simple regex, try/catch and while loop
#implementation will be like
#print " Enter number of eyeballs: ";
#my $eyeballs = <STDIN>;
#if ($eyeballs =~ /^\d+$/) {
#  # input is only digits 
#} else {
# # invalid input
#}

#eval { print "Enter number of eyeballs: ";
#  my $eyeballs = <STDIN>;
#  $number = int($eyeballs); 
# humanchecker($number);
#};
#if ($@) {
  #print "Enter a Number"
#}

#while (not $eyeballs =~ /^\d+$/) {
#  print "Invalid input. Please enter a number: ";
#  $eyeballs = <STDIN>;
#  chomp($eyeballs); 
#  humanchecker($eyeballs);
#}

