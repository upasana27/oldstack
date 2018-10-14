# Stack2018
![AUV Logo](https://avatars0.githubusercontent.com/u/20499351?s=280&v=4)


Contains control and vision package for the year 2019, built on ROS kinetic and openCV.

# Clone this repository 

```
git clone https://github.com/dtu-auv/Stack2018
```
# Dependencies

```
sudo apt-get install ros-kinetic-pid
sudo apt-get install ros-kinetic-rosserial-arduino
sudo apt-get install ros-kinetic-rosserial
sudo apt-get install ros-kinetic-teleop-twist-keyboard
```

# Make

In the root of your catkin workspace.
```
catkin_make
```


Always run rosserial after other nodes have started
