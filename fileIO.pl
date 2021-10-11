=head
< -- reading
> -- writing
>> -- appending
+< -- read and write
+> -- read, write and create
+>> -- read, write, append and create
=cut

use strict;
use warnings;

# reading
open(FHR,"<test.txt") or die "can not open file";

while (<FHR>){
    print $_,;
}

open(FHR1,"<test.txt") or die "can not open file";
print("\n");
my @file = <FHR1>;
print("\ncontents\n");
print("\n");

foreach my $x (@file){
    print $x, ;
}
close(FHR);

#writing

open(FHW,">students.txt") or die "No permission or can not write to a file";
my @names = ("John","Mike","Simon");
print FHW join("\n",@names);

open(FHW1,">>students.txt") or die "No permission or can not write to a file";
print FHW1 "\nTony\n";
print FHW1 "\nNaruto\n";
print FHW1 "\nSony\n";
print FHW1 "\nRony\n";

close(FHW);
close(FHW1);

#another way using sysopen but does not work with strict and warning

#sysopen(FH, "text.txt", O_RDONLY);


## to rename the file

#rename("F:\\courses\\learn_perl\\test.txt","F:\\courses\\learn_perl\\first.txt");
 #to delete
#unlink("F:\\courses\\learn_perl\\first.txt");

##seek the file
#seek FILEHANDLE,POSITION,WHENCE


print("\n=========================\n");
open(ST,"<students.txt") or die "File not present";
seek(ST,25,0);
while (<ST>){
    print tell(ST),":", $_;
}
close(ST);