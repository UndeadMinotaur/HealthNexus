# Staying anonymous

In a world where illness often leads to stigmatization and where political climates can make certain conversations dangerous, protecting your privacy online is more important than ever. 
This manual offers essential tools and techniques to stay anonymous on the internet, empowering those who need to navigate sensitive situations while maintaining their security and freedom.
This manual is meant to protect the privacy of individuals suffering stigmatized illnesses, especially of those that might experience threats to their health or wellbeing in the face of exposure.

## Threats

1. The email address could reveal the user
2. The IP could reveal the user
3. Metadata in images
4. Other information such as the browser fingerprint could reveal the user
5. Behavioral analysis
6. Social Engineering and Phishing
7. Legal and Ethical Risks
8. Third-Party Service Vulnerabilities
9. Social Network and Content Sharing

### Disclosure of IP address

IP Address Logging: The server where the images are uploaded can log the IP address, revealing the uploader's approximate location. This can lead to identification through ISP logs.

VPN/Proxy Service: If using a VPN or proxy, the security of these services is crucial. Compromised, poorly configured, or low-quality VPNs can leak the user's real IP address through DNS leaks, WebRTC leaks, or by failing to properly mask the IP.

The disclosure of the IP address can reveal the approximate location (e.g. Manhattan).
ISP logs can be used to identify the owner of this IP.

### Disclosure of email address
Email Metadata: Even with an anonymous email address, metadata such as IP address, time of creation, and any linked recovery email or phone number can potentially trace back to the user.

Service Provider Logs: Email providers may log IP addresses used to create or access the account. If the provider is subpoenaed, this information could be handed over to authorities or used by malicious actors.

Obviously, any email address that is used elsewhere in the internet would potentially leak substantial amount of data that could be used to draw conclusions on its owner. Worst case it includes the owner's name.

### Metadata in images
Many images contain embedded metadata, known as EXIF data, which can include information like the date and time the image was taken, the device used, and even GPS coordinates. If not removed, this data can compromise anonymity.
Also keep in mind that there are other ways how private data can be hidden in images, it is NOT sufficient to only consider EXIF data, even though this is the largest source of information disclosure.

### Disclosure of the browser fingerprint

Unique Identifiers: Websites can use techniques like browser fingerprinting to create a unique profile of the user's device. This includes details like operating system, browser type and version, screen resolution, installed fonts, and plugins. Even with a masked IP, a consistent browser fingerprint across different sessions could potentially link the user back to their real identity.

Cookies and Tracking Scripts: Tracking cookies and scripts can follow the user across different websites, potentially linking different activities and reducing anonymity.

Any connection with websites might result in the browser, OS or else be fingerprinted by the server it connects to. 
Law enforcement might get hold of server logs and thereby get information on the user. Sometimes, these fingerprints are unique and are sufficient to identify a user.

### Behavioral Analysis

Patterns in Image Uploading: The timing, frequency, and patterns of image uploads could be analyzed and correlated with other online activities, potentially revealing the user's identity.

Textual Content: If the user uploads images with embedded text or adds captions, comments, or descriptions, linguistic analysis could identify unique writing styles or patterns that could be linked to the user.

A general rule of thumb: Do exactly one thing per anonymous email address and anonymous account to avoid attacks where data is used to link the accounts.

### Social Engineering and Phishing

Phishing Attacks: If the email address or uploaded images draw attention, the user could be targeted with phishing attacks designed to trick them into revealing personal information or compromising their security.

Social Engineering: Skilled attackers could use the uploaded images or associated information to build a profile of the user, which could be used in social engineering attacks.

### Legal and Ethical Risks

    
Legal Requests: Authorities could request data from email providers, ISPs, or the image hosting platform, potentially unmasking the user's identity through legal means.

Ethical Considerations: Uploading certain types of images (e.g., copyrighted material, explicit content, etc.) could lead to legal consequences, and the user’s identity might be sought after by affected parties.

### Third-Party Service Vulnerabilities

Data Breaches: The services used for email, VPN, or image hosting could be compromised in a data breach, exposing user information.

Logging Policies: Some VPNs or email services may claim not to log user activity, but in reality, they might keep logs that could be used to identify the user if accessed by malicious actors or authorities.

### Social Network and Content Sharing

Reverse Image Search: Uploaded images can be reverse searched on platforms like Google, potentially linking them to other instances of the image online, revealing connections to the user's identity.
    
Image Sharing Platforms: Some platforms strip metadata, but not all. If images are uploaded to a platform that retains metadata, it could compromise anonymity.

## Mitigations
- use a Live System to get rid of any browser- or system fingerprints, that could be used to identify the user
- strip EXIF (and any potential other data) from images, do this within a live system
- review all image content before uploading them. The image content itself might contain identifiable information (e.g. show the profile that is logged in, ...)
- create the anonymous email account using a masked IP, use disposable email services for one-time use
- create anonymous accounts using the anonymous email address while using the masked IP
- do not disclose any private information while on and in the context of your mission
- do not click any link or interact in any other form than is crucial for your mission. Stick to the absolute minimum interaction
- do not interact with any emails/messages on your anonymous account at all
- if you want to interact anonymously, create another anonymous account for this
- do not reuse patterns (e.g. username pattern, password pattern, ...) and use another language style. Also: DO NOT REUSE PASSWORDS!!

### Anonymous emails

#### Disposable emails
- Guerrilla Mail
- Mailinator

#### Partially free
- Tutanota
- Mailfence
- Zoho Mail

#### Paid
- Proton
- Posteo

#### Limitations
Please ask Google/GPT before use (from the private setup)


### Strip data
Create a script...

### Live System
Tails, boot from USB stick, do not install on machine
Do not log in anywhere but the anonymous mail account (if at all) and the service you want to disclose data, using your anonymous account.

### Mask the IP
- Tor (included in Tails. Be aware, nowadays there are also entry and exit nodes by law enforcement, foreign agents etc, luckily, they are often not interested in your actions, or from your country...)
- VPN (use a reputable one that is known for no-logging and being rather less cooperative when it comes to log disclosure)
- Public Hotspot (university). Be aware that CCTV might be installed and be used to identify the user, if the owner of the public hotspot is told the time of access. Do not use any public hotspots for which you are not totally sure how it is managed and what security measures it has in place.
- Proxy Servers (you need to trust the owner of the proxy to not disclose any logs because the proxy owner might know your IP, or your ISP may reveal you contacted the proxy which is critical if only very few users use the proxy)
- Mobile data network from a disposable cell phone and SIM card, that opens a hotspot for the private computer. Do not use this at home, do this from a travel location
- combine multiple methods, e.g. VPN and proxy

#### Recommendation for masking
- Combine VPN and Tor
- Caveat: VPNs had and will have leaks in the future. If you want to be 100% safe, acquiring a mobile SIM and cellphone anonymously is the way to go (burner phone with burner SIM which are haard to get in some places)

#### VPN providers
- ProtonVPN
- TunnelBear (up to 500 MB/month)
- Windscribe

Do not disclose any personal information when interacting with a VPN or any of the other services listed!!!