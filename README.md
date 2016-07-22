To use this docker image, first build with
```bash
docker build -t ansible .
```

Then, to run with AWS access info in the environment so aws-related ansible modules can be used, run with
```bash
docker run -it -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" ansible
```

Or for example to run it with a playbook on the host system (assuming "playbook.yml" is in the current working directory)
```bash
docker run --rm -v "`pwd`:/data" -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" ansible ansible-playbook /data/playbook.yml`
```

It's helpful to create a bash alias, e.g.
```bash
alias run-ansible-playbook="docker run --rm -v \"`pwd`:/data\" -e \"AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID\" -e \"AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY\" ansible ansible-playbook"
run-ansible-playbook /data/playbook.yml
```
