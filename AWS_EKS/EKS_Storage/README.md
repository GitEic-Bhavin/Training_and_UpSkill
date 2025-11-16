Here is the **complete, polished, GitHub-ready `README.md`** based fully on the cleaned-up lecture text you provided.
No technical meaning is changed — only structured, formatted, and written clearly for documentation standards.

---

# **AWS EKS Storage – Complete Guide (EBS, CSI Drivers, MySQL & User Service)**

This documentation explains **AWS EKS Storage**, CSI drivers, and how we build a **MySQL deployment with persistent storage** using **EBS CSI Driver**, along with a **User Management microservice** connected to the database.

This is a cleaned, structured version of the lecture — ready for GitHub, Confluence, or project documentation.

---

## **Overview of EKS Storage**

- Amazon EKS supports multiple storage drivers and provisioners:

| Storage Type                  | Notes                                           |
| ----------------------------- | ----------------------------------------------- |
| **In-Tree EBS Provisioner**   | Legacy, will be deprecated soon                 |
| **EBS CSI Driver**            | Recommended, supports persistent volumes        |
| **EFS CSI Driver**            | Managed NFS file system, supports multiple pods |
| **FSx for Lustre CSI Driver** | High-performance Windows/Linux workloads        |

Kubernetes is moving completely to **CSI Drivers**, so in-tree provisioners are being phased out.


## **What is CSI?**

**CSI — Container Storage Interface**

- CSI allows Kubernetes to use external storage systems such as:

* **EBS** – Block storage
* **EFS** – Networked file system
* **FSx for Lustre** – High-performance file system


## Important Notes About CSI Drivers

* CSI drivers are **production-ready** and have more capabilities.
* **NOT supported** on **AWS EKS Fargate** (serverless pods cannot attach storage).
* CSI drivers allow full **lifecycle management** of:

  * EBS volumes
  * EFS file systems
  * FSx for Lustre volumes

### Kubernetes Version Support

* **EBS & EFS CSI Drivers** → Supported from **Kubernetes v1.14+**
* **FSx for Lustre CSI Driver** → Supported from **Kubernetes v1.16+**


## Understanding Amazon EBS

EBS (Elastic Block Store) provides block-level storage volumes used with:

* EC2 Instances
* EKS Worker Nodes (Container Instances)

### Key Characteristics

* Volumes persist **independently** even if EC2/node/pod is terminated.
* You can dynamically:

  * Increase/decrease volume size
  * Change performance modes
  * Modify configuration

### When to Use EBS?

* Databases (MySQL, PostgreSQL, MongoDB)
* Random read/write applications
* Throughput-intensive applications


## 🏗️ What We Will Build in EKS

We will deploy a **MySQL database** with **persistent EBS storage** and a **User Management microservice**.

### **High-Level Components**

1. **EKS Cluster**
2. **EBS CSI Driver Installed**
3. **MySQL Deployment**

   * Persistent storage using EBS
   * Environment variables for DB config
   * ConfigMap for schema
   * ClusterIP service (internal access)
4. **User Management Microservice (Spring Boot)**

   * CRUD operations for users
   * Connects to MySQL
   * Exposed via NodePort (external access)
5. **Dynamic Volume Provisioning**


## Kubernetes Concepts Used

* **StorageClass**
* **PersistentVolumeClaim (PVC)**
* **Dynamic Volume Provisioning** (no manual PV creation)
* **ConfigMap**
* **Environment Variables**
* **Volumes & VolumeMounts**
* **ClusterIP Service**
* **NodePort Service**


## Why Dynamic Provisioning?

Earlier workflow:

```
StorageClass → PersistentVolume → PersistentVolumeClaim → Pod
```

Now:

```
PVC → Automatically creates EBS volume → Automatically binds to pod
```

No need to manually create PV.


## Deployment Sequence

1. Install **EBS CSI Driver** on EKS
2. Deploy **MySQL database** with EBS persistent volume
3. Deploy **ClusterIP service** for internal DB access
4. Deploy **User Management Microservice**
5. Deploy **NodePort service** for external access

## 1. Install **EBS CSI Driver** on EKS

- Go to EKS > Add-Ons > EKS EBS CSI Driver

    - Create IAM Role for EBS Driver to Crate dynamically EBS while required.

    ![alt text](ebsdriverpolicy.png)

- Use this Role into EBS CSI Driver.

- Varify EBS Driver Pod is running in `kube-system` namespace.

![alt text](ebspodns.png)


