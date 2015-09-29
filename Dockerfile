FROM stilliard/pure-ftpd

ENV FTP_MAX_CLIENTS 50
ENV FTP_MAX_IP_CONNECTIONS 10

CMD /usr/sbin/pure-ftpd -c $FTP_MAX_CLIENTS -C $FTP_MAX_IP_CONNECTIONS -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $FTP_PUBLIC_HOST -p 30000:30009

