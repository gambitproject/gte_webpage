#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

$[ = 1;			# set array base to 1
$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

$INSEARCHPART=0;

line: while (<>) {
    chomp;
    if (/<h3 style=\"margin-top: 1.5em;\">Search<.h3>/) {
        $INSEARCHPART=1;
        next line;
    }
    if (/<.p>/) {
	if ($INSEARCHPART) { $INSEARCHPART=0; next line; }
	}
    if ($INSEARCHPART) { next line; }
    print $_;
}
