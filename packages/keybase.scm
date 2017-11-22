(define-module (nat guix packages keybase)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages linux)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix licenses)
  #:use-module (guix packages))

(define keybase-build
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
              #f))))

(define-public keybase
  (package
    (name "keybase")
    (version "1.0.36")
    (source
     (origin
      (method url-fetch)
      (uri (string-append
            "https://github.com/keybase/client/archive/v"
            version
            ".tar.gz"))
      (sha256
       (base32
        "1yjib1axssfxm7c1y837zyydic1ja2fb6v14xwkipvp9l3bakffx"))))
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
            (rename-file "src/github.com/keybase/client-1.0.36"
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

(define-public go-github-com-keybase-kbfs-kbfsfuse
  (let ((commit "v1.0.36")
        (revision "0"))
    (package
     (name "go-github-com-keybase-kbfs-kbfsfuse")
     (version (git-version "0.0.0" revision commit))
     (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/keybase/kbfs")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wj118mblyq2060ixhn90h0n9fk1phfcwjviy44kbj2swlq6xpis"))))
     (build-system go-build-system)
     (inputs
      `(("fuse" ,fuse)
        ("keybase" ,keybase)))
     (arguments
      `(#:import-path "github.com/keybase/kbfs/kbfsfuse"
        #:unpack-path "github.com/keybase/kbfs"
        #:install-source? #f
        #:phases
        (modify-phases %standard-phases
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
     (synopsis "Keybase Filesystem")
     (description "Keybase filesystem fuse driver")
     (home-page "https://keybase.io/")
     (license bsd-3))))

(define-public go-github-com-keybase-kbfs-kbfsgit
  (let ((commit "v1.0.36")
        (revision "0"))
    (package
     (name "go-github-com-keybase-kbfs-kbfsgit")
     (version (git-version "0.0.0" revision commit))
     (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/keybase/kbfs")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wj118mblyq2060ixhn90h0n9fk1phfcwjviy44kbj2swlq6xpis"))))
     (build-system go-build-system)
     (inputs
      `(("go-github-com-keybase-kbfs-kbfsfuse"
         ,go-github-com-keybase-kbfs-kbfsfuse)))
     (arguments
      `(#:import-path "github.com/keybase/kbfs/kbfsgit/git-remote-keybase"
        #:unpack-path "github.com/keybase/kbfs"
        #:install-source? #f
        #:phases
        (modify-phases %standard-phases
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
     (synopsis "KBFS git remote")
     (description "Encrypted git repos over Keybase filesystem")
     (home-page "https://keybase.io/")
     (license bsd-3))))
