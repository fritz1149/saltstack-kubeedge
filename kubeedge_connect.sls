manually_create_mqtt_container:
    cmd.run:
        - name: nohup nerdctl -n k8s.io run -p 1883:1883 {{ pillar['kubeedge']['mqtt_image'] }} &
        - shell: /bin/bash
        - timeout: 60
keadm_join:
    file.absent:
        - name: /etc/kubeedge
    cmd.run:
        - name: keadm join --cloudcore-ipport={{ pillar['kubeedge']['cloudcore-ipport'] }} --token={{ pillar['kubeedge']['token'] }}
        - timeout: 60
