$TTL 600
@        IN     SOA     nis.dacom.co.kr. dnsadm.bora.net. (
                                        2005071900      ; serial (d. adams)
                                        3600            ; refresh(1H)
                                        1800            ; retry(30min)
                                        1W              ; expiry(1Week)
                                        600)            ; minimum(1H)
                IN      NS      localhost.
@               IN      A       121.189.57.82
*               IN      A       121.189.57.82
