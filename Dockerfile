FROM stilliard/pure-ftpd

RUN useradd -m ftp
RUN usermod -d /data ftp

#pure-ftpd -c 100 -C 100 -P $PUBLICHOST -p 30000:30209 -s -A -j -Z -B -H -4 -R -G -X -x -B

# e.g. you could change the defult command run:
CMD /run.sh pure-ftpd -c 100 -C 100 -p 30000:30209 -s -A -j -Z -B -H -4 -R -G -X -x && sleep infinity

