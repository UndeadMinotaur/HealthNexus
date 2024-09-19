# HealthNexus
**HealthNexus** is a comprehensive platform designed to connect individuals affected by Long COVID (LC) and Myalgic Encephalomyelitis (ME). It serves as a hub for gathering and sharing knowledge, fostering collaboration, and supporting research efforts.

## Table of Contents

1. [Overview](#Overview)
2. [Features](#Features)
3. [Installation](#Installation)
4. [Usage](#Usage)
5. [API Documentation](#API-Documentation)
6. [Changelog](#Changelog)
7. [Contributing](#Contributing)
8. [License](#License)
9. [Contact](#Contact)


## Overview
**HealthNexus** helps users to efficiently manage and interpret their medical data. By organizing blood values and other medical records, the tool offers clear insights and recommendations to help patients make informed decisions.

## Features
(Planned) Features:
- Community Forums & Chat: A space for individuals to connect, share experiences, and offer support.
- Knowledge Base: An extensive repository of information on LC and ME, including symptoms, treatments, and research findings.
- Collaboration Tools: Tools and spaces for collaboration, allowing users to contribute to the platform, discuss research, and engage with experts.
- Research Hub: Aggregated and curated research articles, studies, and meta-analyses for easy access.
- Cloud Storage: Secure storage for sharing documents, research papers, and other resources.
- Wiki: A user-editable wiki providing in-depth information on every aspect of LC and ME.

## Installation

Please see [INSTALL.md](INSTALL.md) for more details.

## Usage
- TODO - 
### Basic Commands
- TODO - 
### Configuration
- TODO - 


## API Documentation
- TODO - 
### Endpoints
- TODO - 
For more details, refer to the [API Documentation]().
- TODO - 

## Changelog

For a detailed list of changes and updates to **HealthNexus**, please refer to the [Changelog](CHANGELOG.md).

## Contributing

Please review our [Contributing Guidelines](CONTRIBUTING.md) for more details.

Please send an email to [medimazeiq@posteo.net](mailto:medimazeiq@posteo.net) for coordination!
Things you can currently contribute on without further coordination:

- Add data to the `data/` directory.
- Work on the API/Swagger API in flask to allow queries to the data.
- Adjust the ansible playbooks to install the listed services. Currently, the roles are only dummies that are not yet functional (please use an LXC for all services (not haproxy, BBB)
- Adjust the haproxy role to correctly forward all traffic to the containers/services
- When you need to enter a domain, please use `healthnexus.online` and add it to `/etc/hosts`.
- Use the subdomains listed in the haproxy config file

That's the most important next steps for now

## License
HealthNexus is licensed under the [CC BY-NC 4.0 License](LICENSE).

## Contact

Development and Idea: [UndeadMinotaur](https://github.com/UndeadMinotaur)

For support or inquiries, please contact:

- Email: [medimazeiq@posteo.net](mailto:medimazeiq@posteo.net)
- GitHub Issues: [Submit an Issue](https://github.com/UndeadMinotaur/HealthNexus/issues)
