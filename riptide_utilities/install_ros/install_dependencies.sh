# UWRT Dependencies
# Install ROS-related dependencies
sudo apt-get -y install ros-kinetic-pointgrey-camera-driver 
sudo apt-get -y install ros-kinetic-control-toolbox
sudo apt-get -y install ros-kinetic-joy

# Install Ceres
ceres_version="ceres-solver-1.14.0"
sudo apt-get -y install cmake
sudo apt-get -y install libgoogle-glog-dev
sudo apt-get -y install libatlas-base-dev
sudo apt-get -y install libeigen3-dev
sudo apt-get -y install libsuitesparse-dev
wget http://ceres-solver.org/$ceres_version.tar.gz
tar zxf $ceres_version.tar.gz
rm $ceres_version.tar.gz
mkdir ceres-bin
cd ceres-bin
cmake ../$ceres_version
make -j3
sudo make install
cd ..
rm -rf ~/ceres-temp

# Install Acoustics Dependencies
install_acoustics.sh

echo "Installed all UWRT dependencies"