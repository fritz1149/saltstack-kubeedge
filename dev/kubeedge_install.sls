{% set master_version = pillar['version'] %}
{% set client_version = grains['version'] %}
{% if master_version > client_version %}
install_containerd:
    pkg.installed:
    - sources:
        - containerd: salt://files/debs/containerd.deb

get_image_files:
    file.recurse:
        - name: /root/images
        - source: salt://files/images

{% set images = pillar['images'] %}
{% for image in images %}
import_images_{{ image['file_name'] }}:
    cmd.run:
        - name: ctr -n k8s.io i import /root/images/{{ image['file_name'] }}
{% endfor %} 

transfer_keadm:
    file.managed:
        - name: /usr/local/bin/keadm
        - source: salt://files/execs/keadm
    cmd.run:
        - name: chmod +x /usr/local/bin/keadm
{% endif %}