# ROS 2 Lyrical: геймпад, Gazebo, RViz

Управление роботом геймпадом (Logitech RumblePad 2) на Ubuntu 26.04.

- `joy` и `teleop_twist_joy` работают в Docker (`ros2-gamepad.yaml`, стек для Portainer).
- ROS 2 Lyrical, Gazebo Jetty и RViz установлены на хосте.
- Мост `ros_gz` связывает `/cmd_vel` с Gazebo.

## Файлы
- `ros2-gamepad.yaml`: стек Docker Compose (joy + teleop).
- `diff_world.sdf`: мир Gazebo с диф-приводным роботом.
- `start.sh`: запуск Gazebo и моста.
- `default.rviz`: конфигурация RViz.

## Запуск
1. Поднять стек `ros2-gamepad.yaml` (Portainer или `docker compose -f ros2-gamepad.yaml up -d`).
2. На хосте: `./start.sh`.
3. Зажать R1 на геймпаде и двигать стики. R2 включает турбо.
4. `rviz2 -d default.rviz`.

Переменные для хоста: `FASTDDS_BUILTIN_TRANSPORTS=UDPv4`, `ROS_DOMAIN_ID=0`.
