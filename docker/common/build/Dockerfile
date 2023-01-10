# -----------------------------------------------------------------------------
# Builder image, it creates the wheels to install to the final images
# -----------------------------------------------------------------------------

FROM node:18.12.1-bullseye AS builder

# -----------------------------------------------------------------------------
# Main image, it has the shared layers between development and production
# -----------------------------------------------------------------------------

FROM node:18.12.1-bullseye AS main

# -----------------------------------------------------------------------------
# Development image, includes a SSH keygen server, inherited from the original image
# -----------------------------------------------------------------------------

FROM main AS development

RUN apt-get update

WORKDIR /home/app/web

CMD ["tail", "-f", "/dev/null"]

# -----------------------------------------------------------------------------
# Production image, includes the application files
# -----------------------------------------------------------------------------

FROM main AS production