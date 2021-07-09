complete -c lnmp-docker -n "__fish_use_subcommand" -f -a pcit-up           -d     'Up(Run) PCIT EE https://github.com/pcit-ce/pcit'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a pcit-cp           -d     'Copy PCIT files to app/.pcit'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a acme.sh           -d     'Run original acme.sh command to issue SSL certificate'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a httpd-config      -d     'Generate Apache2 vhost conf'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a backup            -d     'Backup MySQL databases'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a build             -d     'Build or rebuild your LNMP images (Only Support x86_64)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a build-config      -d     'Validate and view the LNMP with your images Compose file'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a build-push        -d     'Pushes your images to Docker Registory'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a build-pull        -d     'Pull LNMP Docker Images Build By your self'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a build-up          -d     'Create and start LNMP containers With your Build images'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a cleanup           -d     'Cleanup log files'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a completion        -d     'Move fish shell completion code (Only Support fish)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a composer          -d     'Exec composer command on Docker Container'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-help   -d     'Print ClusterKit help info'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit        -d     'UP LNMP With Mysql Redis Memcached Cluster [Background]'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-clusterkit  -d     'UP LNMP With Mysql Memcached Cluster IN Swarm mode'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-mysql-up               -d     'Up MySQL Cluster'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-mysql-up' -s d          -d     'Up MySQL Cluster in the background'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-mysql-down             -d     'Stop MySQL Cluster'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-mysql-down' -s v        -d     'Stop MySQL Cluster AND Remove named volumes declared in the `volumes`'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-mysql-exec             -d     'Execute a command in a running MySQL Cluster'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-mysql-deploy           -d     'Deploy MySQL Cluster in Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-mysql-remove           -d     'Remove MySQL Cluster in Swarm mode'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-up               -d     'Up Redis Cluster(By Ruby)'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-up' -s d          -d     'Up Redis Cluster in the background(By Ruby)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-down             -d     'Stop Redis Cluster(By Ruby)'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-down' -s v        -d     'Stop Redis Cluster AND Remove named volumes declared in the `volumes`(By Ruby)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-exec             -d     'Execute a command in a running Redis Cluster(By Ruby)'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-deploy           -d     'Deploy Redis Cluster in Swarm mode(By Ruby)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-remove           -d     'Remove Redis Cluster in Swarm mode(By Ruby)'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-memcached-up               -d     'Up memcached Cluster'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-memcached-up' -s d          -d     'Up memcached Cluster in the background'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-memcached-down             -d     'Stop memcached Cluster'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-memcached-down' -s v        -d     'Stop memcached Cluster AND Remove named volumes declared in the `volumes`'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-memcached-exec             -d     'Execute a command in a running memcached Cluster'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-memcached-deploy           -d     'Deploy memcached Cluster in Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-memcached-remove           -d     'Remove memcached Cluster in Swarm mode'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-replication-up        -d     'Up Redis M-S (replication)'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-up' -s d               -d     'Up Redis M-S (replication) in the background'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-replication-down      -d     'Stop Redis M-S (replication)'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-down' -s v             -d     'Stop Redis M-S (replication) AND Remove named volumes declared in the `volumes`'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-replication-exec      -d     'Execute a command in a running Redis M-S (replication)'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-replication-deploy    -d     'Deploy Redis M-S (replication) in Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-replication-remove    -d     'Remove Redis M-S (replication) in Swarm mode'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-sentinel-up      -d     'Up Redis S'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-up' -s d          -d     'Up Redis S in the background'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-sentinel-down    -d     'Stop Redis S'
complete -c lnmp-docker -n '__fish_seen_subcommand_from clusterkit-redis-down' -s v        -d     'Stop Redis S AND Remove named volumes declared in the `volumes`'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-sentinel-exec    -d     'Execute a command in a running Redis S'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-sentinel-deploy  -d     'Deploy Redis S in Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a clusterkit-redis-sentinel-remove  -d     'Remove Redis S in Swarm mode'

complete -c lnmp-docker -n "__fish_use_subcommand" -f -a daemon-socket     -d     'Expose Docker daemon on tcp://0.0.0.0:2375 without TLS on macOS'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a up                -d     'Up LNMP'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a bug               -d     'Generate Debug information, then copy it to GitHub Issues'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a config            -d    'Validate and view the LNMP Compose file'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a pull              -d     'Pull LNMP Docker Images'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a down              -d     'Stop and remove LNMP Docker containers, networks'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a gcr.io            -d    'Up local gcr.io(k8s.gcr.io) registry server to start Docker Desktop Kubernetes'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a help              -d     'Display this help message'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a new               -d     'New PHP Project and generate nginx conf and issue SSL certificate'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a nginx-config      -d     'Generate nginx vhost conf'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a restore           -d     'Restore MySQL databases'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a restart           -d     'Restart LNMP services'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a ssl               -d     'Issue SSL certificate powered by acme.sh'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a ssl-self          -d     'Issue Self-signed SSL certificate'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-build       -d     'Build Swarm mode LNMP images (nginx php7 etc)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-config      -d     'Validate and view the Swarm mode Compose file'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-deploy      -d     'Deploy LNMP stack IN Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-rm          -d     'Remove LNMP stack IN Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-ps          -d     'List the LNMP tasks'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-pull        -d     'Pull LNMP Docker Images IN Swarm mode'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-push        -d     'Push Swarm mode LNMP images (nginx php7 etc)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a swarm-update      -d     'Print update LNMP service example'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a systemd           -d     'Manage Docker LNMP by systemd(Only Support Linux x86_64)'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a satis             -d     'Build Satis'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a nfs               -d     'Up NFS server'

##
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a services          -d      'List services'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a update            -d      'Upgrades LNMP'
complete -c lnmp-docker -n '__fish_seen_subcommand_from update' -s f  -f   -d      'Force update'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a upgrade           -d      'Upgrades LNMP'
complete -c lnmp-docker -n '__fish_seen_subcommand_from upgrade' -s f -f   -d      'Force update'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a lrew-init         -d      'Init a new lrew package'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a lrew-add          -d      'Add new lrew package'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a lrew-outdated     -d      'Shows a list of installed lrew packages that have updates available'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a lrew-backup       -d      'Upload composer.json to GitHub Gist'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a lrew-update       -d      'Update lrew package'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a test              -d      'Test LNMP'
complete -c lnmp-docker -n "__fish_use_subcommand" -f -a compose           -d      'Install docker-compose'
complete -c lnmp-docker -n '__fish_seen_subcommand_from compose' -l official -f -d 'Force Install docker-compose'
