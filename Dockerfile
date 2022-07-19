# Container image that runs your code
FROM osrf/ros:noetic-desktop-full-focal

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /ws/src/package
COPY $GITHUB_WORKSPACE /ws/src/

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
