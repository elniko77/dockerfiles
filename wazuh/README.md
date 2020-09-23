
# docker-compose para el manager del siem Wazuh

Para que elasticsearch funcione, en el host:
    
    sudo sysctl -w vm.max_map_count=262144

Instalar los agentes:


    # curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | apt-key add -
    # echo "deb https://packages.wazuh.com/3.x/apt/ stable main" | tee /etc/apt/sources.list.d/wazuh.list
    # apt update
    # WAZUH_MANAGER="XX.XX.XX.XX" install wazuh-agent




    
