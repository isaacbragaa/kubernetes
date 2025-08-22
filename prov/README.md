# Manifests Kubernetes (NFS + PostgreSQL)

Esta pasta contém os **arquivos YAML** utilizados no cluster Kubernetes do TCC.

## Arquivos

- **nfs-pv.yaml**  
  Define um **PersistentVolume (PV)** estático que aponta para o servidor NFS externo. (Verifique o ip) 
  Capacidade: 5Gi  
  Modo de acesso: ReadWriteMany (RWX)

- **nfs-pvc.yaml**  
  Cria um **PersistentVolumeClaim (PVC)** que consome o PV estático.  
  Solicita 2Gi de armazenamento.  

- **postgresql.yaml**  
  Implanta um **StatefulSet PostgreSQL** (1 réplica) que utiliza o PVC.  
  Inclui também um **Service** para expor a porta 5432.  

---

## Executar

Execute no nó principal do cluster:

```bash
kubectl apply -f nfs-pv.yaml
kubectl apply -f nfs-pvc.yaml
kubectl apply -f postgresql.yaml
