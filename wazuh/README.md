
docker-compose para el manager del siem Wazuh

Instalar los agentes:


    # curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | apt-key add -
    # echo "deb https://packages.wazuh.com/3.x/apt/ stable main" | tee /etc/apt/sources.list.d/wazuh.list
    # apt update
    # WAZUH_MANAGER="XX.XX.XX.XX" install wazuh-agent




    
