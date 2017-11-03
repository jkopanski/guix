(use-modules (nat guix services keybase))

(apply register-services (list keybase-service
                               kbfs-service))

(action 'shepherd 'daemonize)
