FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y gcc g++
RUN apt-get install -y libstdc++6-8-dbg libstdc++-8-dev
RUN apt-get install -y gdb
RUN sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y dpkg-dev

RUN mkdir /home/download
WORKDIR /home/download
RUN apt-get source libstdc++6-8-dbg 

RUN cd gcc-8-8.2.0 && tar xvf gcc-8.2.0.tar.xz

RUN mkdir -p /home/download/a/a/a/a/a/a
RUN ln -s /home/download/gcc-8-8.2.0/gcc-8.2.0 /home/download/src

RUN sed -i '25isys.path.append(pythondir)' /usr/share/gdb/auto-load/usr/lib/x86_64-linux-gnu/debug/libstdc++.so.6.0.25-gdb.py

RUN cd /home/download/gcc-8-8.2.0/gcc-8.2.0/libstdc++-v3/include/ && for file in std/*; do ln -s $file .; done

CMD ["bash"]
