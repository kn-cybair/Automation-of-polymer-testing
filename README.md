
# Automation of polymer testing

## Create Container

### Without GPU
```bash
  bash build_container.sh
```

  ### With Nvidia GPU
  ```bash
  bash build_container_gpu.sh
```

## Enter Container
This command could be added to terminator profile with absolute path to script 
  ```bash
  bash Enter.sh
```

## Usage
### Quick Launch

#### [MoveIt](http://moveit.ros.org/) + [Fake Controller](http://docs.ros.org/en/melodic/api/moveit_tutorials/html/doc/fake_controller_manager/fake_controller_manager_tutorial.html)

```
roslaunch mycobot_move_it_config demo.launch
```

![Screenshot from 2021-01-22 00-45-46](https://user-images.githubusercontent.com/3256629/105374594-3a93cf00-5c4b-11eb-89c7-fa4a10aed619.png)

#### [MoveIt](http://moveit.ros.org/) + [Gazebo](http://gazebosim.org/)

```
roslaunch mycobot_move_it_config demo_gazebo.launch
```
![Screenshot from 2021-01-22 09-52-26](https://user-images.githubusercontent.com/3256629/105430751-96844500-5c97-11eb-88fd-9fe772f98001.png)






### Acknowledgements

* [elephantrobotics/myCobotROS](https://github.com/elephantrobotics/myCobotROS)
    * `Copyright (c) 2020, Elephant Robotics`
    * [BSD-2-Clause](https://github.com/elephantrobotics/myCobotROS/blob/cc9c7151b60709c445e1d2bdf500b9fbad91f841/LICENSE)
* [rt-net/jnmouse_sim](https://github.com/rt-net/jnmouse_sim)
    * `(C) 2020 RT Corporation <support@rt-net.jp>`
    * [Apache-2.0](https://github.com/rt-net/jnmouse_sim/blob/5b3eac2071e7feb7e9ffd6f054cdfef9081e9166/LICENSE)
* [ros-planning/moveit](https://github.com/ros-planning/moveit)
    * `Copyright (c) 2008-2013, Willow Garage, Inc.`
    * [BSD-3-Clause](https://github.com/ros-planning/moveit/blob/664ae01803abf5e0b4649063102357262de9e05c/LICENSE.txt)
* [mycobot_ros](https://github.com/Tiryoh/mycobot_ros)
    * `Copyright (c) 2020 Daisuke Sato`
    * [Apache-2.0](https://github.com/Tiryoh/mycobot_ros/blob/main/LICENSE)
