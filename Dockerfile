# Container image that runs your code
FROM osrf/ros:noetic-desktop-full-focal

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /ws/src/package
COPY . /ws/src/package/

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
