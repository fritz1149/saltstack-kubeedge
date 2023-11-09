install_containerd:
    pkg.installed:
    - sources:
        - containerd: salt://files/debs/containerd.deb