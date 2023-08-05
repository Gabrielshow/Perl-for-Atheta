sub rawr { my (%params) = @_ ;
print "$params{dinosaur} says RAWR $params{how}\n";}
rawr (dinosaur => "stegasaurus", how => "loudly");