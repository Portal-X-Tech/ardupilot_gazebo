# How to use the script

1. Firstly, modify **model.sdf.xacro** which supports xacro macros. Using xacro, we can easily modify the parameters in one place and script will generate the **model.sdf** file for us.
2. Run the script. It will generate the **model.sdf** file.
    ```bash
    ./script.sh
    ```
3. Lastly, copy that **model.sdf** file into the directory **iris_with_gimball/**
