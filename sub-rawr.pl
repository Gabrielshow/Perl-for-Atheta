#using scalars as function argument
sub rawr {my ($ dinosaur , $how )= @_ ;
print "$dinosaur says RAWR $how\n";}
rawr ("stegasaurus", "loudly");