use strict;
use warnings;
my @myArr = ("google.com 100", "yahoo.com 200", "microsoft.com 101", "git.org 300", "apple.co.in 400");

##subroutine to add element
sub print_sub{
    my $arg1 = shift;
    my $arg2 = shift;
    push(@myArr,$arg1." ".$arg2);
    print(join(" ",@myArr));
}
print_sub("img2.xyz", "500");

##subroutine to append domain

sub addDomain{
    ##@_ special array symbol
    my @myArr = @_;
    foreach (@myArr){
        if ($_ =~ /com/){
            $_.=": COM";
        }
        else{
            $_.=": ORG";
        }
    }
    return(@myArr);

}

@myArr = addDomain(@myArr);
print(@myArr,"\n");

##printing array nd hashes with routine

my %h2 = (Perl => 5, Python => 10, Java => 8, C => 9);
my @skills = ("Perl","Python","Java","C");

sub print_stuff{
    (@myArr, %h2, @skills) = @_;
    print("============Printing=========== \n");
    print(@myArr , "\n");
    print(%h2,"\n");
    print(@skills, "\n");
}

print_stuff(@myArr,%h2,@skills);