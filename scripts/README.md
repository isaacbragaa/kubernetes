# Scripts de Configuração (NFS + MicroK8s)

Esta pasta contém os scripts utilizados para configurar o **servidor NFS** e os **nós Kubernetes (MicroK8s)**.

---

## 📂 Arquivos

- **setup_nfs.sh**  
  Script para configurar o **servidor NFS externo**.  
  Ele realiza:
  - Instalação do pacote `nfs-kernel-server`.
  - Criação do diretório `/srv/nfs/kubedata`.
  - Configuração do arquivo `/etc/exports` para compartilhar o diretório.
  - Reinício do serviço NFS.

- **setup_microk8s.sh**  
  Script para preparar cada **nó Kubernetes (principal e workers)**.  
  Ele realiza:
  - Instalação do MicroK8s.
  - Adição do usuário ao grupo `microk8s`.
  - Ativação de addons essenciais (`dns`, `storage`, `helm3`).
  - Criação de alias para `kubectl`.

---

### No servidor NFS:
```bash
chmod +x setup_nfs.sh
./setup_nfs.sh
