docker_exec_inside_with_hint() {
  docker_container_choosen=$(docker ps | awk 'NR > 1' | peco)
  docker_container_id=$(echo $docker_container_choosen | awk '{print $1}')
  docker_container_image_name=$(echo $docker_container_choosen | awk '{print $2}')
  echo "Exec inside docker container id $docker_container_id of image $docker_container_image_name..."
  docker exec -it "$docker_container_id" sh
}
