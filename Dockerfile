FROM centos:7

# Update YUM metadata and install wget
RUN yum clean all && yum makecache && yum install wget -y

# Add Jenkins repository
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins key
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
