#using references to print all elements

#anonyms array ==> $array = []
#anonyms hash ==> $hash = {}
use strict;
use warnings;

my $banner = "Jitesh teacher";
my @skills = ("Perl","Python","Java","C");
my %domainCodes = ("yahoo.com" => 101, "google.com" => 102, "gitam.org" => 401 , "au.org" => 402, "microsoft.com" => 103);

#print reference aka pointer
#while creating ref use the main $@%
my $myScalarRef = \$banner;
my $myArrayRef = \@skills;
my $myHashRef = \%domainCodes;

## referencing

print(" $myScalarRef\n");
print(" $myArrayRef\n");
print(" $myHashRef\n");

#print values using ref aka deferencing

#use default  $ --> scalar @ --> array % --> hash
print($$myScalarRef, "\n");
print(@$myArrayRef, "\n");
print(%$myHashRef, " \n");

#anonyms array and hash

my $skill = ["Perl","Python","Java","C"];
my $domainCode = {"yahoo.com" => 101, "google.com" => 102, "gitam.org" => 401 , "au.org" => 402, "microsoft.com" => 103};

#dereference anonyms array and hash

print(@$skill, "\n");
print(%$domainCode, " \n");

##accessing values of anonyms stuff
print("printing \n");
print $skill->[0],"\n";
print($domainCode->{"yahoo.com"}, "\n");


##subroutine to pass ref

sub pass_ref{
    #always store ref in scalar variables
    my ($ref1, $ref2) = @_;
    print @$ref1, "\n";
    print %$ref2, "\n"

}
pass_ref(\@$skill, \%$domainCode);
pass_ref($skill, $domainCode);
