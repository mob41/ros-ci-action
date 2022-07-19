# Container image that runs your code

FROM osrf/ros:noetic-desktop-full-focal
ARG PACKAGE_DIR

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /ws/src/package
ADD $PACKAGE_DIR /ws/src/

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
