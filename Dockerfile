FROM busybox:glibc
MAINTAINER it-operations@boerse-go.de
ENV TOOL=packer \
    VERSION=0.10.0 \
    SHA256=eadd33bc0f8fa42034059fc1cda5f43ed6f540746e767480f0706ebed49b45e5

# By using ADD there is no need to install wget or curl
ADD https://releases.hashicorp.com/${TOOL}/${VERSION}/${TOOL}_${VERSION}_linux_amd64.zip ${TOOL}_${VERSION}_linux_amd64.zip
RUN echo "${SHA256}  ${TOOL}_${VERSION}_linux_amd64.zip" | sha256sum -cw &&\
    unzip ${TOOL}_${VERSION}_linux_amd64.zip &&\
    rm -r ${TOOL}_${VERSION}_linux_amd64.zip

ENTRYPOINT ["/packer"]
CMD ["--help"]
