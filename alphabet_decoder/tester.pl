$base = '65';
our %alphabet;
for ($i=0;$i<26;$i++){
    $alphabet{chr($base+$i)} = $i;
}

while (1) {
    $x = <STDIN>;
    chomp($x);
    if ($x eq "quit") {
        last;
    }

    @letters = split(//,$x);
    print(chr((($alphabet{uc($letters[1])} - $alphabet{uc($letters[0])})%26)+65));
    print "\n\n";
}
