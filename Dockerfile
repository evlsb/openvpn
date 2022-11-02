FROM ubuntu

# COPY ./sys/sysctl.conf /etc/sysctl.conf

WORKDIR /app
COPY . .

RUN apt update
# RUN apt install -y sudo openvpn easy-rsa nano ufw



# RUN mkdir ~/easy-rsa
# RUN mkdir -p /app/files/ca
# RUN mkdir -p /app/files/server
# RUN mkdir -p /app/files/clients
# RUN mkdir -p /app/files/ta
# RUN mkdir -p /app/files/config
# RUN ln -s /usr/share/easy-rsa/* ~/easy-rsa/

# COPY ./init_pki /app/init_pki
# COPY ./build_ca /app/build_ca
# COPY ./build_server /app/build_server
# COPY ./build_client /app/build_client
# COPY ./build_ta /app/build_ta
# COPY ./sys /app/sys



# RUN /app/init_pki/init_pki.sh
# RUN /app/build_ca/build_ca.sh
# RUN /app/build_server/build_server.sh
# RUN /app/build_client/build_client.sh
# RUN /app/build_ta/build_ta.sh











