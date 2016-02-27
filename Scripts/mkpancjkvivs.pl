#!/usr/bin/perl

# Written by Dr. Ken Lunde (lunde@adobe.com)
# Senior Computer Scientist 2, Adobe Systems Incorporated
# Version 2016-02-26

# This tool takes region-specific UTF-32 to CID mapping files as
# arguments to region identifier command-line options, along with the
# IVD_Sequences.txt file as STDIN, and outputs a UVS definition file
# that can be used as the argument to the AFDKO makeotf tool's "-ci"
# command-line option.

# Tool Dependencies: None

while (@ARGV and $ARGV[0] =~ /^-/) {
    my $arg = shift @ARGV;
    if (lc $arg =~ /^-(xk|cn|sg|tw|hk|mo|my|jp|kr|kp|vn)$/) {
        $region2file{ uc $1 } = $ARGV[0];
        shift;
    } else {
	die "Invalid option: $arg! Skipping\nExit\n";
    }
}

while(defined($line = <STDIN>)) {
    next if $line =~ /^#/;
    next if $line !~ /PanCJKV/;
    chomp $line;
    ($bc,$vs,$id) = $line =~ /^([0-9A-F]+)\s+([0-9A-F]{5});\s+.+;\s+([A-Za-z][A-Za-z0-9_+-]+)$/;
    ($region) = $id =~ /^(?:uni|u)(?:[0-9A-F]+)_(XK|CN|SG|TW|HK|MO|MY|JP|KR|KP|VN)$/;
    $data->{$bc}{$region} = $vs;
}

foreach $region (sort {$a cmp $b} keys %region2file) {
    open($region,"<$region2file{$region}") or die "Cannot open $region mapping file!\n";
    while(defined($line = <$region>)) {
        chomp $line;
        ($uni,$cid) = split(/\s+/,$line);
        $uni =~ tr/<>//d;
        if ($uni =~ /^0000/) {
            $uni =~ s/^0000//;
        } else {
            $uni =~ s/^000//;
        }
        if (exists $data->{$uni}{$region}) {
            $new->{$uni}{ $data->{$uni}{$region} } = "CID+" . $cid;
        }
    }
}

print STDOUT "# PanCJKV IVSes\n";

foreach $bc (sort {length($a) <=> length($b) or $a cmp $b} keys %{ $new }) {
    foreach $vs (sort {$a cmp $b} keys %{ $new->{$bc} }) {
        print STDOUT "$bc $vs; PanCJKV; $new->{$bc}{$vs}\n";
    }
}

print STDOUT "# EOF\n";
