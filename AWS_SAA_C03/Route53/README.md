What is DNS ?

| Concept                      | Meaning / Example                                                                                                              |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| **DNS (Domain Name System)** | Converts human-friendly names → IP addresses. Example: `www.google.com → 142.250.72.14`                                        |
| **Purpose**                  | Makes it easy for humans to access websites without remembering IPs.                                                           |
| **Hierarchy**                | Root (.) → Top-Level Domain (.com) → Second-Level Domain (example.com) → Subdomain ([www.example.com](http://www.example.com)) |

![alt text](leveldoamins.png)


## DNS

| Term                                   | Description                                       | Example                               |
| -------------------------------------- | ------------------------------------------------- | ------------------------------------- |
| **Domain Registrar**                   | Where you buy your domain name                    | GoDaddy, Route 53                     |
| **DNS Record Types**                   | Define how domain names map to IPs or other names | A, AAAA, CNAME, NS                    |
| **Zone File**                          | File storing all DNS records for a domain         | Contains list of mappings             |
| **Name Server (NS)**                   | Server that answers DNS queries                   | Provided by registrar or AWS Route 53 |
| **Top-Level Domain (TLD)**             | Last part of domain                               | `.com`, `.org`, `.in`                 |
| **Second-Level Domain (SLD)**          | Main domain name                                  | `example.com`                         |
| **Subdomain**                          | Extension of your domain                          | `www.example.com`, `api.example.com`  |
| **FQDN (Fully Qualified Domain Name)** | Full domain name path                             | `api.www.example.com.`                |
| **Protocol**                           | Defines how you access resource                   | `http://`, `https://`                 |

![alt text](dnsdiag.png)


**What is Route 53 ?**

| Topic                    | Key Points                                                                                                                                                                               |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **What is Route 53?**    | - AWS’s **managed DNS (Domain Name System)** service.<br>- **Highly available, scalable, and authoritative** DNS.<br>- “Authoritative” = you can **create/update your own DNS records**. |
| **Why called Route 53?** | - Because **DNS uses port 53** on the internet.                                                                                                                                          |
| **Use Case Example**     | - You want `example.com` to point to your EC2 instance (IP `54.22.33.44`).<br>- You add this record in Route 53 → when users type `example.com`, they reach your EC2.                    |


**DNS Records Types**

| Type             | Purpose                                                       | Example                         |
| ---------------- | ------------------------------------------------------------- | ------------------------------- |
| **A Record**     | Maps hostname → IPv4 address                                  | `example.com → 1.2.3.4`         |
| **AAAA Record**  | Maps hostname → IPv6 address                                  | `example.com → 2001:db8::1`     |
| **CNAME Record** | Maps one hostname → another hostname                          | `www.example.com → example.com` |
| **NS Record**    | Lists **Name Servers** for a domain (who answers DNS queries) | `ns-123.awsdns-45.com`          |

**DNS Hosted Zones**

| Type                    | Description                                                                                                                             | Example              |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **Public Hosted Zone**  | - Visible to the **Internet**.<br>- Used for **public websites**.<br>- Queries can come from **any client**.                            | `mypublicdomain.com` |
| **Private Hosted Zone** | - Visible **only inside your VPC**.<br>- Used for **internal/private apps**.<br>- Queries come **only from AWS resources (e.g., EC2)**. | `example.internal`   |


![alt text](dnszonestypes.png)

## 🌍 Public Hosted Zone

### 🔹 Purpose
Used to make your domain name (like `example.com`) **available to the internet**.

### 🔹 How It Works
1. A **client/browser** sends a DNS query for `example.com`.
2. The **Public Hosted Zone** in Route 53 responds with a **public IP address** (e.g., `54.22.33.44`).
3. The client can now access:
   - S3 website bucket
   - CloudFront distribution
   - EC2 instance (with Public IP)
   - Application Load Balancer

### ✅ Key Points
- Accessible **from anywhere on the internet**
- Uses **Public IP addresses**
- DNS records are **publicly visible**
- Example domain: `example.com`

## Private Hosted Zone

### Purpose
Used for **internal DNS resolution** inside your AWS **VPC**.  
Not accessible from the internet.

### How It Works
1. EC2 or other AWS resources inside a VPC use **private DNS names**, for example:
   - `webapp.example.internal`
   - `api.example.internal`
   - `db.example.internal`
2. When an instance queries `api.example.internal`,  
   Route 53’s **Private Hosted Zone** returns a **private IP** (e.g., `10.0.0.10`).
3. Similarly, `db.example.internal` resolves to `10.0.0.35`.
4. The connection happens **within the VPC** — no internet needed.

### Key Points
- Works **only inside associated VPC(s)**
- Uses **Private IPs**
- Not reachable from the public internet
- Example domain: `example.internal`


