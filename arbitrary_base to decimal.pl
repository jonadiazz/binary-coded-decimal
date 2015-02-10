#!/usr/bin/perl

use Modern::Perl;

print "Please enter a number up to 30 digits: ";
chomp (my $no = my $backupNo = <> );
chomp $backupNo;
print "Which base is this number?  ";
chomp (my $baseNo = <>);

my $exp = 1, my $decimal;
#base case
$decimal = chop($no);

while ( $no ) {
   $decimal += chop($no) * (($baseNo)**$exp);
   $exp += 1;
}

print $backupNo.' is '.$decimal.' in decimal.'."\n\n";
