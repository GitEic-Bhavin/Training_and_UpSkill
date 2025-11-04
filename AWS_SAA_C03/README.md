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


# Amazon EC2 Cost Optimization Options

- You can use the following options to **optimize your costs** for Amazon EC2:

| **Option** | **Description** |
|-------------|-----------------|
| **On-Demand Instances** | Pay **by the second** for the instances that you launch. |
| **Savings Plans** | Reduce EC2 costs by committing to a **consistent amount of usage (USD/hour)** for **1 or 3 years**. |
| **Reserved Instances** | Commit to a **specific instance configuration** (type and Region) for **1 or 3 years** to reduce costs. |
| **Spot Instances** | Request **unused EC2 capacity** at significantly reduced prices (up to 90% off). |
| **Dedicated Hosts** | Pay for a **physical host** dedicated to your use; bring your own software licenses to save costs. |
| **Dedicated Instances** | Pay **by the hour** for instances running on **single-tenant hardware**. |
| **Capacity Reservations** | **Reserve capacity** in a specific **Availability Zone** to ensure instance availability. |
