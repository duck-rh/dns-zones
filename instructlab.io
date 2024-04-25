$TTL 300
@       IN      SOA     ns1.osci.io. hostmaster.osci.io.  (
                                      2024050101 ; Serial
                                      3600       ; Refresh
                                      1800       ; Retry
                                      604800     ; Expire
                                      86400      ; Minimum
                                      )

                IN       NS        ns1.osci.io.
                IN       NS        ns2.osci.io.
                IN       NS        ns3.osci.io.

; redirector, apex can't be a CNAME
                IN       A         8.43.85.237
		IN       AAAA      2620:52:3:1:5054:ff:fe64:ab5a
                TXT      "v=spf1 -all"

www             IN       CNAME     redirector.osci.io.
; TODO add SPF
