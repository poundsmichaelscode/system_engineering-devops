# Cloud Computing Final Exam Study Guide

**Prepared for:** WG  
**Focus:** Azure Cloud, DevOps, Git/GitHub, Docker, Kubernetes, Linux, Cloud Security, Infrastructure as Code, and Microservices.

This README summarizes the quiz questions discussed in this chat and turns them into a practical learning guide. Use it as a revision document, a personal roadmap, and a hands-on practice checklist to become stronger as a:

- Cloud Developer
- DevOps Engineer
- Cloud Security Engineer
- Azure Administrator
- Cloud-Native Application Developer

---

## Table of Contents

1. [Core Exam Answer Key](#core-exam-answer-key)
2. [Topic Explanations](#topic-explanations)
3. [Azure Cloud Fundamentals](#azure-cloud-fundamentals)
4. [Azure Networking and Security](#azure-networking-and-security)
5. [Git and GitHub](#git-and-github)
6. [Docker and Containers](#docker-and-containers)
7. [Kubernetes](#kubernetes)
8. [Linux Fundamentals](#linux-fundamentals)
9. [DevOps and CI/CD](#devops-and-cicd)
10. [Cloud Security Engineering](#cloud-security-engineering)
11. [Hands-On Labs](#hands-on-labs)
12. [Portfolio Projects](#portfolio-projects)
13. [Certifications Roadmap](#certifications-roadmap)
14. [Recommended Documentation](#recommended-documentation)
15. [Recommended YouTube Videos](#recommended-youtube-videos)
16. [Practice Plan](#practice-plan)

---

# Core Exam Answer Key

## Azure, Cloud, Security, Git, Docker, Kubernetes, and Linux

| No. | Question Summary | Correct Answer | Key Idea |
|---|---|---|---|
| 1 | PR must pass automated tests before merge | A | Required status checks with branch protection |
| 2 | Script checks if resource group exists before creating | B | Idempotency-aware scripting |
| 3 | Encrypting data at rest | B | Protect stored data on disk/database |
| 4 | Git merge conflict from same lines | B | Review both changes and commit resolution |
| 5 | Subnets in same VNet communicate by default | A | Same VNet routing unless blocked by NSG/routes |
| 6 | NSG priority 100 deny overrides priority 200 allow | B | Lower priority number wins |
| 7 | “Your excuses are valid, but…” | C | Work remains unchanged regardless |
| 8 | Connect VNets across different tenants/subscriptions | D | Provision virtual network gateways |
| 9 | SSE abbreviation | C | Student Success Executive |
| 10 | Storage account: hot/cool/archive + disaster tolerance + cost | C | StorageV2 + Standard GRS |
| 11 | Hybrid cloud meaning | B | Combine on-prem/private with public cloud |
| 12 | CI pipeline builds and pushes image automatically | A | GitHub Actions |
| 13 | Azure CLI group create without subscription | B | Uses active/default subscription |
| 14 | Hospital keeps records private but bursts analytics to cloud | C | Hybrid cloud |
| 15 | GitHub fork | C | Copy repo under your GitHub account |
| 16 | AWS equivalent of Azure Blob Storage | B | Amazon S3 |
| 17 | Azure CLI login command | C | `az login` |
| 18 | Dockerfile definition | B | Instructions for building Docker image |
| 19 | Extraordinary result | A | Do what others are not willing to do |
| 20 | SaaS product | C | Microsoft 365 / Google Workspace |
| 21 | Branch protection with approving review | B | Catch errors and enforce quality |
| 22 | Owning data center challenge | B | Upfront cost and slow procurement |
| 23 | Physical servers managed internally | B | Traditional/on-premises computing |
| 24 | Container vs VM | B | Containers share host OS kernel |
| 25 | Rows/columns lightweight NoSQL storage | B | Azure Table Storage |
| 26 | Server in minutes without buying hardware | B | Public cloud |
| 27 | Dockerfile command that copies files | A | `COPY` |
| 28 | Linux command to change permissions | A | `chmod` |
| 29 | Check active Azure subscription | A | `az account show` |
| 30 | Web servers public HTTPS; DB private | B | Segment subnets and restrict inbound rules |
| 31 | AWS equivalent of Azure VM | B | EC2 |
| 32 | Not a reason to migrate to cloud | C | Cloud does not guarantee no vendor lock-in |
| 33 | Create new Linux user | A | `useradd` or `adduser` |
| 34 | Merge directly into main without PR | B | No code review validation |
| 35 | DB password in public repo | B | Exposes sensitive credentials |
| 36 | `docker ps` displays | A | Running containers |
| 37 | “What you seek is equally seeking…” | B | Transformed version of you |
| 38 | Onboarding webinar quoted individuals | C | Vusi & AJS |
| 39 | Allow SSH only from corporate IP | A | Defense in depth / least privilege |
| 40 | Kubernetes on VMs manually vs managed AKS/EKS | C | More control, more responsibility |
| 41 | Microservices vs containers | B | Architecture vs packaging/runtime |
| 42 | Midterm webinar topic | B | Learner to creator; real problem projects |
| 43 | Pod crashes repeatedly | B | Kubernetes restarts automatically |
| 44 | Monolith shared library risk | B | One change can break unrelated module |
| 45 | IaaS responsibility | A | Customer manages OS/runtime/app |
| 46 | SMB file shares in Azure | C | Azure Files |
| 47 | Kubernetes advantage over `docker run` | B | Scheduling, self-healing, scaling, discovery |
| 48 | Greatest obstacle to success | A | Yourself / mirror |
| 49 | NSG priority 100 vs 200 | B | Lower number has higher precedence |
| 50 | GitHub Secrets purpose | A | Securely store credentials for workflows |
| 51 | Realistic microservices trade-off | B | Distributed debugging and orchestration overhead |
| 52 | Unstructured data: images/videos/logs | C | Blob Storage |
| 53 | GitHub Actions workflow | B | YAML automation triggered by repo events |
| 54 | Maximum control over OS/runtime | C | IaaS |
| 55 | IaC via CLI scripts | B | Track, review, reproduce infrastructure changes |
| 56 | Multi-stage Docker builds | B | Smaller, cleaner runtime image |
| 57 | Azure tags | B | Organization, cost tracking, governance |
| 58 | Minimal Docker base image | B | Smaller image and less attack surface |
| 59 | `docker push` | B | Upload image to registry |
| 60 | Script returns permission denied | B | File may not be executable |
| 61 | Choosing AWS vs Azure | B | Requirements, skill, pricing, service capability |
| 62 | Azure Resource Group | B | Logical container for related resources |
| 63 | Public IP resource | A | Internet reachable subject to firewall/NSG |
| 64 | VM service uses identity of VM to manage RG | A | Enable Managed Identity first |
| 65 | Containers avoid dependency conflicts | B | Each container packages dependencies in isolation |
| 67 | Push code, platform manages OS/runtime/scaling | B | PaaS |
| 68 | Watch last 50 log lines live | A | `tail -f -n 50 logfile.log` |

---

# Topic Explanations

## 1. Cloud Service Models

### IaaS — Infrastructure as a Service

You rent infrastructure such as VMs, disks, and networking. You manage the OS, patching, runtime, middleware, application, and data.

**Examples:**

- Azure Virtual Machines
- AWS EC2

**Best when:**

- You need maximum control.
- You want to choose your own OS and runtime.
- You are comfortable managing patching and scaling.

---

### PaaS — Platform as a Service

You deploy code, and the cloud provider manages the servers, OS, patching, runtime platform, and scaling.

**Examples:**

- Azure App Service
- Google App Engine
- AWS Elastic Beanstalk

**Best when:**

- You want to focus on application code.
- You do not want to manage servers.
- You want faster deployments.

---

### SaaS — Software as a Service

You use a complete application over the internet. You do not manage the infrastructure, platform, runtime, or application code.

**Examples:**

- Microsoft 365
- Google Workspace
- Salesforce

---

## 2. Cloud Deployment Models

### Public Cloud

Cloud resources are provided by vendors like Azure, AWS, or Google Cloud. You can provision servers quickly and pay as you go.

### Private Cloud / On-Premises

The organization owns and manages its infrastructure, including servers, networking, cooling, power, hardware refresh, and physical security.

### Hybrid Cloud

Hybrid cloud combines private/on-premises infrastructure with public cloud services.

**Example:**

A hospital keeps patient records on infrastructure it directly controls but uses public cloud for non-sensitive analytics during peak demand.

---

# Azure Cloud Fundamentals

## Azure Resource Group

A Resource Group is a logical container for related Azure resources.

Example:

```text
Resource Group: production-web-rg
- Virtual Machine
- Storage Account
- Virtual Network
- Network Security Group
- Public IP
```

Resource Groups help with:

- Lifecycle management
- Access control
- Monitoring
- Cost management
- Organization

---

## Azure Subscription

A subscription is a billing and management boundary in Azure.

Useful command:

```bash
az account show
```

Set active subscription:

```bash
az account set --subscription "<subscription-id-or-name>"
```

Create a resource group:

```bash
az group create --name test-rg --location eastus
```

If you do not specify a subscription, Azure CLI uses the currently active/default subscription.

---

## Azure Managed Identity

A managed identity lets an Azure resource authenticate to other Azure services without storing credentials.

Example:

A service running on VM1 needs to manage resources in RG1 using the identity of VM1.

Correct order:

```text
1. Enable Managed Identity on VM1
2. Assign RBAC role on RG1 to VM1's managed identity
```

---

# Azure Networking and Security

## Virtual Network and Subnets

A VNet is a private network in Azure. Subnets divide the VNet into smaller network segments.

Example:

```text
VNet: 10.0.0.0/16
- Web Subnet: 10.0.1.0/24
- App Subnet: 10.0.2.0/24
- Database Subnet: 10.0.3.0/24
```

By default, subnets in the same VNet can usually communicate using private IP routing unless NSGs, route tables, or firewalls restrict traffic.

---

## Network Security Groups

NSGs filter inbound and outbound traffic using rules.

Important rule:

```text
Lower priority number = higher priority
```

Example:

```text
Priority 100: Deny TCP 22 from Any
Priority 200: Allow TCP 22 from 10.0.0.0/24
```

SSH fails because priority 100 is evaluated first.

---

## Secure Web and Database Design

Correct design:

```text
Internet
  ↓ HTTPS 443 only
Web Subnet
  ↓ Private traffic only
Database Subnet
```

Best practice:

- Web servers may accept inbound HTTPS.
- Database servers should have no public inbound access.
- Database access should only come from trusted internal services.

---

## Public IP vs Private IP

A resource with a public IP can be reachable from the internet if firewall/NSG rules allow it.

A private IP is used inside a VNet.

---

## Azure Storage Types

| Storage Type | Best For |
|---|---|
| Blob Storage | Images, videos, logs, backups, documents |
| Azure Files | SMB file shares / network drive style access |
| Queue Storage | Message queues between application components |
| Table Storage | Lightweight NoSQL structured rows and columns |

---

## Storage Account Kind and Redundancy

For hot, cool, and archive tiers, use **StorageV2**.

For disaster tolerance across regions, use **GRS** or **RA-GRS**.

Example:

```bash
az storage account create \
  -g RG1 \
  -n storageaccount1 \
  --kind StorageV2 \
  --sku Standard_GRS
```

---

# Git and GitHub

## Git Architecture

```text
Working Directory → Staging Area → Local Repository → Remote Repository
```

| Component | Meaning |
|---|---|
| Working Directory | Current files you are editing |
| Staging Area / Index | Snapshot prepared for next commit |
| Local Repository | Git history stored on your machine |
| Remote Repository | GitHub/GitLab/Azure Repos |

---

## Important Git Commands

```bash
git status
git add app.py
git add .
git restore --staged file.txt
git commit -m "message"
git push
git pull
git diff
git diff --staged
```

---

## `git add`

`git add app.py` prepares the current state of `app.py` for the next commit.

It does not push to GitHub and does not permanently commit the file.

---

## Staging Area

The staging area lets you review exactly what will be committed.

Useful command:

```bash
git diff --staged
```

If you staged a file and then edited it again, the commit contains the staged version, not the latest working directory version, unless you run `git add` again.

---

## Merge Conflicts

Merge conflicts occur when Git cannot automatically combine changes.

Example:

Developer A changes:

```python
username = "Admin"
```

Developer B changes:

```python
username = "Guest"
```

Correct response:

```text
Review both changes → decide final version → save file → git add → git commit
```

---

## Branch Protection

Branch protection rules help prevent risky code from entering `main`.

Recommended rules:

- Require pull request before merge
- Require at least one approving review
- Require status checks to pass
- Prevent force pushes
- Restrict who can push to main
- Require signed commits if needed

---

## GitHub Secrets

GitHub Secrets are used to store sensitive values like:

- API keys
- Database passwords
- Cloud credentials
- Deployment tokens

Never commit passwords directly into source code.

Bad:

```text
Database Password: SuperSecret123
```

Good:

```text
DATABASE_PASSWORD stored in GitHub Secrets
```

---

## GitHub Fork

A fork creates a copy of a repository under your GitHub account. It is useful for:

- Contributing to open source
- Experimenting safely
- Creating pull requests back to the original repository

---

# Docker and Containers

## Docker Image vs Container

| Item | Meaning |
|---|---|
| Docker Image | Immutable template/blueprint |
| Docker Container | Running or stopped instance of an image |

Example:

```bash
docker pull nginx
docker images
docker run nginx
docker ps
```

Deleting containers does not delete the image.

---

## Important Docker Commands

```bash
docker build -t myapp:latest .
docker run -p 3000:3000 myapp:latest
docker ps
docker ps -a
docker images
docker pull nginx
docker push myusername/myapp:latest
docker stop <container-id>
docker rm <container-id>
docker rmi <image-id>
```

---

## Dockerfile

A Dockerfile is a set of instructions for building a Docker image.

Example:

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
CMD ["npm", "start"]
```

---

## Dockerfile Best Practices

### 1. Copy dependency files first

Bad:

```dockerfile
COPY . .
RUN npm install
```

Better:

```dockerfile
COPY package*.json ./
RUN npm ci
COPY . .
```

This improves Docker layer caching.

### 2. Use `.dockerignore`

Example `.dockerignore`:

```text
node_modules
.git
.env
dist
coverage
```

### 3. Use minimal base images

Example:

```dockerfile
FROM node:18-alpine
```

Minimal images reduce:

- Image size
- Unnecessary packages
- Potential security vulnerabilities

### 4. Use multi-stage builds

Multi-stage builds separate build-time dependencies from the final runtime image.

Example:

```dockerfile
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:18-alpine AS runner
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY package*.json ./
RUN npm ci --omit=dev
CMD ["node", "dist/server.js"]
```

---

## Docker Registry

A centralized registry stores Docker images so the team does not depend on one developer’s laptop.

Examples:

- Docker Hub
- Azure Container Registry
- GitHub Container Registry
- Amazon ECR

Push image:

```bash
docker push myusername/myapp:latest
```

---

# Kubernetes

## What Kubernetes Provides

Compared to running containers manually with `docker run`, Kubernetes provides:

- Automated scheduling
- Self-healing
- Scaling
- Service discovery
- Rolling deployments
- Load balancing
- Declarative configuration

---

## Pod Restart Behavior

If a pod crashes repeatedly, Kubernetes attempts to restart it automatically. If it keeps failing, you may see:

```text
CrashLoopBackOff
```

Useful troubleshooting commands:

```bash
kubectl get pods
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl get events
```

---

## Managed Kubernetes vs Manual Kubernetes

| Option | Benefit | Trade-off |
|---|---|---|
| Manual Kubernetes on VMs | More control | More operational responsibility |
| AKS/EKS/GKE | Less operational burden | Less low-level control |

Managed services:

- Azure Kubernetes Service (AKS)
- Amazon Elastic Kubernetes Service (EKS)
- Google Kubernetes Engine (GKE)

---

# Linux Fundamentals

## File Permissions

Change permissions:

```bash
chmod +x script.sh
```

Run script:

```bash
./script.sh
```

If you see:

```text
Permission denied
```

The script may not be executable.

---

## Create User

```bash
sudo useradd username
```

or:

```bash
sudo adduser username
```

---

## List Files

```bash
ls
ls -l
ls -a
ls -la
```

| Command | Meaning |
|---|---|
| `ls` | Normal files |
| `ls -l` | Detailed listing |
| `ls -a` | All files including hidden files |
| `ls -la` | All files with detailed permissions |

---

## Directory Navigation

```bash
cd /var/log
cd ..
pwd
```

Output:

```text
/var
```

---

## Monitor Logs

View last 50 lines and follow new entries:

```bash
tail -f -n 50 logfile.log
```

---

# DevOps and CI/CD

## GitHub Actions Workflow

A GitHub Actions workflow is an automated process defined in YAML.

Common location:

```text
.github/workflows/ci.yml
```

Example:

```yaml
name: CI

on:
  pull_request:
  push:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install dependencies
        run: npm ci
      - name: Run tests
        run: npm test
```

---

## Build and Push Docker Image with GitHub Actions

```yaml
name: Build and Push Docker Image

on:
  push:
    branches: [main]

jobs:
  docker:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Login to Docker Hub
        uses: docker/login-action@v3
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}

      - name: Build image
        run: docker build -t myusername/myapp:latest .

      - name: Push image
        run: docker push myusername/myapp:latest
```

---

## Infrastructure as Code

Infrastructure as Code means infrastructure is defined with scripts or configuration files.

Benefits:

- Repeatable deployments
- Version control
- Pull request review
- Auditing
- Consistency
- Rollback possibility

Example idempotent Azure CLI script:

```bash
RG_NAME="demo-rg"
LOCATION="eastus"

if az group show --name "$RG_NAME" > /dev/null 2>&1; then
  echo "Resource group already exists"
else
  az group create --name "$RG_NAME" --location "$LOCATION"
fi
```

---

# Cloud Security Engineering

## Authentication vs Authorization

| Concept | Meaning |
|---|---|
| Authentication | Proving who you are |
| Authorization | What you are allowed to do |

Example:

- Username + Password + MFA = Authentication
- Delete VM permission = Authorization

If login succeeds but VM deletion returns Access Denied, authentication worked but authorization failed.

---

## Principle of Least Privilege

Users should only receive the permissions they need.

Bad:

```text
Give everyone Owner access
```

Good:

```text
Give Reader, Contributor, or custom role only where needed
```

---

## Azure RBAC Roles

| Role | Permission |
|---|---|
| Reader | View resources only |
| Contributor | Create, modify, delete resources, but cannot assign permissions |
| Owner | Full access including assigning permissions |
| User Access Administrator | Manage access permissions |

---

## Scope Matters

Azure RBAC can be assigned at:

```text
Management Group
Subscription
Resource Group
Resource
```

A more specific scope applies to resources inside that scope.

Example:

```text
Reader at Subscription
Contributor on VM1 only
```

The user can view all subscription resources but only manage VM1.

---

## Secrets Management

Never store secrets in:

- Source code
- Public repositories
- Plain text config files
- Docker images
- Shared screenshots

Use:

- GitHub Secrets
- Azure Key Vault
- Environment variables
- Managed identities
- Secret scanning

---

## Defense in Depth

Defense in depth means using multiple layers of protection.

Example:

```text
MFA
RBAC
NSG rules
Private subnets
Secrets manager
Logging
Monitoring
Backups
Branch protection
```

---

# Hands-On Labs

## Lab 1: Azure CLI Basics

Practice:

```bash
az login
az account show
az account list --output table
az account set --subscription "<subscription-name>"
az group create --name practice-rg --location eastus
az group list --output table
az group delete --name practice-rg --yes
```

Goal:

- Understand subscriptions
- Create and delete resource groups
- Avoid deploying into the wrong subscription

---

## Lab 2: Azure Networking

Create:

```text
VNet: 10.0.0.0/16
Web Subnet: 10.0.1.0/24
App Subnet: 10.0.2.0/24
DB Subnet: 10.0.3.0/24
```

Practice:

- Add NSG to web subnet
- Allow inbound HTTPS 443
- Allow SSH only from your IP
- Deny public inbound access to database subnet

---

## Lab 3: Git Workflow

Practice:

```bash
git init
echo "hello" > app.txt
git status
git add app.txt
git diff --staged
git commit -m "initial commit"
git checkout -b feature/login
```

Then create a merge conflict intentionally and resolve it.

---

## Lab 4: GitHub Actions CI

Create a simple Node.js or Python app.

Add:

```text
.github/workflows/ci.yml
```

Run tests automatically on pull requests.

Then enable branch protection:

- Require pull request
- Require status checks
- Require review

---

## Lab 5: Dockerize a Node.js App

Create:

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
CMD ["npm", "start"]
```

Build and run:

```bash
docker build -t node-demo .
docker run -p 3000:3000 node-demo
```

---

## Lab 6: Push Image to Registry

Practice:

```bash
docker tag node-demo myusername/node-demo:latest
docker push myusername/node-demo:latest
docker pull myusername/node-demo:latest
```

---

## Lab 7: Kubernetes Basics

Install Minikube or use Docker Desktop Kubernetes.

Practice:

```bash
kubectl create deployment nginx --image=nginx
kubectl get pods
kubectl expose deployment nginx --type=NodePort --port=80
kubectl scale deployment nginx --replicas=3
kubectl describe pod <pod-name>
kubectl logs <pod-name>
```

---

## Lab 8: Linux Admin Practice

Practice:

```bash
pwd
cd /var/log
cd ..
ls -la
touch script.sh
chmod +x script.sh
tail -f -n 50 /var/log/syslog
sudo useradd testuser
```

---

# Portfolio Projects

Build these projects to become better as a cloud developer, DevOps engineer, and cloud security engineer.

## Project 1: Azure Static Website with CI/CD

Build a React or Next.js app and deploy it automatically with GitHub Actions.

Skills:

- GitHub Actions
- Azure Static Web Apps
- Branch protection
- Secrets

---

## Project 2: Dockerized API

Build a Node.js/Express or FastAPI backend and containerize it.

Skills:

- Dockerfile
- Docker images
- Multi-stage builds
- Docker Hub or Azure Container Registry

---

## Project 3: Secure Azure VM Deployment

Provision a Linux VM with:

- SSH allowed only from your IP
- NSG rules
- Tags
- Managed identity
- Monitoring

Skills:

- Azure CLI
- NSG
- RBAC
- VM management

---

## Project 4: Kubernetes Mini Deployment

Deploy a containerized app to Kubernetes.

Include:

- Deployment
- Service
- ConfigMap
- Secret
- Replica scaling

Skills:

- Kubernetes basics
- Self-healing
- Logs
- Scaling

---

## Project 5: Cloud Security Baseline

Create a secure cloud baseline:

- MFA
- RBAC least privilege
- NSG restrictions
- Secrets management
- Logging
- Budget alert
- Resource tagging

Skills:

- Cloud security engineering
- Governance
- IAM
- Cost control

---

## Project 6: Infrastructure as Code with Azure CLI

Write scripts that:

- Create a resource group
- Create a VNet and subnets
- Create an NSG
- Create a VM
- Use tags
- Check if resources exist before creating them

Skills:

- Azure CLI
- Idempotency
- IaC thinking

---

# Certifications Roadmap

## Beginner

1. **Microsoft Certified: Azure Fundamentals (AZ-900)**
2. **GitHub Foundations**
3. **Linux Foundation Introduction to Linux**

## Intermediate

1. **Microsoft Certified: Azure Administrator Associate (AZ-104)**
2. **Docker Certified Associate concepts**
3. **Kubernetes and Cloud Native Associate (KCNA)**

## DevOps

1. **Microsoft Certified: DevOps Engineer Expert (AZ-400)**
2. **GitHub Actions**
3. **Terraform Associate**

## Security

1. **Microsoft Certified: Security, Compliance, and Identity Fundamentals (SC-900)**
2. **Microsoft Certified: Azure Security Engineer Associate (AZ-500)**
3. **Certified Kubernetes Security Specialist concepts**

---

# Recommended Documentation

## Microsoft Azure

- Azure Fundamentals certification: https://learn.microsoft.com/en-us/credentials/certifications/azure-fundamentals/
- AZ-900 course: https://learn.microsoft.com/en-us/training/courses/az-900t00
- Azure Administrator certification: https://learn.microsoft.com/en-us/credentials/certifications/azure-administrator/
- AZ-104 learning paths: https://learn.microsoft.com/en-us/training/paths/az-104-administrator-prerequisites/
- Azure training: https://learn.microsoft.com/en-us/training/azure/
- Azure DevOps Engineer training: https://learn.microsoft.com/en-us/training/career-paths/devops-engineer
- Secure DevOps: https://learn.microsoft.com/en-us/training/modules/introduction-to-secure-devops/
- Azure Storage overview: https://learn.microsoft.com/en-us/azure/storage/common/storage-account-overview
- Azure Blob Storage: https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction
- Azure Queue Storage: https://learn.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction
- Azure NSG overview: https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview
- Azure NSG management: https://learn.microsoft.com/en-us/azure/virtual-network/manage-network-security-group

## GitHub

- GitHub Docs: https://docs.github.com/
- GitHub Actions: https://docs.github.com/en/actions
- GitHub Secrets: https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions
- Branch protection: https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches
- Fork a repo: https://docs.github.com/en/get-started/quickstart/fork-a-repo

## Docker

- Docker Docs: https://docs.docker.com/
- Dockerfile reference: https://docs.docker.com/reference/dockerfile/
- Multi-stage builds: https://docs.docker.com/build/building/multi-stage/
- Docker best practices: https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

## Kubernetes

- Kubernetes Docs: https://kubernetes.io/docs/
- Pod lifecycle: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/
- Deployments: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
- Services: https://kubernetes.io/docs/concepts/services-networking/service/

## Linux

- Linux Foundation Introduction to Linux: https://training.linuxfoundation.org/training/introduction-to-linux/
- edX Linux courses: https://www.edx.org/learn/linux

---

# Recommended YouTube Videos

## Azure

- AZ-900 Azure Fundamentals Full Course by freeCodeCamp: https://www.youtube.com/watch?v=5abffC-K40c
- AZ-900 Certification Course: https://www.youtube.com/watch?v=IUCEFBmYIog
- Microsoft Azure Fundamentals playlist: https://www.youtube.com/playlist?list=PLGjZwEtPN7j-Q59JYso3L4_yoCjj2syrM
- Azure Fundamentals by Adam Marczak: https://marczak.io/az-900/

## Git and GitHub

- Git and GitHub for Beginners by freeCodeCamp: https://www.youtube.com/watch?v=RGOj5yH7evk
- GitHub tutorial by Kevin Stratvert: https://www.youtube.com/watch?v=tRZGeaHPoaw
- Git & GitHub Crash Course: https://www.youtube.com/watch?v=mAFoROnOfHs

## Docker and Kubernetes

- Docker and Kubernetes Full Course by freeCodeCamp: https://www.youtube.com/watch?v=Wf2eSG3owoA
- Kubernetes Full Beginners Tutorial: https://www.youtube.com/watch?v=d6WC5n9G_sM
- Learn Kubernetes in 6 Hours: https://www.youtube.com/watch?v=_4uQI4ihGVU
- Complete Kubernetes Course: https://www.youtube.com/watch?v=2T86xAtR6Fo

## Linux

- Introduction to Linux Full Course for Beginners: https://www.youtube.com/watch?v=sWbUDq4S6Y8

---

# Practice Plan

## Week 1: Cloud and Azure Basics

Learn:

- Cloud models: IaaS, PaaS, SaaS
- Deployment models: public, private, hybrid
- Azure subscriptions
- Resource groups
- Azure CLI

Practice:

```bash
az login
az account show
az group create
az group list
az group delete
```

---

## Week 2: Azure Networking and Security

Learn:

- VNets
- Subnets
- NSGs
- Public IP vs private IP
- RBAC
- Managed identities

Practice:

- Create VNet
- Create web and database subnets
- Apply NSGs
- Restrict SSH
- Assign Reader and Contributor roles

---

## Week 3: Git and GitHub

Learn:

- Working directory
- Staging area
- Local repository
- Remote repository
- Branching
- Pull requests
- Merge conflicts

Practice:

- Create branches
- Open pull requests
- Resolve merge conflicts
- Enable branch protection
- Add GitHub Actions

---

## Week 4: Docker

Learn:

- Images vs containers
- Dockerfile
- Docker build
- Docker run
- Docker push
- Multi-stage builds

Practice:

- Dockerize a Node.js or Python app
- Push image to Docker Hub or Azure Container Registry

---

## Week 5: Kubernetes

Learn:

- Pods
- Deployments
- Services
- Replicas
- Self-healing
- Logs

Practice:

- Deploy nginx
- Scale replicas
- Break a pod intentionally
- Read logs
- Debug CrashLoopBackOff

---

## Week 6: DevOps and Cloud Security

Learn:

- CI/CD
- GitHub Secrets
- Least privilege
- Secret scanning
- IaC
- Cloud governance
- Tags
- Cost control

Practice:

- Build and push Docker images with GitHub Actions
- Store secrets in GitHub Secrets
- Create Azure resources with scripts
- Add tags to resources

---

# Daily Practice Checklist

Use this every day:

```text
[ ] Read 30 minutes of official documentation
[ ] Watch 30 minutes of tutorial video
[ ] Practice one CLI command group
[ ] Push one Git commit
[ ] Write one short explanation in your own words
[ ] Build or improve one small lab
[ ] Review security risks in your setup
```

---

# Key Mindset Notes

- Do not memorize only answers. Understand the reason behind each answer.
- Cloud engineering is practical. Build labs repeatedly.
- DevOps requires consistency: Git, CI/CD, automation, monitoring, and security.
- Cloud security is not a separate final step. It must be built into identity, networking, code, pipelines, secrets, and monitoring.
- The fastest way to grow is to build projects, document them, and explain them publicly.

---

# Final Advice

To become a strong cloud developer, DevOps engineer, and cloud security engineer, focus on this order:

```text
Linux → Git/GitHub → Azure fundamentals → Networking → Docker → CI/CD → Kubernetes → Security → IaC → Real projects
```

Do not rush. Practice one concept at a time, then combine them into projects.

Your goal should be to move from answering exam questions to building real, secure, automated cloud systems.

