version: 0.1
arch: amd64
containerd:
    version: 1.7.5
cni:
    version: 1.3.0
nerdctl:
    version: 1.5.0
images:
- file_name: k8s.tar
  image_name: registry.k8s.io/pause:3.8
- file_name: mqtt.tar
  image_name: docker.io/library/eclipse-mosquitto:1.6.15
- file_name: kubeedge_1.tar
  image_name: docker.io/kubeedge/installation-package:v1.14.2
- file_name: kubeedge_2.tar
  image_name: docker.io/kubeedge/pause:3.6
- file_name: kubeedge_3.tar
  image_name: docker.io/kubeedge/edgemesh-agent:v1.14.0
kubeedge:
    cloudcore-ipport: 192.168.6.2:10000
    token: f1cff12e7b4dfbbcf4d6befc91e4aefa8fee6e13c1954866de511f2cf098aafe.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2OTk1ODM3MDR9.r_Wa90ck-cD5o0G-9LDKei0C5GoNnktmTHMN2HIE5wc
    version: 1.14.2
    mqtt_image: docker.io/library/eclipse-mosquitto:1.6.15
    