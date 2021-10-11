## arrays of arrays or two dimension arrays

=head
two ways to declare
@array = ([],[],[]);
or 
$array = [[],[],[]] --> anonyms
=cut

my @domainCodes = (["yahoo.com", "google.com"], ["gitam.org", "au.org", "microsoft.com"], [10..15]);
my $domainCode = [["yahoo.com", "google.com"], ["gitam.org", "au.org", "microsoft.com"], [10..15]];

print @{$domainCodes[0]}, "\n";
print @{$domainCodes[1]}, "\n";
print @{$domainCodes[2]}, "\n";
print "=======================\n";
print @{$domainCodes[0]}[0],"\n";
print @{$domainCodes[1]}[2],"\n";
print @{$domainCodes[2]}[5],"\n";


#anonyms 
print "========ANONYM===============\n";

print @{$domainCode->[0]}, "\n";
print @{$domainCode->[1]}, "\n";
print @{$domainCode->[2]}, "\n";
print "========ANONYM===============\n";
print @{$domainCode->[0]}[0],"\n";
print @{$domainCode->[1]}[2],"\n";
print @{$domainCode->[2]}[5],"\n";