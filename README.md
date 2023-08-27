# GLPI Application

This document provides step-by-step instructions on how to run the GLPI application using Docker. By following these steps, you can quickly set up and run GLPI within Docker containers.

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Notes
- GLPI data is stored in the `./var/www/html/glpi` directory and is persistent. Be sure to backup this directory and take security precautions.
- You can manage database settings in the `.env` file, and it does not require containers to be restarted.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/akinbicer/docker-glpi.git
   cd docker-glpi
   ```
2. Edit the `installations\environments\db.env` file to specify your desired database and GLPI application settings.
3. Start the containers using Docker Compose:
   ```bash
   docker-compose up -d
   ```
4. You can access GLPI in your web browser using the following URL:
   ```
   http://localhost
   ```
   
## License
This project is licensed under the [MIT License](LICENSE).

## Issues, Feature Requests or Support
Please use the [New Issue](https://github.com/akinbicer/docker-glpi/issues/new) button to submit issues, feature requests or support issues directly to me. You can also send an e-mail to akin.bicer@outlook.com.tr.
