IAM Security Tools
---

- AWS offers several security tools to enhance IAM security and protect against unauthorized access:

    1. `IAM Access Advisor`: Access advisor shows the service permissions granteed to a user and when those services were last accessed.

    - Go to IAM > Users > Choose IAM User > Last Accessed.

    ![alt text](ia.png)

    2. `IAM Credential Report`: Provides a detailed list of all users and their associated credentials, helping administrators monitor and manage IAM users effectively.

    - Go to IAM > Access Reports > Credential Reports > Click on `Download credential report`.
    
    ![alt text](cr.png)


EC2 Instance Type
---

1. Memory Optimize

- Fast performance for workloads that process large data sets in memory.

**Use case**
 
  - High performance, db.
  - Distributed web scale cache stores
  - In-memory db optimized for BI.

2. Storage Optimize

- Great for storage-intensive tasks that require high read and write access to large data sets.

**Use case**
 
  - High Freq online transaction processing systems
  - Relational & NoSQL DB.

3. Compute Optimize

- Great for compute-intensive tasks that require high performance processor

**Use case**

  - Batch Processing wl
  - Media transcoding
  - High performance Computing
  - Dedicated gaming servers
  - Machine learning
  