# Simple URDF operation

* Install necessary URDF tools

```bash
sudo apt install liburdfdom-tools
```

* Verify URDF

```bash
check_urdf simple.urdf
```

* Show URDF

```bash
urdf_to_graphiz simple.urdf
evince test_robot.pdf
```
