FROM ubuntu:22.04

# Install openssh-server for ssh 
RUN apt-get update -y && apt-get install -y openssh-server 

# Add vhc_guest user 
RUN useradd -m vhc_guest

# Change password 
RUN echo "vhc_guest:vhc_guest" | chpasswd 

# Setup SSH for vhc_guest 
RUN mkdir /home/vhc_guest/.ssh/
RUN mkdir /var/run/sshd 
RUN chown -R vhc_guest:vhc_guest /home/vhc_guest/.ssh/ 
RUN chmod -R 700 /home/vhc_guest/.ssh/ 

# Enable password authentication & kick other login requests for other users. 
RUN sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Change the default shell to bash
RUN usermod -s /bin/bash vhc_guest

# Setup challenge folder 
WORKDIR /home/vhc_guest/ 
COPY ./bin/ /home/vhc_guest/

RUN chown root:root /home/vhc_guest/cookie && \
    chown root:vhc_guest /home/vhc_guest/cookie_seller && \
    chmod 4750 /home/vhc_guest/cookie_seller && \
    chmod 600 /home/vhc_guest/cookie

EXPOSE 22 

CMD ["/usr/sbin/sshd", "-D"]
