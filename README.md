# Provisionamento de Cluster Kubernetes com NFS Externo e PostgreSQL

Este repositório contém os artefatos do TCC: *Uso de Volumes Persistentes em Cluster Kubernetes: Um Estudo Prático (IFRN)*.  

O ambiente é baseado em:
- Um **servidor externo NFS**, responsável por prover armazenamento persistente compartilhado (RWX).
- Um **cluster Kubernetes (MicroK8s)** com **3 nós** (1 principal e 2 workers).
- Uma aplicação **PostgreSQL em StatefulSet** (1 réplica por vez), armazenando seus dados no NFS.



## Estrutura
- [prov](prov/README.md) → Manifestos YAML para PV, PVC, StorageClass e StatefulSet PostgreSQL.  
- [scripts](scripts/README.md) → Scripts de instalação e configuração do NFS Server e MicroK8s. Mas pode usar comando por comando, caso dê problema o script



## Em cada maquina

1. Configure o **servidor NFS** com scripts/setup_nfs.sh.
2. Instale e configure o **MicroK8s** em cada nó com scripts/setup_microk8s.sh.
3. Aplique os **manifests Kubernetes**:
   bash
   kubectl apply -f manifests/nfs-pv.yaml
   kubectl apply -f manifests/nfs-pvc.yaml
   kubectl apply -f manifests/postgresql.yaml
