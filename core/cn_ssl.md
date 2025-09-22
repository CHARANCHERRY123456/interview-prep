## Quick Revision Notes: SSL/TLS Encryption

### 1. Core Concepts & Rationale

*   **SSL (Security Socket Layer)** is the original protocol for encrypting data transmission.
*   **TLS (Transport Layer Security)** is the newer, more secure version that replaced the deprecated SSL (created in 1995).
*   In typical modern usage, when people say "SSL," they are actually referring to TLS or another security protocol.
*   The Internet is essentially a network of cables connecting computers, posing a **massive security risk** when sending personal or sensitive data (e.g., credit card information).
*   SSL/TLS provides protection by **encrypting data** sent between the server and the end user.
*   **Identification:** Look at the URL: **HTTP** is insecure; **HTTPS** means the 'S' stands for secure and uses encryption.

### 2. The SSL Handshake (Establishing Secure Connection)

The handshake is a complex process used to establish an encrypted, secure connection.

1.  **Client Hello:** Browser sends info (OS, browser, supported encryption algorithms).
2.  **Server Selection:** Server chooses the **most powerful encryption** algorithm supported by both parties.
3.  **Server Hello & Certificate:** Server sends its info and the **digital SSL certificate** (including domain, CA, and **public key**).
4.  **Client Verification:** Browser checks if the certificate is **valid** and issued by a trustworthy **Certificate Authority (CA)**.
5.  **Session Key Exchange:** If valid, the browser generates a random **session key**, encrypts it using the server's public key, and sends it back.
6.  **Decryption & Finish:** The server uses its **private key** to decrypt the session key. Both parties exchange **Finished messages**.
7.  **Result:** A **secure connection is established**, and all future communications are encrypted using the new session key.

### 3. Usage and Certificates

*   **When to use SSL:** **Pretty much all the time**. It is mandatory for sensitive information like passwords, credit card numbers, Social Security numbers, addresses, and phone numbers.
*   **SSL Certificate:** A unique digital certificate used to authenticate the website's identity during the handshake.
*   **Expiration:** Certificates typically expire and need to be changed every **90 days**. Modern browsers prevent connections to sites with expired SSL certificates.

| Certificate Type | Key Features | Recommended Use |
| :--- | :--- | :--- |
| **Free (e.g., Let's Encrypt)** | Nonprofit CA, trusted by browsers. Low cost/free option. | Startups, low-traffic sites, sites that **do not** handle extremely sensitive information. |
| **Paid (Commercial CAs)** | Offers **higher levels of security**, warranties, and insurance policies. | Websites handling highly sensitive data like **credit card numbers** and personal data (e-commerce, medium to large businesses). |
