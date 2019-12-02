{
    if ($2 != "NA1ra" && $2 >= 70) {
        print $0",tipoA";
        A++;
    } else if ($3 != "NA2da" && $3 >= 70) {
        print $0",tipoB";
        B++;
    } else if ($2 != "NA1ra" && $3 == "NA2da") {
        print $0",tipoC";
        C++;
    } else if ($2 != "NA1ra" && $3 != "NA2da") {
        print $0",tipoD";
        D++;
    } else if ($2 == "NA1ra" && $3 == "NA2da") {
        print $0",tipoE";
        E++;
    }
}
END {
    print "# A "A;
    print "# B "B;
    print "# C "C;
    print "# D "D;
    print "# E "E;
}
