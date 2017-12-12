FROM ubuntu:latest
MAINTAINER Glen Baker <iepathos@gmail.com>

RUN apt-get -y update && \
    apt-get -y dist-upgrade
RUN apt-get install -y \
	build-essential \
	git \
	libpcap-dev \
	libxml2-dev \
	libxslt1-dev \
	python-requests \
	python-dnspython \
	python-setuptools \
	python-dev \
	python-pip \
	wget \
	zlib1g-dev && apt-get clean
RUN pip install --upgrade pip
RUN git clone https://LaNMaSteR53@bitbucket.org/LaNMaSteR53/recon-ng.git

# Changing the cwd from /opt/subscan to /recon-ng. Installing recon-ng
WORKDIR /recon-ng
RUN pip install -r REQUIREMENTS && ln -s /recon-ng /usr/share/recon-ng
# Downloading the custom enumall script and making it executable
RUN wget https://raw.githubusercontent.com/anshumanbh/domain/master/enumall.py && chmod +x enumall.py

ENTRYPOINT ["/recon-ng/enumall.py"]
CMD ["--help"]