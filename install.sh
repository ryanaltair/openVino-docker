cd /openvino/l_openvino_toolkit 
sed -i 's/decline/accept/g' silent.cfg 
./install.sh --silent silent.cfg
cd /openvino/

cd /opt/intel/computer_vision_sdk/deployment_tools/model_optimizer/install_prerequisites 
./install_prerequisites.sh

source /opt/intel/computer_vision_sdk/bin/setupvars.sh

cd /opt/intel/computer_vision_sdk/install_dependencies/
./install_NEO_OCL_driver.sh