# Container image that runs your code

FROM osrf/ros:noetic-desktop-full-focal
ARG PACKAGE_DIR

COPY $GITHUB_ACTION_PATH/entrypoint.sh /entrypoint.sh

RUN mkdir -p /ws/src/package
COPY . /ws/src/package/

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
