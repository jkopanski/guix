(define-module (nat guix packages keybase)
  #:use-module (gnu packages golang)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix licenses)
  #:use-module (guix packages))

(define-public keybase
  (package
    (name "keybase")
    (version "1.0.33")
    (source
    (origin
      (method url-fetch)
      (uri (string-append
            "https://github.com/keybase/client/archive/v"
            version
            ".tar.gz"))
      (sha256
      (base32
        "1q6vl07hxz5dbnr8wrv4iwsrza5zshqbxpgp0l1bzc4r51bms4y8"))))
    (build-system go-build-system)
    (arguments
    `(#:import-path "github.com/keybase/client/go/keybase"
      #:unpack-path "github.com/keybase/"
      #:install-source? #f
      #:phases
      (modify-phases %standard-phases
        (add-after 'unpack 'rename-sources
          (lambda _
            ;; ERROR: In procedure string-append: Wrong-type (expected string)
            ;; (rename-file (string-append "src/github.com/keybase/client-" version)
            (rename-file "src/github.com/keybase/client-1.0.33"
                         "src/github.com/keybase/client")))

        (add-after 'setup-environment 'setup-bindir
                   (lambda* (#:key outputs #:allow-other-keys)
                            (let* ((out (assoc-ref outputs "out"))
                                   (bin (string-append out "/bin")))
                              (setenv "GOBIN" bin))))

        (replace 'build
         (lambda* (#:key import-path #:allow-other-keys)
                   "Build the package named by IMPORT-PATH."
                   (or
                    (zero? (system* "go" "install"
                                    "-v" ; print the name of packages as they are compiled
                                    "-x" ; print each command as it is invoked
                                    ;; Respectively, strip the symbol table and debug
                                    ;; information, and the DWARF symbol table.
                                    "-ldflags=-s -w"
                                    ;; Pass missing arguments
                                    "-tags" "production"
                                    import-path))
                    (begin
                      (display (string-append "Building '" import-path "' failed.\n"
                                              "Here are the results of `go env`:\n"))
                      (system* "go" "env")
                      #f)))))))

    (home-page "https://keybase.io/")
    (synopsis "Keybase Go Library, Client, Service")
    (description
    "Keybase is a new and free security app for mobile phones and computers.")
    (license bsd-3)))
