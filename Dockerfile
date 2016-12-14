FROM bitriseio/android-ndk

RUN apt-get update
RUN apt-get install -y swig

RUN mkdir /ndk
COPY libdgmpp/ /ndk/libdgmpp/
COPY build.sh /ndk/build.sh
COPY Android.mk /ndk/Android.mk
COPY Application.mk /ndk/Application.mk

RUN sed -i -e 's/\r$//' /ndk/build.sh
WORKDIR /ndk

CMD ["./build.sh"]