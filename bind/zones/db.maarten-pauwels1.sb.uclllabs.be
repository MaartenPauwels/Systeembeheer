; BIND data file for maarten-pauwels1.sb.uclllabs.be
;
$TTL 400
@ IN SOA ns.maarten-pauwels1.sb.uclllabs.be. host.maarten-pauwels1.sb.uclllabs.be. (
66 ; Serial
900 ; Refresh
120 ; Retry
900 ; Expire
400 ) ; Default TTL
;

;Name servers
@       IN      NS      ns.maarten-pauwels1.sb.uclllabs.be.
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.

subzone IN      NS      ns

@       IN      CAA     0 iodef "mailto:maarten.pauwels1@student.ucll.be"
@       IN      CAA     0 issue "letsencrypt.org"

; adresses
@       IN A 193.191.177.179
ns      IN A 193.191.177.179
www     IN A 193.191.177.179
www1	IN A 193.191.177.179
www2	IN A 193.191.177.179
test    IN A 193.191.177.266
subzonede6yuk	IN	NS	ns.maarten-pauwels1.sb.uclllabs.be.
subzonede6yuk	IN	A	193.191.177.179
foobar	IN	NS	ns.maarten-pauwels1.sb.uclllabs.be.
foobar	IN	A	193.191.177.179
subzoneait0iz	IN	NS	ns.maarten-pauwels1.sb.uclllabs.be.
subzoneait0iz	IN	A	193.191.177.179
