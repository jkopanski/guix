(define-module (nat guix services keybase)
  #:use-module (ice-9 format)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-26)
  #:use-module (gnu services)
  #:use-module ((guix build utils) #:select (mkdir-p))
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (oop goops)
  #:use-module (shepherd service)
  #:export (keybase-service
            kbfs-service))

(define* (keybase-dir)
  "Return directory where keybase stores it's logs and stuff."
  (let ((dir (and=> (or (getenv "XDG_CACHE_HOME")
                        (and=> (or (getenv "HOME")
                                   (passwd:dir (getpwuid (getuid))))
                               (cut string-append <> "/.cache")))
                    (cut string-append <> "/keybase"))))
    (mkdir-p dir)
    dir))

(define %keybase-run-directory
  (let ((dir (format #f "/run/user/~a/keybase" (getuid))))
    (mkdir-p dir)
    dir))

(define %Keybase-pid-file
  (string-append %keybase-run-directory "/keybased.pid"))

(define %keybase-service-log-file
  (string-append (keybase-dir) "/keybase.service.log"))

(define %keybase-kbfs-log-file
  (string-append (keybase-dir) "/keybase.kbfs.log"))

(define %keybase-service-start-log
  (string-append (keybase-dir) "/keybase.start.log"))

(define %keybase-kbfs-mountpoint
  (let ((dir (string-append
              (or (getenv "HOME")
                  (passwd:dir (getpwuid (getuid))))
              "/keybase")))
    (mkdir-p dir)
    dir))

(define keybase-service
  (make <service>
    #:docstring "Keybase service"
    #:provides '(keybase)
    #:start (make-forkexec-constructor
              (list "keybase" "-d"
                    (format #f "--log-file=~a" %keybase-service-log-file)
                    "service"
                    "--chdir" %keybase-run-directory)
              #:directory %keybase-run-directory
              #:environment-variables (cons* "KEYBASE_RUN_MODE=prod" (environ))
              ;; #:pid-file %keybase-lock-file
              #:log-file %keybase-service-start-log)
  #:stop (make-kill-destructor)))

(define kbfs-service
  (make <service>
    #:docstring "Keybase filesystem userspace driver"
    #:provides '(kbfs)
    #:requires '(keybase)
    #:start (make-forkexec-constructor
             (list "kbfsfuse"
                   ;; "-log-to-file"
                   "-log-file" %keybase-kbfs-log-file
                   "-label" "keybase"
                   %keybase-kbfs-mountpoint)
             #:environment-variables (cons* "KEYBASE_RUN_MODE=prod" (environ))
             #:log-file %keybase-kbfs-log-file)
    #:stop (make-kill-destructor)))
