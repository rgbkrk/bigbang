nova boot
  --image 240b8fb2-da7a-482a-9429-891b374cb57c\
  --flavor performance2-15\
  --nic net-id=e22b534d-4835-43dd-9896-f5b3f6123569\
  --file "C:\\cloud-automation\\bootstrap.cmd=open_hatch.cmd"\
  --no-service-net --no-public\
  --poll windex
