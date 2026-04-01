# start.ps1
docker run -it --rm `
  -v "$($PWD.Path):$($PWD.Path)" `
  -w "$($PWD.Path)" `
  -v //var/run/docker.sock:/var/run/docker.sock `
  debeski/decrypter:latest $args
