#!/usr/bin/perl

use Modern::Perl;

print "Please enter a binary number up to 30 digits: ";
chomp (my $binaryNo = my $backupNo = <> );
chomp $backupNo;

my $exp = 1, my $decimal;
while ( $binaryNo ) {
   $decimal += chop($binaryNo) * $exp;
   $exp *= 2;
}

print $backupNo.' is '.$decimal.' in decimal.'."\n\n";
