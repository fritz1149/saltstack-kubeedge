rm_containers:
    cmd.run:
        - name: |
            for id in $(ctr -n k8s.io task ls -q)
            do
                ctr -n k8s.io task kill --signal SIGKILL $id
            done
            for id in $(ctr -n k8s.io c ls -q)
            do
                ctr -n k8s.io c rm $id
            done
remove_kubeedge_info:
    file.absent:
        - name: /etc/kubeedge