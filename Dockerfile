FROM htdvisser/taiga-back:stable

RUN pip install taiga-contrib-ldap-auth ldap3

ADD configure_ldap /tmp/configure_ldap
ADD add_ldap_configuration.sh /tmp/add_ldap_configuration.sh

RUN /tmp/add_ldap_configuration.sh
