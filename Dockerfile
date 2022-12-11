FROM osrf/ros:noetic-desktop-full

# Add ROS env vars to the bashrc
SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash", "-c"]
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
ENV BASH_ENV="/root/launch.sh"
# Copy myCobot ROS package
WORKDIR /catkin_ws/
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git \
	python3-pip \
	python3-wstool \
	wget \
	ros-${ROS_DISTRO}-moveit
RUN pip3 install "pymycobot" --user

COPY src/ src/


WORKDIR /catkin_ws/src

RUN . /opt/ros/${ROS_DISTRO}/setup.bash && \
	rosdep install -r -y -i --from-paths .
	
WORKDIR /catkin_ws

RUN . /opt/ros/${ROS_DISTRO}/setup.bash && \
    catkin_make
    
RUN . /catkin_ws/devel/setup.bash && \
	rosrun mycobot_gazebo download_gazebo_models.sh
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
RUN echo "source /catkin_ws/devel/setup.bash" >> ~/.bashrc


#https://github.com/Tiryoh/mycobot_ros
#https://github.com/elephantrobotics/mycobot_ros/

