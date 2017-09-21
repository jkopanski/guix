(define-module (nat guix packages haskell)
  #:use-module (guix build-system haskell)
  #:use-module (guix download)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (gnu packages haskell))

;; (define-public haskell-project
;;   (package
;;    (name "haskell-project")
;;    (varsion "0.1.0")
;;    (source (local-file "./"))
;;    (build-system haskell-build-system)
;;    (home-page "https://jkopanski.github.com")
;;    (synopsis "guix package project template")
;;    (description "Please see README.md")
;;    (license gpl3)))

(define-public ghc-stack
  (package
    (name "ghc-stack")
    (version "1.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/stack/stack-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1hw8lwk4dxfzw27l64g2z7gscpnp7adw5cc8kplldazj0y2cnf6x"))))
    (build-system haskell-build-system)
    (inputs
     `(("ghc-aeson" ,ghc-aeson)
      ("ghc-ansi-terminal" ,ghc-ansi-terminal)
      ("ghc-async" ,ghc-async)
      ("ghc-attoparsec" ,ghc-attoparsec)
      ("ghc-base-compat" ,ghc-base-compat)
      ("ghc-base64-bytestring" ,ghc-base64-bytestring)
      ("ghc-binary-tagged" ,ghc-binary-tagged)
      ("ghc-blaze-builder" ,ghc-blaze-builder)
      ("ghc-clock" ,ghc-clock)
      ("ghc-conduit" ,ghc-conduit)
      ("ghc-conduit-extra" ,ghc-conduit-extra)
      ("ghc-cryptonite" ,ghc-cryptonite)
      ("ghc-cryptonite-conduit"
       ,ghc-cryptonite-conduit)
      ("ghc-echo" ,ghc-echo)
      ("ghc-either" ,ghc-either)
      ("ghc-errors" ,ghc-errors)
      ("ghc-exceptions" ,ghc-exceptions)
      ("ghc-extra" ,ghc-extra)
      ("ghc-fast-logger" ,ghc-fast-logger)
      ("ghc-filelock" ,ghc-filelock)
      ("ghc-fsnotify" ,ghc-fsnotify)
      ("ghc-generic-deriving" ,ghc-generic-deriving)
      ("ghc-hackage-security" ,ghc-hackage-security)
      ("ghc-hashable" ,ghc-hashable)
      ("ghc-http-client" ,ghc-http-client)
      ("ghc-http-client-tls" ,ghc-http-client-tls)
      ("ghc-http-conduit" ,ghc-http-conduit)
      ("ghc-http-types" ,ghc-http-types)
      ("ghc-lifted-async" ,ghc-lifted-async)
      ("ghc-lifted-base" ,ghc-lifted-base)
      ("ghc-memory" ,ghc-memory)
      ("ghc-microlens" ,ghc-microlens)
      ("ghc-microlens-mtl" ,ghc-microlens-mtl)
      ("ghc-mintty" ,ghc-mintty)
      ("ghc-monad-control" ,ghc-monad-control)
      ("ghc-monad-logger" ,ghc-monad-logger)
      ("ghc-monad-unlift" ,ghc-monad-unlift)
      ("ghc-mtl" ,ghc-mtl)
      ("ghc-network-uri" ,ghc-network-uri)
      ("ghc-open-browser" ,ghc-open-browser)
      ("ghc-optparse-applicative"
       ,ghc-optparse-applicative)
      ("ghc-path" ,ghc-path)
      ("ghc-path-io" ,ghc-path-io)
      ("ghc-persistent" ,ghc-persistent)
      ("ghc-persistent-sqlite" ,ghc-persistent-sqlite)
      ("ghc-persistent-template"
       ,ghc-persistent-template)
      ("ghc-regex-applicative-text"
       ,ghc-regex-applicative-text)
      ("ghc-resourcet" ,ghc-resourcet)
      ("ghc-retry" ,ghc-retry)
      ("ghc-safe" ,ghc-safe)
      ("ghc-safe-exceptions" ,ghc-safe-exceptions)
      ("ghc-semigroups" ,ghc-semigroups)
      ("ghc-split" ,ghc-split)
      ("ghc-stm" ,ghc-stm)
      ("ghc-streaming-commons" ,ghc-streaming-commons)
      ("ghc-tar" ,ghc-tar)
      ("ghc-temporary" ,ghc-temporary)
      ("ghc-text" ,ghc-text)
      ("ghc-text-binary" ,ghc-text-binary)
      ("ghc-text-metrics" ,ghc-text-metrics)
      ("ghc-tls" ,ghc-tls)
      ("ghc-transformers-base" ,ghc-transformers-base)
      ("ghc-unicode-transforms"
       ,ghc-unicode-transforms)
      ("ghc-unix-compat" ,ghc-unix-compat)
      ("ghc-unordered-containers"
       ,ghc-unordered-containers)
      ("ghc-vector" ,ghc-vector)
      ("ghc-vector-binary-instances"
       ,ghc-vector-binary-instances)
      ("ghc-yaml" ,ghc-yaml)
      ("ghc-zlib" ,ghc-zlib)
      ("ghc-hastache" ,ghc-hastache)
      ("ghc-project-template" ,ghc-project-template)
      ("ghc-zip-archive" ,ghc-zip-archive)
      ("ghc-hpack" ,ghc-hpack)
      ("ghc-store" ,ghc-store)
      ("ghc-store-core" ,ghc-store-core)
      ("ghc-annotated-wl-pprint"
       ,ghc-annotated-wl-pprint)
      ("ghc-file-embed" ,ghc-file-embed)
      ("ghc-pid1" ,ghc-pid1)
      ("ghc-gitrev" ,ghc-gitrev)
      ("ghc-optparse-simple" ,ghc-optparse-simple)
      ("ghc-quickcheck" ,ghc-quickcheck)
      ("ghc-hspec" ,ghc-hspec)
      ("ghc-neat-interpolation"
       ,ghc-neat-interpolation)
      ("ghc-mono-traversable" ,ghc-mono-traversable)
      ("ghc-th-reify-many" ,ghc-th-reify-many)
      ("ghc-smallcheck" ,ghc-smallcheck)))
    (home-page "http://haskellstack.org")
    (synopsis "The Haskell Tool Stack")
    (description
      "Please see the README.md for usage information, and the wiki on Github for more details.  Also, note that the API for the library is not currently stable, and may change significantly, even between minor releases. It is currently only intended for use by the executable.")
    (license bsd-3)))

(define-public ghc-cryptonite-conduit
  (package
    (name "ghc-cryptonite-conduit")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/cryptonite-conduit/cryptonite-conduit-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0a3nasx5fix5g3vjaq26lg9j4frj27ksifqpz3d0naynkacaxv8m"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-conduit" ,ghc-conduit)
        ("ghc-conduit-extra" ,ghc-conduit-extra)
        ("ghc-cryptonite" ,ghc-cryptonite)
        ("ghc-memory" ,ghc-memory)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-conduit-combinators"
        ,ghc-conduit-combinators)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)))
    (home-page
      "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description
      "Conduit bridge for cryptonite . For now only provide a conduit version for hash and hmac, but with contribution, this could provide cipher conduits too, and probably other things.")
    (license bsd-3)))

(define-public ghc-echo
  (package
    (name "ghc-echo")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/echo/echo-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1vw5ykpwhr39wc0hhcgq3r8dh59zq6ib4zxbz1qd2wl21wqhfkvh"))))
    (build-system haskell-build-system)
    (home-page "https://github.com/RyanGlScott/echo")
    (synopsis
      "A cross-platform, cross-console way to handle echoing terminal input")
    (description
      "The @base@ library exposes the @hGetEcho@ and @hSetEcho@ functions for querying and setting echo status, but unfortunately, neither function works with MinTTY consoles on Windows. This is a serious issue, since @hGetEcho@ and @hSetEcho@ are often used to disable input echoing when a program prompts for a password, so many programs will reveal your password as you type it on MinTTY! . This library provides an alternative interface which works with both MinTTY and other consoles. An example is included which demonstrates how one might prompt for a password using this library. To build it, make sure to configure with the @-fexample@ flag.")
    (license bsd-3)))

(define-public ghc-binary-tagged
  (package
    (name "ghc-binary-tagged")
    (version "0.1.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/binary-tagged/binary-tagged-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1167rlb2lnib1vin9p75hp7fzcjqxljlw56bhmkwn05c5f6an7ri"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-aeson" ,ghc-aeson)
        ("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-generics-sop" ,ghc-generics-sop)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-nats" ,ghc-nats)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-sha" ,ghc-sha)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-text" ,ghc-text)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-vector" ,ghc-vector)
        ("ghc-binary-orphans" ,ghc-binary-orphans)
        ("ghc-bifunctors" ,ghc-bifunctors)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page
      "https://github.com/phadej/binary-tagged#readme")
    (synopsis "Tagged binary serialisation.")
    (description
      "Check <https://github.com/phadej/binary-tagged#readme README on Github>")
    (license bsd-3)))

(define-public ghc-either
  (package
    (name "ghc-either")
    (version "4.4.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/either/either-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1lrlwqqnm6ibfcydlv5qvvssw7bm0c6yypy0rayjzv1znq7wp1xh"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-bifunctors" ,ghc-bifunctors)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-free" ,ghc-free)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-monadrandom" ,ghc-monadrandom)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-mmorph" ,ghc-mmorph)
        ("ghc-profunctors" ,ghc-profunctors)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-semigroupoids" ,ghc-semigroupoids)
        ("ghc-transformers-base" ,ghc-transformers-base)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "An either monad transformer")
    (description "An either monad transformer")
    (license bsd-3)))

(define-public ghc-errors
  (package
    (name "ghc-errors")
    (version "2.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/errors/errors-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0cgmalid229snvn788sk2w16bqgfzgwc4ir2p60jvwqbj63yp5s1"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-exceptions" ,ghc-exceptions)
        ("ghc-text" ,ghc-text)
        ("ghc-transformers-compat"
        ,ghc-transformers-compat)
        ("ghc-unexceptionalio" ,ghc-unexceptionalio)
        ("ghc-safe" ,ghc-safe)))
    (home-page
      "http://hackage.haskell.org/package/errors")
    (synopsis "Simplified error-handling")
    (description
      "The one-stop shop for all your error-handling needs!  Just import \"Control.Error\". . This library encourages an error-handling style that directly uses the type system, rather than out-of-band exceptions.")
    (license bsd-3)))

(define ghc-filelock
  (package
    (name "ghc-filelock")
    (version "0.1.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/filelock/filelock-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0g90wgm4bcfr5j44sc5s2jlcd7ggk092lph3jqjgf6f67sqxrw8g"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-async" ,ghc-async)))
    (home-page
      "http://github.com/takano-akio/filelock")
    (synopsis
      "Portable interface to file locking (flock / LockFileEx)")
    (description
      "This package provides an interface to Windows and Unix file locking functionalities.")
    (license #f)))

(define-public ghc-hackage-security
  (package
    (name "ghc-hackage-security")
    (version "0.5.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hackage-security/hackage-security-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0h9wag599x9ysdrgwa643phmpb1xiiwhyh2dix67fji6a5w86yjh"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-base64-bytestring" ,ghc-base64-bytestring)
        ("ghc-ed25519" ,ghc-ed25519)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-parsec" ,ghc-parsec)
        ("ghc-cryptohash-sha256" ,ghc-cryptohash-sha256)
        ("ghc-tar" ,ghc-tar)
        ("ghc-zlib" ,ghc-zlib)
        ("ghc-network-uri" ,ghc-network-uri)
        ("ghc-network" ,ghc-network)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-temporary" ,ghc-temporary)))
    (home-page
      "https://github.com/well-typed/hackage-security")
    (synopsis "Hackage security library")
    (description
      "The hackage security library provides both server and client utilities for securing the Hackage package server (<http://hackage.haskell.org/>).  It is based on The Update Framework (<http://theupdateframework.com/>), a set of recommendations developed by security researchers at various universities in the US as well as developers on the Tor project (<https://www.torproject.org/>). . The current implementation supports only index signing, thereby enabling untrusted mirrors. It does not yet provide facilities for author package signing. . The library has two main entry points: \"Hackage.Security.Client\" is the main entry point for clients (the typical example being @cabal@), and \"Hackage.Security.Server\" is the main entry point for servers (the typical example being @hackage-server@).")
    (license bsd-3)))

(define-public ghc-microlens
  (package
    (name "ghc-microlens")
    (version "0.4.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/microlens/microlens-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0iqagqc3c6b6ihydhc6s7dlibwwf7pr1k9gixls3jikj6hfxzf0p"))))
    (build-system haskell-build-system)
    (home-page "http://github.com/aelve/microlens")
    (synopsis
      "A tiny lens library with no dependencies. If you're writing an app, you probably want microlens-platform, not this.")
    (description
      "NOTE: If you're writing an app, you probably want <http://hackage.haskell.org/package/microlens-platform microlens-platform> â\x80\x93 it has the most features. <http://hackage.haskell.org/package/microlens microlens> is intended more for library writers who want a tiny lens library (after all, lenses are pretty useful for everything, not just for updating records!). . This library is an extract from <http://hackage.haskell.org/package/lens lens> (with no dependencies). It's not a toy lenses library, unsuitable for â\x80\x9creal worldâ\x80\x9d, but merely a small one. It is compatible with lens, and should have same performance. It also has better documentation. . There's a longer readme <https://github.com/aelve/microlens#readme on Github>. It has a migration guide for lens users, a description of other packages in the family, a discussion of other lens libraries you could use instead, and so on. . Here are some usecases for this library: . * You want to define lenses or traversals in your own library, but don't want to depend on lens. Having lenses available often make working with a library more pleasant. . * You just want to be able to use lenses to transform data (or even just use @over _1@ to change the first element of a tuple). . * You are new to lenses and want a small library to play with. . However, don't use this library if: . * You need @Iso@s, @Prism@s, indexed traversals, or actually anything else which isn't defined here (tho some indexed functions are available elsewhere â\x80\x93 containers and vector provide them for their types, and <http://hackage.haskell.org/package/ilist ilist> provides indexed functions for lists). . * You want a library with a clean, understandable implementation (in which case you're looking for <http://hackage.haskell.org/package/lens-simple lens-simple>). . As already mentioned, if you're writing an application which uses lenses more extensively, look at <http://hackage.haskell.org/package/microlens-platform microlens-platform> â\x80\x93 it combines features of most other microlens packages (<http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>). . If you want to export getters or folds and don't mind the <http://hackage.haskell.org/package/contravariant contravariant> dependency, please consider using <http://hackage.haskell.org/package/microlens-contra microlens-contra>. . If you haven't ever used lenses before, read <http://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html this tutorial>. (It's for lens, but it applies to microlens just as well.) . Note that microlens has no dependencies starting from GHC 7.10 (base-4.8). Prior to that, it depends on transformers-0.2 or above.")
    (license bsd-3)))

(define-public ghc-microlens-mtl
  (package
    (name "ghc-microlens-mtl")
    (version "0.1.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/microlens-mtl/microlens-mtl-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1885kc8sgcrv05q2sya4q562gph7hgp1hd66mgy7r1vnnz43zfjf"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-microlens" ,ghc-microlens)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-transformers-compat"
        ,ghc-transformers-compat)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis
      "microlens support for Reader/Writer/State from mtl")
    (description
      "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package. . This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license bsd-3)))

(define-public ghc-mintty
  (package
    (name "ghc-mintty")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/mintty/mintty-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "10wz5q85h366g22jijai5g6hpxa22zy2hr33bzidxs4r36gk8zy8"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/RyanGlScott/mintty")
    (synopsis
      "A reliable way to detect the presence of a MinTTY console on Windows")
    (description
      "MinTTY is a Windows-specific terminal emulator for the widely used Cygwin and MSYS projects, which provide Unix-like environments for Windows. MinTTY consoles behave differently from native Windows consoles (such as @cmd.exe@ or PowerShell) in many ways, and in some cases, these differences make it necessary to treat MinTTY consoles differently in code. . The @mintty@ library provides a simple way to detect if your code in running in a MinTTY console on Windows. It exports @isMinTTY@, which does the right thing 90% of the time (by checking if standard error is attached to MinTTY), and it also exports @isMinTTYHandle@ for the other 10% of the time (when you want to check is some arbitrary handle is attached to MinTTY). As you might expect, both of these functions will simply return @False@ on any non-Windows operating system.")
    (license bsd-3)))

(define-public ghc-monad-logger
  (package
    (name "ghc-monad-logger")
    (version "0.3.25.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/monad-logger/monad-logger-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0yv4fsi566zrn30j2g5l901lyqgmflhvzy4hji7ikcbh5d45m920"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-transformers-compat"
        ,ghc-transformers-compat)
        ("ghc-text" ,ghc-text)
        ("ghc-stm" ,ghc-stm)
        ("ghc-stm-chans" ,ghc-stm-chans)
        ("ghc-lifted-base" ,ghc-lifted-base)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-conduit" ,ghc-conduit)
        ("ghc-conduit-extra" ,ghc-conduit-extra)
        ("ghc-fast-logger" ,ghc-fast-logger)
        ("ghc-transformers-base" ,ghc-transformers-base)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-monad-loops" ,ghc-monad-loops)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-blaze-builder" ,ghc-blaze-builder)
        ("ghc-exceptions" ,ghc-exceptions)))
    (home-page
      "https://github.com/kazu-yamamoto/logger")
    (synopsis
      "A class of monads which can log messages.")
    (description
      "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/monad-logger>.")
    (license expat)))

(define-public ghc-monad-unlift
  (package
    (name "ghc-monad-unlift")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/monad-unlift/monad-unlift-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "03zf2nd00ds12rrbp3qn7pr9vaw1npzswrzcnhc1k0p436366pjb"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-monad-control" ,ghc-monad-control)
        ("ghc-transformers-base" ,ghc-transformers-base)
        ("ghc-constraints" ,ghc-constraints)))
    (home-page
      "https://github.com/fpco/monad-unlift")
    (synopsis
      "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license expat)))

(define-public ghc-open-browser
  (package
    (name "ghc-open-browser")
    (version "0.2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/open-browser/open-browser-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0rna8ir2cfp8gk0rd2q60an51jxc08lx4gl0liw8wwqgh1ijxv8b"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/rightfold/open-browser")
    (synopsis "Open a web browser from Haskell.")
    (description
      "Open a web browser from Haskell. Currently BSD, Linux, OS X and Windows are supported.")
    (license bsd-3)))

(define-public ghc-path
  (package
    (name "ghc-path")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/path/path-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0nayla4k1gb821k8y5b9miflv1bi8f0czf9rqr044nrr2dddi2sb"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-aeson" ,ghc-aeson)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-genvalidity" ,ghc-genvalidity)
        ("ghc-genvalidity-property"
        ,ghc-genvalidity-property)
        ("ghc-validity" ,ghc-validity)))
    (home-page
      "http://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license bsd-3)))

(define-public ghc-path-io
  (package
    (name "ghc-path-io")
    (version "1.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/path-io/path-io-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1g9m3qliqjk1img894wsb89diym5zrq51qkkrwhz4sbm9a8hbv1a"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-dlist" ,ghc-dlist)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-path" ,ghc-path)
        ("ghc-temporary" ,ghc-temporary)
        ("ghc-unix-compat" ,ghc-unix-compat)
        ("ghc-hspec" ,ghc-hspec)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis
      "Interface to â\x80\x98directoryâ\x80\x99 package for users of â\x80\x98pathâ\x80\x99")
    (description
      "Interface to â\x80\x98directoryâ\x80\x99 package for users of â\x80\x98pathâ\x80\x99.")
    (license bsd-3)))

(define-public ghc-persistent
  (package
    (name "ghc-persistent")
    (version "2.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/persistent/persistent-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1snywd1qaj572m0nqdadqm9i86n0mhz8gcwwnaf35kk2sd8lvg6f"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-old-locale" ,ghc-old-locale)
        ("ghc-text" ,ghc-text)
        ("ghc-conduit" ,ghc-conduit)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-lifted-base" ,ghc-lifted-base)
        ("ghc-resource-pool" ,ghc-resource-pool)
        ("ghc-path-pieces" ,ghc-path-pieces)
        ("ghc-http-api-data" ,ghc-http-api-data)
        ("ghc-aeson" ,ghc-aeson)
        ("ghc-monad-logger" ,ghc-monad-logger)
        ("ghc-transformers-base" ,ghc-transformers-base)
        ("ghc-base64-bytestring" ,ghc-base64-bytestring)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-vector" ,ghc-vector)
        ("ghc-attoparsec" ,ghc-attoparsec)
        ("ghc-blaze-html" ,ghc-blaze-html)
        ("ghc-blaze-markup" ,ghc-blaze-markup)
        ("ghc-silently" ,ghc-silently)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-fast-logger" ,ghc-fast-logger)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-hspec" ,ghc-hspec)))
    (home-page
      "http://www.yesodweb.com/book/persistent")
    (synopsis
      "Type-safe, multi-backend data serialization.")
    (description
      "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license expat)))

(define ghc-persistent-sqlite
  (package
    (name "ghc-persistent-sqlite")
    (version "2.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/persistent-sqlite/persistent-sqlite-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1gw5p531187dqchi7384q3irh9n8p7prs172zpq9r1l1ziqw8dk1"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-persistent" ,ghc-persistent)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-text" ,ghc-text)
        ("ghc-aeson" ,ghc-aeson)
        ("ghc-conduit" ,ghc-conduit)
        ("ghc-monad-logger" ,ghc-monad-logger)
        ("ghc-microlens-th" ,ghc-microlens-th)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-old-locale" ,ghc-old-locale)
        ("ghc-resource-pool" ,ghc-resource-pool)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-persistent-template"
        ,ghc-persistent-template)
        ("ghc-temporary" ,ghc-temporary)))
    (home-page
      "http://www.yesodweb.com/book/persistent")
    (synopsis
      "Backend for the persistent library using sqlite3.")
    (description
      "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license expat)))

(define-public ghc-persistent-template
  (package
    (name "ghc-persistent-template")
    (version "2.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/persistent-template/persistent-template-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "04a0ifjidy7lv5ip0dipjgsvr3h9kkw37z03s5kaxyaqh405nsfy"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-persistent" ,ghc-persistent)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-text" ,ghc-text)
        ("ghc-aeson" ,ghc-aeson)
        ("ghc-aeson-compat" ,ghc-aeson-compat)
        ("ghc-monad-logger" ,ghc-monad-logger)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-path-pieces" ,ghc-path-pieces)
        ("ghc-http-api-data" ,ghc-http-api-data)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page
      "http://www.yesodweb.com/book/persistent")
    (synopsis
      "Type-safe, non-relational, multi-backend persistence.")
    (description
      "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent-template>.")
    (license expat)))

(define-public ghc-regex-applicative-text
  (package
    (name "ghc-regex-applicative-text")
    (version "0.1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/regex-applicative-text/regex-applicative-text-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1ng2qhk4mvpzl8fx91ig7ldv09v9aqdsvn6yl9yjapc6h0ghb4xh"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-regex-applicative" ,ghc-regex-applicative)
        ("ghc-text" ,ghc-text)))
    (home-page
      "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description
      "Wrapped regex-applicative primitives to work with Text")
    (license bsd-3)))

(define-public ghc-retry
  (package
    (name "ghc-retry")
    (version "0.7.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/retry/retry-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0z5ls9z5zcqkk3vbpl4wdgspi98n19m5i8mfian1fyxkf0jkj6sj"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-data-default-class"
        ,ghc-data-default-class)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-random" ,ghc-random)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-stm" ,ghc-stm)
        ("ghc-mtl" ,ghc-mtl)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis
      "Retry combinators for monadic actions that may fail")
    (description
      "This package exposes combinators that can wrap arbitrary monadic actions. They run the action and potentially retry running it with some configurable delay for a configurable number of times. The purpose is to make it easier to work with IO and especially network IO actions that often experience temporary failure and warrant retrying of the original action. For example, a database query may time out for a while, in which case we should hang back for a bit and retry the query instead of simply raising an exception.")
    (license bsd-3)))

(define-public ghc-safe-exceptions
  (package
    (name "ghc-safe-exceptions")
    (version "0.1.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/safe-exceptions/safe-exceptions-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "074dy2f9fbhnh59clpz8c1ljplm1wwqjj7r3i4nv0rcl0khprm3i"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-exceptions" ,ghc-exceptions)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-void" ,ghc-void)))
    (home-page
      "https://github.com/fpco/safe-exceptions#readme")
    (synopsis
      "Safe, consistent, and easy exception handling")
    (description "Please see README.md")
    (license expat)))

(define-public ghc-text-binary
  (package
    (name "ghc-text-binary")
    (version "0.2.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/text-binary/text-binary-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "18gl10pwg3qwsk0za3c70j4n6a9129wwf1b7d3a461h816yv55xn"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-text" ,ghc-text)))
    (home-page "https://github.com/kawu/text-binary")
    (synopsis "Binary instances for text types")
    (description
      "A compatibility layer providing Binary instances for strict and lazy text types for versions older than 1.2.1 of <https://hackage.haskell.org/package/text>.")
    (license bsd-2)))

(define-public ghc-text-metrics
  (package
    (name "ghc-text-metrics")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/text-metrics/text-metrics-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "18mzxwkdvjp31r720ai9bnxr638qq8x3a2v408bz0d8f0rsayx1q"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-text" ,ghc-text)
        ("ghc-vector" ,ghc-vector)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hspec" ,ghc-hspec)))
    (home-page
      "https://github.com/mrkkrp/text-metrics")
    (synopsis
      "Calculate various string metrics efficiently")
    (description
      "Calculate various string metrics efficiently.")
    (license bsd-3)))

(define-public ghc-unicode-transforms
  (package
    (name "ghc-unicode-transforms")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/unicode-transforms/unicode-transforms-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "04ga6dhsz9x279w3ik2sjphgmr8s6y0wd0bpg37ymn5mxp68lx2r"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-bitarray" ,ghc-bitarray)
        ("ghc-text" ,ghc-text)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-getopt-generics" ,ghc-getopt-generics)
        ("ghc-split" ,ghc-split)))
    (home-page
      "http://github.com/harendra-kumar/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
      "Fast Unicode 9.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license bsd-3)))

(define-public ghc-hastache
  (package
    (name "ghc-hastache")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hastache/hastache-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0r5l8k157pgvz1ck4lfid5x05f2s0nlmwf33f4fj09b1kmk8k3wc"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-blaze-builder" ,ghc-blaze-builder)
        ("ghc-ieee754" ,ghc-ieee754)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-syb" ,ghc-syb)
        ("ghc-text" ,ghc-text)
        ("ghc-hunit" ,ghc-hunit)))
    (home-page "http://github.com/lymar/hastache")
    (synopsis
      "Haskell implementation of Mustache templates")
    (description
      "Haskell implementation of Mustache templates (<http://mustache.github.com/>). . See homepage for examples of usage: <http://github.com/lymar/hastache> . In case version constraints need updating please comment <https://github.com/haskell-infra/hackage-trustees/issues/58 here>")
    (license bsd-3)))

(define-public ghc-project-template
  (package
    (name "ghc-project-template")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/project-template/project-template-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0433a2cmximz2jbg0m97h80pvmb7vafjvw3qzjpsncavg38xgaxf"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base64-bytestring" ,ghc-base64-bytestring)
        ("ghc-text" ,ghc-text)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-conduit" ,ghc-conduit)
        ("ghc-conduit-extra" ,ghc-conduit-extra)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis
      "Specify Haskell project templates and generate files")
    (description
      "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license bsd-3)))

(define-public ghc-hpack
  (package
    (name "ghc-hpack")
    (version "0.18.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hpack/hpack-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1ssawa6187m0xzn7i5hn154qajq46jlpbvz1s28qk4bigpv38m7k"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base-compat" ,ghc-base-compat)
        ("ghc-glob" ,ghc-glob)
        ("ghc-text" ,ghc-text)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-yaml" ,ghc-yaml)
        ("ghc-aeson" ,ghc-aeson)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-temporary" ,ghc-temporary)
        ("ghc-mockery" ,ghc-mockery)
        ("ghc-interpolate" ,ghc-interpolate)
        ("ghc-aeson-qq" ,ghc-aeson-qq)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis
      "An alternative format for Haskell packages")
    (description
      "See README at <https://github.com/sol/hpack#readme>")
    (license expat)))

(define-public ghc-store
  (package
    (name "ghc-store")
    (version "0.4.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/store/store-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "13ihh1n42j9lq2dhkcgisds7bzm7nm4a02abk8vadracn4a7r97c"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-store-core" ,ghc-store-core)
        ("ghc-th-utilities" ,ghc-th-utilities)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-th-reify-many" ,ghc-th-reify-many)
        ("ghc-base-orphans" ,ghc-base-orphans)
        ("ghc-base64-bytestring" ,ghc-base64-bytestring)
        ("ghc-conduit" ,ghc-conduit)
        ("ghc-cryptohash" ,ghc-cryptohash)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-hspec-smallcheck" ,ghc-hspec-smallcheck)
        ("ghc-lifted-base" ,ghc-lifted-base)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-mono-traversable" ,ghc-mono-traversable)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-safe" ,ghc-safe)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-smallcheck" ,ghc-smallcheck)
        ("ghc-syb" ,ghc-syb)
        ("ghc-text" ,ghc-text)
        ("ghc-th-lift" ,ghc-th-lift)
        ("ghc-th-lift-instances" ,ghc-th-lift-instances)
        ("ghc-th-orphans" ,ghc-th-orphans)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-vector" ,ghc-vector)
        ("ghc-void" ,ghc-void)
        ("ghc-free" ,ghc-free)
        ("ghc-network" ,ghc-network)
        ("ghc-streaming-commons" ,ghc-streaming-commons)
        ("ghc-async" ,ghc-async)
        ("ghc-contravariant" ,ghc-contravariant)
        ("ghc-weigh" ,ghc-weigh)
        ("ghc-criterion" ,ghc-criterion)
        ("ghc-cereal" ,ghc-cereal)
        ("ghc-cereal-vector" ,ghc-cereal-vector)
        ("ghc-vector-binary-instances"
        ,ghc-vector-binary-instances)))
    (home-page
      "https://github.com/fpco/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license expat)))

(define-public ghc-store-core
  (package
    (name "ghc-store-core")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/store-core/store-core-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1d34n2n9vjngxndkbxcqm07sg4cnaq6rlx013rhyjr3aybwqalhl"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-primitive" ,ghc-primitive)
        ("ghc-fail" ,ghc-fail)
        ("ghc-text" ,ghc-text)))
    (home-page
      "https://github.com/fpco/store#readme")
    (synopsis
      "Fast and lightweight binary serialization")
    (description "")
    (license expat)))

(define-public ghc-file-embed
  (package
    (name "ghc-file-embed")
    (version "0.0.10")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/file-embed/file-embed-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "04gpylngm2aalqcgdk7gy7jiw291dala1354spxa8wspxif94lgp"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/snoyberg/file-embed")
    (synopsis
      "Use Template Haskell to embed file contents directly.")
    (description
      "Use Template Haskell to read a file or all the files in a directory, and turn them into (path, bytestring) pairs embedded in your haskell code.")
    (license bsd-3)))

(define-public ghc-pid1
  (package
    (name "ghc-pid1")
    (version "0.1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/pid1/pid1-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0xkz4vdh8cblpl8k2xmqs8vwv2c0vpxdbikcf2dnmzbg9fdvz5wy"))))
    (build-system haskell-build-system)
    (home-page "https://github.com/fpco/pid1#readme")
    (synopsis
      "Do signal handling and orphan reaping for Unix PID1 init processes")
    (description
      "Please see README.md or view Haddocks at <https://www.stackage.org/package/pid1>")
    (license expat)))

(define-public ghc-optparse-simple
  (package
    (name "ghc-optparse-simple")
    (version "0.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/optparse-simple/optparse-simple-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0zlcvxhx98k1akbv5fzsvwcrmb1rxsmmyaiwkhfrp5dxq6kg0is5"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-optparse-applicative"
        ,ghc-optparse-applicative)
        ("ghc-gitrev" ,ghc-gitrev)
        ("ghc-either" ,ghc-either)))
    (home-page
      "http://hackage.haskell.org/package/optparse-simple")
    (synopsis
      "Simple interface to optparse-applicative")
    (description
      "Simple interface to optparse-applicative")
    (license bsd-3)))

(define-public ghc-neat-interpolation
  (package
    (name "ghc-neat-interpolation")
    (version "0.3.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/neat-interpolation/neat-interpolation-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0550dy0vwh81byi9bxhdzqx5y9lnvkwj5rbks5rbj2fylhyf8c2m"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-text" ,ghc-text)
        ("ghc-parsec" ,ghc-parsec)
        ("ghc-base-prelude" ,ghc-base-prelude)
        ("ghc-htf" ,ghc-htf)))
    (home-page
      "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis
      "A quasiquoter for neat and simple multiline text interpolation")
    (description
      "A quasiquoter for producing Text values with support for a simple interpolation of input values. It removes the excessive indentation from the input and accurately manages the indentation of all lines of the interpolated variables.")
    (license expat)))

(define-public ghc-mono-traversable
  (package
    (name "ghc-mono-traversable")
    (version "1.0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/mono-traversable/mono-traversable-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0smirpwika7d5a98h20jr9jqg41n7vqfy7k31crmn449qfig9ljf"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-text" ,ghc-text)
        ("ghc-vector" ,ghc-vector)
        ("ghc-vector-algorithms" ,ghc-vector-algorithms)
        ("ghc-split" ,ghc-split)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-foldl" ,ghc-foldl)))
    (home-page
      "https://github.com/snoyberg/mono-traversable")
    (synopsis
      "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
      "Monomorphic variants of the Functor, Foldable, and Traversable typeclasses. If you understand Haskell's basic typeclasses, you understand mono-traversable. In addition to what you are used to, it adds on an IsSequence typeclass and has code for marking data structures as non-empty.")
    (license expat)))

(define-public ghc-generics-sop
  (package
    (name "ghc-generics-sop")
    (version "0.3.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/generics-sop/generics-sop-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1bazlhgmxcwv7vd44jhdx74cnhmaz6yy47jxfycapjj4mjrnp0x7"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-transformers-compat"
        ,ghc-transformers-compat)))
    (home-page
      "http://hackage.haskell.org/package/generics-sop")
    (synopsis
      "Generic Programming using True Sums of Products")
    (description
      "A library to support the definition of generic functions. Datatypes are viewed in a uniform, structured way: the choice between constructors is represented using an n-ary sum, and the arguments of each constructor are represented using an n-ary product. . The module \"Generics.SOP\" is the main module of this library and contains more detailed documentation. . Examples of using this library are provided by the following packages: . * @<https://hackage.haskell.org/package/basic-sop basic-sop>@ basic examples, . * @<https://hackage.haskell.org/package/pretty-sop pretty-sop>@ generic pretty printing, . * @<https://hackage.haskell.org/package/lens-sop lens-sop>@ generically computed lenses, . * @<https://hackage.haskell.org/package/json-sop json-sop>@ generic JSON conversions. . A detailed description of the ideas behind this library is provided by the paper: . * Edsko de Vries and Andres LÃ¶h. <http://www.andres-loeh.de/TrueSumsOfProducts True Sums of Products>. Workshop on Generic Programming (WGP) 2014. .")
    (license bsd-3)))

(define-public ghc-binary-orphans
  (package
    (name "ghc-binary-orphans")
    (version "0.1.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/binary-orphans/binary-orphans-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1k6067wn9zki7xvbslvxx8cq1wrmz3kjb3q3x8mxycc9v765fxgi"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-aeson" ,ghc-aeson)
        ("ghc-case-insensitive" ,ghc-case-insensitive)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-text" ,ghc-text)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-vector" ,ghc-vector)
        ("ghc-text-binary" ,ghc-text-binary)
        ("ghc-vector-binary-instances"
        ,ghc-vector-binary-instances)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page
      "https://github.com/phadej/binary-orphans#readme")
    (synopsis "Orphan instances for binary")
    (description
      "`binary-orphans` defines orphan instances for types in some popular packages.")
    (license bsd-3)))

(define-public ghc-conduit-combinators
  (package
    (name "ghc-conduit-combinators")
    (version "1.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/conduit-combinators/conduit-combinators-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0609miq03lq9visfb2dqqsxghmvgzm24pq39mqby1jnnah6yh8m0"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-conduit" ,ghc-conduit)
        ("ghc-conduit-extra" ,ghc-conduit-extra)
        ("ghc-transformers-base" ,ghc-transformers-base)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-vector" ,ghc-vector)
        ("ghc-text" ,ghc-text)
        ("ghc-void" ,ghc-void)
        ("ghc-mwc-random" ,ghc-mwc-random)
        ("ghc-unix-compat" ,ghc-unix-compat)
        ("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-base64-bytestring" ,ghc-base64-bytestring)
        ("ghc-resourcet" ,ghc-resourcet)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-chunked-data" ,ghc-chunked-data)
        ("ghc-mono-traversable" ,ghc-mono-traversable)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-silently" ,ghc-silently)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-safe" ,ghc-safe)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page
      "https://github.com/snoyberg/mono-traversable")
    (synopsis
      "Commonly used conduit functions, for both chunked and unchunked data")
    (description
      "Provides a replacement for Data.Conduit.List, as well as a convenient Conduit module.")
    (license expat)))

(define-public ghc-mwc-random
  (package
    (name "ghc-mwc-random")
    (version "0.13.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/mwc-random/mwc-random-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "05j7yh0hh9nxic3dijmzv44kc6gzclvamdph7sq7w19wq57k6pq6"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-primitive" ,ghc-primitive)
        ("ghc-vector" ,ghc-vector)
        ("ghc-math-functions" ,ghc-math-functions)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-statistics" ,ghc-statistics)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-hunit"
        ,ghc-test-framework-hunit)
        ("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)))
    (home-page "https://github.com/bos/mwc-random")
    (synopsis
      "Fast, high quality pseudo random number generation")
    (description
      "This package contains code for generating high quality random numbers that follow either a uniform or normal distribution.  The generated numbers are suitable for use in statistical applications. . The uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222) multiply-with-carry generator, which has a period of 2^8222 and fares well in tests of randomness.  It is also extremely fast, between 2 and 3 times faster than the Mersenne Twister. . Compared to the mersenne-random package, this package has a more convenient API, is faster, and supports more statistical distributions.")
    (license bsd-3)))

(define-public ghc-chunked-data
  (package
    (name "ghc-chunked-data")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/chunked-data/chunked-data-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0bszq6fijnr4pmadzz89smj7kfmzx0ca3wd9ga8gv0in9jk9vgp1"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-text" ,ghc-text)
        ("ghc-vector" ,ghc-vector)
        ("ghc-semigroups" ,ghc-semigroups)))
    (home-page
      "https://github.com/snoyberg/mono-traversable")
    (synopsis
      "Typeclasses for dealing with various chunked data representations")
    (description
      "Originally present in classy-prelude.")
    (license expat)))

(define-public ghc-math-functions
  (package
    (name "ghc-math-functions")
    (version "0.2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/math-functions/math-functions-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1sv5vabsx332v1lpb6v3jv4zrzvpx1n7yprzd8wlcda5vsc5a6zp"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-vector" ,ghc-vector)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-vector-th-unbox" ,ghc-vector-th-unbox)
        ("ghc-erf" ,ghc-erf)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-hunit"
        ,ghc-test-framework-hunit)
        ("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)))
    (home-page
      "https://github.com/bos/math-functions")
    (synopsis
      "Special functions and Chebyshev polynomials")
    (description
      "This library provides implementations of special mathematical functions and Chebyshev polynomials.  These functions are often useful in statistical and numerical computing.")
    (license bsd-3)))

(define-public ghc-statistics
  (package
    (name "ghc-statistics")
    (version "0.14.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/statistics/statistics-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0y27gafkib0x0fn39qfn2rkgsfrm09ng35sbb5dwr7rclhnxz59l"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-aeson" ,ghc-aeson)
        ("ghc-base-orphans" ,ghc-base-orphans)
        ("ghc-erf" ,ghc-erf)
        ("ghc-math-functions" ,ghc-math-functions)
        ("ghc-monad-par" ,ghc-monad-par)
        ("ghc-mwc-random" ,ghc-mwc-random)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-vector" ,ghc-vector)
        ("ghc-vector-algorithms" ,ghc-vector-algorithms)
        ("ghc-vector-th-unbox" ,ghc-vector-th-unbox)
        ("ghc-vector-binary-instances"
        ,ghc-vector-binary-instances)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-ieee754" ,ghc-ieee754)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-hunit"
        ,ghc-test-framework-hunit)
        ("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)))
    (home-page "https://github.com/bos/statistics")
    (synopsis
      "A library of statistical types, data, and functions")
    (description
      "This library provides a number of common functions and types useful in statistics.  We focus on high performance, numerical robustness, and use of good algorithms.  Where possible, we provide references to the statistical literature. . The library's facilities can be divided into four broad categories: . * Working with widely used discrete and continuous probability distributions.  (There are dozens of exotic distributions in use; we focus on the most common.) . * Computing with sample data: quantile estimation, kernel density estimation, histograms, bootstrap methods, significance testing, and regression and autocorrelation analysis. . * Random variate generation under several different distributions. . * Common statistical tests for significant differences between samples.")
    (license bsd-2)))

(define-public ghc-vector-th-unbox
  (package
    (name "ghc-vector-th-unbox")
    (version "0.2.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/vector-th-unbox/vector-th-unbox-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0d82x55f5vvr1jvaia382m23rs690lg55pvavv8f4ph0y6kd91xy"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-vector" ,ghc-vector)
        ("ghc-data-default" ,ghc-data-default)))
    (home-page
      "http://hackage.haskell.org/package/vector-th-unbox")
    (synopsis
      "Deriver for Data.Vector.Unboxed using Template Haskell")
    (description
      "A Template Haskell deriver for unboxed vectors, given a pair of coercion functions to and from some existing type with an Unbox instance. . Refer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.")
    (license bsd-3)))

(define-public ghc-erf
  (package
    (name "ghc-erf")
    (version "2.0.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/erf/erf-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0dxk2r32ajmmc05vaxcp0yw6vgv4lkbmh8jcshncn98xgsfbgw14"))))
    (build-system haskell-build-system)
    (home-page
      "http://hackage.haskell.org/package/erf")
    (synopsis
      "The error function, erf, and friends The error function, erf, and related functions.")
    (description
      "A type class for the error function, erf, and related functions. Instances for Float and Double.")
    (license #f)))

(define-public ghc-monad-par
  (package
    (name "ghc-monad-par")
    (version "0.3.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/monad-par/monad-par-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0ldrzqy24fsszvn2a2nr77m2ih7xm0h9bgkjyv1l274aj18xyk7q"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-abstract-par" ,ghc-abstract-par)
        ("ghc-abstract-deque" ,ghc-abstract-deque)
        ("ghc-monad-par-extras" ,ghc-monad-par-extras)
        ("ghc-mwc-random" ,ghc-mwc-random)
        ("ghc-parallel" ,ghc-parallel)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-test-framework-hunit"
        ,ghc-test-framework-hunit)
        ("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-th" ,ghc-test-framework-th)))
    (home-page
      "https://github.com/simonmar/monad-par")
    (synopsis
      "A library for parallel programming based on a monad")
    (description
      "The 'Par' monad offers a simple API for parallel programming.  The library works for parallelising both pure and @IO@ computations, although only the pure version is deterministic.  The default implementation provides a work-stealing scheduler and supports forking tasks that are much lighter weight than IO-threads. . For complete documentation see \"Control.Monad.Par\". . Some examples of use can be found in the @examples/@ directory of the source package. . Other related packages: . * @abstract-par@ provides the type classes that abstract over different implementations of the @Par@ monad. . * @monad-par-extras@ provides extra combinators and monad transformers layered on top of the @Par@ monad. . Changes in 0.3.4 relative to 0.3: . * Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes. . * Added \"Control.Monad.Par.IO\"")
    (license bsd-3)))

(define-public ghc-vector-algorithms
  (package
    (name "ghc-vector-algorithms")
    (version "0.7.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/vector-algorithms/vector-algorithms-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0w4hf598lpxfg58rnimcqxrbnpqq2jmpjx82qa5md3q6r90hlipd"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-vector" ,ghc-vector)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-mwc-random" ,ghc-mwc-random)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page "http://code.haskell.org/~dolio/")
    (synopsis
      "Efficient algorithms for vector arrays")
    (description
      "Efficient algorithms for vector arrays")
    (license bsd-3)))

(define-public ghc-abstract-par
  (package
    (name "ghc-abstract-par")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/abstract-par/abstract-par-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0q6qsniw4wks2pw6wzncb1p1j3k6al5njnvm2v5n494hplwqg2i4"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/simonmar/monad-par")
    (synopsis
      "Type classes generalizing the functionality of the 'monad-par' library.")
    (description
      "The 'Par' monad offers a parallel programming API based on dataflow programming.  To use the `Par` monad, install the @monad-par@ package, which includes this package as a dependency. . This package is an abstract interface only. It provides a number of type clasess, but not an implementation.  The type classes separate different levels of @Par@ functionality.  See the \"Control.Monad.Par.Class\" module for more details.")
    (license bsd-3)))

(define-public ghc-abstract-deque
  (package
    (name "ghc-abstract-deque")
    (version "0.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/abstract-deque/abstract-deque-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "18jwswjxwzc9bjiy4ds6hw2a74ki797jmfcifxd2ga4kh7ri1ah9"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-random" ,ghc-random)
        ("ghc-atomic-primops" ,ghc-atomic-primops)))
    (home-page
      "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
      "Abstract, parameterized interface to mutable Deques.")
    (description
      "An abstract interface to highly-parameterizable queues/deques. . Background: There exists a feature space for queues that extends between: . * simple, single-ended, non-concurrent, bounded queues . * double-ended, threadsafe, growable queues . ... with important points inbetween (such as the queues used for work-stealing). . This package includes an interface for Deques that allows the programmer to use a single API for all of the above, while using the type-system to select an efficient implementation given the requirements (using type families). . This package also includes a simple reference implementation based on 'IORef' and \"Data.Sequence\".")
    (license bsd-3)))

(define-public ghc-monad-par-extras
  (package
    (name "ghc-monad-par-extras")
    (version "0.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/monad-par-extras/monad-par-extras-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-abstract-par" ,ghc-abstract-par)
        ("ghc-cereal" ,ghc-cereal)
        ("ghc-random" ,ghc-random)
        ("ghc-mtl" ,ghc-mtl)))
    (home-page
      "https://github.com/simonmar/monad-par")
    (synopsis
      "Combinators and extra features for Par monads")
    (description
      "The modules below provide additional data structures, and other added capabilities layered on top of the 'Par' monad.")
    (license bsd-3)))

(define-public ghc-test-framework-th
  (package
    (name "ghc-test-framework-th")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/test-framework-th/test-framework-th-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "12lw7yj02jb9s0i7rb98jjam43j2h0gzmnbj9zi933fx7sg0sy4b"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-test-framework" ,ghc-test-framework)
        ("ghc-language-haskell-extract"
        ,ghc-language-haskell-extract)
        ("ghc-haskell-src-exts" ,ghc-haskell-src-exts)
        ("ghc-regex-posix" ,ghc-regex-posix)))
    (home-page
      "http://github.com/finnsson/test-generator")
    (synopsis
      "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.")
    (description
      "@test-framework-th@ contains two interesting functions: @defaultMainGenerator@ and @testGroupGenerator@. . @defaultMainGenerator@ will extract all functions beginning with case_, prop_ or test_in the module and put them in a testGroup. . > -- file SomeModule.hs > ( -# LANGUAGE TemplateHaskell #- ) > module SomeModule where > import Test.Framework.TH > import Test.Framework > import Test.HUnit > import Test.Framework.Providers.HUnit > import Test.Framework.Providers.QuickCheck2 > > -- observe this line! > main = $(defaultMainGenerator) > case_1 = do 1 @=? 1 > case_2 = do 2 @=? 2 > prop_reverse xs = reverse (reverse xs) == xs >    where types = xs::[Int] . is the same as . > -- file SomeModule.hs > ( -# LANGUAGE TemplateHaskell #- ) > module SomeModule where > import Test.Framework.TH > import Test.Framework > import Test.HUnit > import Test.Framework.Providers.HUnit > import Test.Framework.Providers.QuickCheck2 > > -- observe this line! > main = >   defaultMain [ >     testGroup \"SomeModule\" [ testCase \"1\" case_1, testCase \"2\" case_2, testProperty \"reverse\" prop_reverse] >     ] > > case_1 = do 1 @=? 1 > case_2 = do 2 @=? 2 > prop_reverse xs = reverse (reverse xs) == xs >    where types = xs::[Int] . @testGroupGenerator@ is like @defaultMainGenerator@ but without @defaultMain@. It is useful if you need a function for the testgroup (e.g. if you want to be able to call the testgroup from another module).")
    (license bsd-3)))

(define-public ghc-atomic-primops
  (package
    (name "ghc-atomic-primops")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/atomic-primops/atomic-primops-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0zqbx0sfgl0hi8bqavvwjxsczayxrhwjqxymaawrvn44xr9g35c1"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-primitive" ,ghc-primitive)))
    (home-page
      "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
      "A safe approach to CAS and other atomic ops in Haskell.")
    (description
      "After GHC 7.4 a new `casMutVar#` primop became available, but it's difficult to use safely, because pointer equality is a highly unstable property in Haskell.  This library provides a safer method based on the concept of \"Tickets\". . Also, this library uses the \"foreign primop\" capability of GHC to add access to other variants that may be of interest, specifically, compare and swap inside an array. . Note that as of GHC 7.8, the relevant primops have been included in GHC itself. This library is engineered to work pre- and post-GHC-7.8, while exposing the same interface.")
    (license bsd-3)))

(define-public ghc-language-haskell-extract
  (package
    (name "ghc-language-haskell-extract")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/language-haskell-extract/language-haskell-extract-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1nxcs7g8a1sp91bzpy4cj6s31k5pvc3gvig04cbrggv5cvjidnhl"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-regex-posix" ,ghc-regex-posix)))
    (home-page
      "http://github.com/finnsson/template-helper")
    (synopsis
      "Module to automatically extract functions from the local code.")
    (description
      "@language-haskell-extract@ contains some useful helper functions on top of Template Haskell. . @functionExtractor@ extracts all functions after a regexp-pattern. . > foo = \"test\" > boo = \"testing\" > bar = $(functionExtractor \"oo$\") . will automagically extract the functions ending with @oo@ such as . > bar = [(\"foo\",foo), (\"boo\",boo)] . This can be useful if you wish to extract all functions beginning with test (for a test-framework) or all functions beginning with wc (for a web service). . @functionExtractorMap@ works like @functionsExtractor@ but applies a function over all function-pairs. . This functions is useful if the common return type of the functions is a type class. . Example: . > secondTypeclassTest = >   do let expected = [\"45\", \"88.8\", \"\\\"hej\\\"\"] >          actual = $(functionExtractorMap \"^tc\" [|\
  f -> show f|] ) >      expected @=? actual > > tcInt :: Integer > tcInt = 45 > > tcDouble :: Double > tcDouble = 88.8 > > tcString :: String > tcString = \"hej\"")
    (license bsd-3)))

(define-public ghc-foldl
  (package
    (name "ghc-foldl")
    (version "1.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/foldl/foldl-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0g9f2lzlv59bzdjkm917fpcfxrmkzhrmh3jgd2xnfwcb7sfrbmma"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-mwc-random" ,ghc-mwc-random)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-text" ,ghc-text)
        ("ghc-vector" ,ghc-vector)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-contravariant" ,ghc-contravariant)
        ("ghc-profunctors" ,ghc-profunctors)
        ("ghc-comonad" ,ghc-comonad)
        ("ghc-vector-builder" ,ghc-vector-builder)))
    (home-page
      "http://hackage.haskell.org/package/foldl")
    (synopsis
      "Composable, streaming, and efficient left folds")
    (description
      "This library provides strict left folds that stream in constant memory, and you can combine folds using @Applicative@ style to derive new folds.  Derived folds still traverse the container just once and are often as efficient as hand-written folds.")
    (license bsd-3)))

(define-public ghc-vector-builder
  (package
    (name "ghc-vector-builder")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/vector-builder/vector-builder-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1l6sfgd2s107zkp1qd1w6jdjcbznp31769qf99pxar087f697wvp"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-vector" ,ghc-vector)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-base-prelude" ,ghc-base-prelude)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)
        ("ghc-rebase" ,ghc-rebase)))
    (home-page
      "https://github.com/nikita-volkov/vector-builder")
    (synopsis "Vector builder")
    (description
      "An API for efficient and convenient construction of vectors. It provides the composable `Builder` abstraction, which has instances of the `Monoid` and `Semigroup` classes. . [Usage] . First you use the `Builder` abstraction to specify the structure of the vector. Then you execute the builder to actually produce the vector. . [Example] . The following code shows how you can efficiently concatenate different datastructures into a single immutable vector: . > >import qualified Data.Vector as A >import qualified VectorBuilder.Builder as B >import qualified VectorBuilder.Vector as C > > >myVector :: A.Vector a -> [a] -> a -> A.Vector a >myVector vector list element = >  C.build builder >  where >    builder = >      B.vector vector <> >      foldMap B.singleton list <> >      B.singleton element")
    (license expat)))

(define-public ghc-base-prelude
  (package
    (name "ghc-base-prelude")
    (version "1.2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/base-prelude/base-prelude-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "17hivs7lmsglagdlzxd9q9zsddmgqin2788mpq911zwnb57lj6l1"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/nikita-volkov/base-prelude")
    (synopsis
      "The most complete prelude formed solely from the \"base\" package")
    (description
      "A library which aims to reexport all the non-conflicting and most general definitions from the \\\"base\\\" package. This includes APIs for applicatives, arrows, monoids, foldables, traversables, exceptions, generics, ST, MVars and STM. . This package will never have any dependencies other than \\\"base\\\". . /Versioning policy/ . The versioning policy of this package deviates from PVP in the sense that its exports in part are transitively determined by the version of \\\"base\\\". Therefore it's recommended for the users of \\\"base-prelude\\\" to specify the bounds of \\\"base\\\" as well.")
    (license expat)))

(define-public ghc-rebase
  (package
    (name "ghc-rebase")
    (version "1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/rebase/rebase-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1qkhnpcc4g2vd6jmbf3b6psqkan6hyawqzrwzqdd931hsb02l6ia"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-stm" ,ghc-stm)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-vector" ,ghc-vector)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-text" ,ghc-text)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-uuid" ,ghc-uuid)
        ("ghc-dlist" ,ghc-dlist)
        ("ghc-void" ,ghc-void)
        ("ghc-bifunctors" ,ghc-bifunctors)
        ("ghc-profunctors" ,ghc-profunctors)
        ("ghc-contravariant" ,ghc-contravariant)
        ("ghc-contravariant-extras"
        ,ghc-contravariant-extras)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-semigroupoids" ,ghc-semigroupoids)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-either" ,ghc-either)
        ("ghc-fail" ,ghc-fail)
        ("ghc-base-prelude" ,ghc-base-prelude)))
    (home-page
      "https://github.com/nikita-volkov/rebase")
    (synopsis
      "A more progressive alternative to the \"base\" package")
    (description
      "This package is intended for those who are tired of keeping long lists of dependencies to the same essential libraries in each package as well as the endless imports of the same APIs all over again. It also supports the modern tendencies in the language. . To solve those problems this package does the following: . * Reexport the original APIs under the \\\"Rebase\\\" namespace. . * Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module. . * Give priority to the modern practices in the conflicting cases. . The policy behind the package is only to reexport the non-ambiguous and non-controversial APIs, which the community has obviously settled on. The package is intended to rapidly evolve with the contribution from the community, with the missing features being added with pull-requests.")
    (license expat)))

(define-public ghc-uuid
  (package
    (name "ghc-uuid")
    (version "1.3.13")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/uuid/uuid-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "09xhk42yhxvqmka0iqrv3338asncz8cap3j0ic0ps896f2581b6z"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-cryptohash-sha1" ,ghc-cryptohash-sha1)
        ("ghc-cryptohash-md5" ,ghc-cryptohash-md5)
        ("ghc-entropy" ,ghc-entropy)
        ("ghc-network-info" ,ghc-network-info)
        ("ghc-random" ,ghc-random)
        ("ghc-text" ,ghc-text)
        ("ghc-uuid-types" ,ghc-uuid-types)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page "https://github.com/hvr/uuid")
    (synopsis
      "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
      "This library is useful for creating, comparing, parsing and printing Universally Unique Identifiers. . See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license bsd-3)))

(define-public ghc-contravariant-extras
  (package
    (name "ghc-contravariant-extras")
    (version "0.3.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/contravariant-extras/contravariant-extras-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1mbrgjybdx8fjdck4ldwi8955w4qnmm0ql56zix7dyn0s7s9spgk"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-tuple-th" ,ghc-tuple-th)
        ("ghc-contravariant" ,ghc-contravariant)
        ("ghc-base-prelude" ,ghc-base-prelude)))
    (home-page
      "https://github.com/nikita-volkov/contravariant-extras")
    (synopsis
      "Extras for the \"contravariant\" package")
    (description "")
    (license expat)))

(define-public ghc-cryptohash-sha1
  (package
    (name "ghc-cryptohash-sha1")
    (version "0.11.100.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/cryptohash-sha1/cryptohash-sha1-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1aqdxdhxhl9jldh951djpwxx8z7gzaqspxl7iwpl84i5ahrsyy9w"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-sha" ,ghc-sha)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)))
    (home-page
      "https://github.com/hvr/cryptohash-sha1")
    (synopsis
      "Fast, pure and practical SHA-1 implementation")
    (description
      "A practical incremental and one-pass, pure API to the <https://en.wikipedia.org/wiki/SHA-1 SHA-1 hash algorithm> (including <https://en.wikipedia.org/wiki/HMAC HMAC> support) with performance close to the fastest implementations available in other languages. . The implementation is made in C with a haskell FFI wrapper that hides the C implementation. . NOTE: This package has been forked off @cryptohash-0.11.7@ because the @cryptohash@ package has been deprecated and so this package continues to satisfy the need for a lightweight package providing the SHA1 hash algorithm without any dependencies on packages other than @base@ and @bytestring@. . Consequently, this package can be used as a drop-in replacement for @cryptohash@'s \"Crypto.Hash.SHA1\" module, though with a clearly smaller footprint.")
    (license bsd-3)))

(define-public ghc-cryptohash-md5
  (package
    (name "ghc-cryptohash-md5")
    (version "0.11.100.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/cryptohash-md5/cryptohash-md5-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1y8q7s2bn4gdknw1wjikdnar2b5pgz3nv3220lxrlgpsf23x82vi"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-puremd5" ,ghc-puremd5)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)))
    (home-page
      "https://github.com/hvr/cryptohash-md5")
    (synopsis
      "Fast, pure and practical MD5 implementation")
    (description
      "A practical incremental and one-pass, pure API to the <https://en.wikipedia.org/wiki/MD5 MD5 hash algorithm> (including <https://en.wikipedia.org/wiki/HMAC HMAC> support) with performance close to the fastest implementations available in other languages. . The implementation is made in C with a haskell FFI wrapper that hides the C implementation. . NOTE: This package has been forked off @cryptohash-0.11.7@ because the @cryptohash@ package has been deprecated and so this package continues to satisfy the need for a lightweight package providing the MD5 hash algorithm without any dependencies on packages other than @base@ and @bytestring@. . Consequently, this package can be used as a drop-in replacement for @cryptohash@'s \"Crypto.Hash.MD5\" module, though with a clearly smaller footprint.")
    (license bsd-3)))

(define-public ghc-entropy
  (package
    (name "ghc-entropy")
    (version "0.3.7")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/entropy/entropy-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1vzg9fi597dbrcbjsr71y47rvmhiih7lg5rjnb297fzdlbmj1w0z"))))
    (build-system haskell-build-system)
    (home-page "https://github.com/TomMD/entropy")
    (synopsis
      "A platform independent entropy source")
    (description
      "A platform independent method to obtain cryptographically strong entropy (RDRAND when available anywhere, urandom on nix, CryptAPI on Windows, patches welcome) Users looking for cryptographically strong (number-theoretically sound) PRNGs should see the 'DRBG' package too.")
    (license bsd-3)))

(define-public ghc-network-info
  (package
    (name "ghc-network-info")
    (version "0.2.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/network-info/network-info-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0xndvg776241fgjmynxfpy81f1csjmh8dg33yf0c8m71ychz3pzc"))))
    (build-system haskell-build-system)
    (home-page
      "http://github.com/jystic/network-info")
    (synopsis
      "Access the local computer's basic network configuration")
    (description
      "This library provides simple read-only access to the local computer's networking configuration. It is currently capable of getting a list of all the network interfaces and their respective IPv4, IPv6 and MAC addresses. . network-info has been tested and is known to work on Ubuntu 10.10, FreeBSD 9.0, Mac OS X 10.6.4 and Windows XP/7. It probably works on other flavours of Linux, OS X, FreeBSD and Windows as well.")
    (license bsd-3)))

(define-public ghc-uuid-types
  (package
    (name "ghc-uuid-types")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/uuid-types/uuid-types-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1zdka5jnm1h6k36w3nr647yf3b5lqb336g3fkprhd6san9x52xlj"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-hashable" ,ghc-hashable)
        ("ghc-random" ,ghc-random)
        ("ghc-text" ,ghc-text)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page "https://github.com/aslatter/uuid")
    (synopsis
      "Type definitions for Universally Unique Identifiers")
    (description
      "This library contains type definitions for Universally Unique Identifiers and basic conversion functions. See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license bsd-3)))

(define-public ghc-puremd5
  (package
    (name "ghc-puremd5")
    (version "2.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/pureMD5/pureMD5-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0zdilz41cla2ck7mcw1a9702gyg2abq94mqahr4vci9sbs53bwxy"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-cereal" ,ghc-cereal)
        ("ghc-crypto-api" ,ghc-crypto-api)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-puremd5" ,ghc-puremd5)
        ("ghc-crypto-api-tests" ,ghc-crypto-api-tests)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)
        ("ghc-pretty-hex" ,ghc-pretty-hex)))
    (home-page
      "http://hackage.haskell.org/package/pureMD5")
    (synopsis
      "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
      "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports the crypto-api class interface.")
    (license bsd-3)))

(define-public ghc-crypto-api
  (package
    (name "ghc-crypto-api")
    (version "0.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/crypto-api/crypto-api-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1vc27qcgbg7hf50rkqhlrs58zn1888ilh4b6wrrm07bnm48xacak"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-cereal" ,ghc-cereal)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-entropy" ,ghc-entropy)))
    (home-page "https://github.com/TomMD/crypto-api")
    (synopsis
      "A generic interface for cryptographic operations")
    (description
      "A generic interface for cryptographic operations (hashes, ciphers, randomness). Maintainers of hash and cipher implementations are encouraged to add instances for the classes defined in Crypto.Classes.  Crypto users are similarly encouraged to use the interfaces defined in the Classes module. Any concepts or functions of general use to more than one cryptographic algorithm (ex: padding) is within scope of this package.")
    (license bsd-3)))

(define-public ghc-crypto-api-tests
  (package
    (name "ghc-crypto-api-tests")
    (version "0.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/crypto-api-tests/crypto-api-tests-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0w3j43jdrlj28jryp18hc6q84nkl2yf4vs1hhgrsk7gb9kfyqjpl"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-test-framework-quickcheck2"
        ,ghc-test-framework-quickcheck2)
        ("ghc-crypto-api" ,ghc-crypto-api)
        ("ghc-cereal" ,ghc-cereal)
        ("ghc-test-framework" ,ghc-test-framework)
        ("ghc-test-framework-hunit"
        ,ghc-test-framework-hunit)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page
      "http://trac.haskell.org/crypto-api/wiki")
    (synopsis
      "A test framework and KATs for cryptographic operations.")
    (description
      "A test framework for hash and cipher operations using the crypto-api interface.  Known answer tests (KATs) for common cryptographic algorithms are included. Patches welcome (both adding KATs for more algorithms or property tests for classes of algorithms).")
    (license bsd-3)))

(define-public ghc-pretty-hex
  (package
    (name "ghc-pretty-hex")
    (version "1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/pretty-hex/pretty-hex-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0ylwkvvjvmpprha9nx83xb8gkhyanhk5fffc0r7lb96n4ch5z6pz"))))
    (build-system haskell-build-system)
    (home-page
      "http://hackage.haskell.org/package/pretty-hex")
    (synopsis
      "A library for hex dumps of ByteStrings")
    (description
      "This library generates pretty hex dumps of ByteStrings in the style of other common *nix hex dump tools.")
    (license bsd-3)))

(define-public ghc-tuple-th
  (package
    (name "ghc-tuple-th")
    (version "0.2.5")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/tuple-th/tuple-th-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1mrl4vvxmby7sf1paf7hklzidnr6wq55822i73smqyz0xpf3gsjn"))))
    (build-system haskell-build-system)
    (home-page
      "http://hackage.haskell.org/package/tuple-th")
    (synopsis
      "Generate (non-recursive) utility functions for tuples of statically known size")
    (description
      "Template Haskell functions for generating functions similar to those in Data.List for tuples of statically known size.")
    (license bsd-3)))

(define-public ghc-monadrandom
  (package
    (name "ghc-monadrandom")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/MonadRandom/MonadRandom-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "11qdfghizww810vdj9ac1f5qr5kdmrk40l6w6qh311bjh290ygwy"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-transformers-compat"
        ,ghc-transformers-compat)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-primitive" ,ghc-primitive)
        ("ghc-fail" ,ghc-fail)
        ("ghc-random" ,ghc-random)))
    (home-page
      "http://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description
      "Support for computations which consume random values.")
    (license bsd-3)))

(define-public ghc-ed25519
  (package
    (name "ghc-ed25519")
    (version "0.0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/ed25519/ed25519-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0v8msqvgzimhs7p5ri25hrb1ni2wvisl5rmdxy89fc59py79b9fq"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hlint" ,ghc-hlint)
        ("ghc-doctest" ,ghc-doctest)))
    (home-page
      "http://thoughtpolice.github.com/hs-ed25519")
    (synopsis "Ed25519 cryptographic signatures")
    (description
      "This package provides a simple, fast, self-contained copy of the Ed25519 public-key signature system with a clean interface. It also includes support for detached signatures, and thorough documentation on the design and implementation, including usage guidelines.")
    (license expat)))

(define-public ghc-cryptohash-sha256
  (package
    (name "ghc-cryptohash-sha256")
    (version "0.11.100.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/cryptohash-sha256/cryptohash-sha256-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1mpmq8rqlqp3w9r78d4i175l6ibl9kfj5d48awrkk1k4x4w27c2p"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-sha" ,ghc-sha)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)))
    (home-page
      "https://github.com/hvr/cryptohash-sha256")
    (synopsis
      "Fast, pure and practical SHA-256 implementation")
    (description
      "A practical incremental and one-pass, pure API to the <https://en.wikipedia.org/wiki/SHA-2 SHA-256 hash algorithm> (including <https://en.wikipedia.org/wiki/HMAC HMAC> support) with performance close to the fastest implementations available in other languages. . The implementation is made in C with a haskell FFI wrapper that hides the C implementation. . NOTE: This package has been forked off @cryptohash-0.11.7@ because the @cryptohash@ package has been deprecated and so this package continues to satisfy the need for a lightweight package providing the SHA256 hash algorithm without any dependencies on packages other than @base@ and @bytestring@. . Consequently, this package can be used as a drop-in replacement for @cryptohash@'s \"Crypto.Hash.SHA256\" module, though with a clearly smaller footprint.")
    (license bsd-3)))

(define-public ghc-hlint
  (package
    (name "ghc-hlint")
    (version "2.0.9")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hlint/hlint-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1bd5nizx1dbzhrfcr9mgpjvg4b6f6z73jvslkbialp7g9pkr6a95"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-yaml" ,ghc-yaml)
        ("ghc-vector" ,ghc-vector)
        ("ghc-text" ,ghc-text)
        ("ghc-cpphs" ,ghc-cpphs)
        ("ghc-cmdargs" ,ghc-cmdargs)
        ("ghc-haskell-src-exts" ,ghc-haskell-src-exts)
        ("ghc-uniplate" ,ghc-uniplate)
        ("ghc-ansi-terminal" ,ghc-ansi-terminal)
        ("ghc-extra" ,ghc-extra)
        ("ghc-refact" ,ghc-refact)
        ("ghc-hscolour" ,ghc-hscolour)))
    (home-page
      "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description
      "HLint gives suggestions on how to improve your source code.")
    (license bsd-3)))

(define-public ghc-cpphs
  (package
    (name "ghc-cpphs")
    (version "1.20.8")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/cpphs/cpphs-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1bh524asqhk9v1s0wvipl0hgn7l63iy3js867yv0z3h5v2kn8vg5"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-old-locale" ,ghc-old-locale)
        ("ghc-old-time" ,ghc-old-time)
        ("ghc-polyparse" ,ghc-polyparse)))
    (home-page "http://projects.haskell.org/cpphs/")
    (synopsis
      "A liberalised re-implementation of cpp, the C pre-processor.")
    (description
      "Cpphs is a re-implementation of the C pre-processor that is both more compatible with Haskell, and itself written in Haskell so that it can be distributed with compilers. . This version of the C pre-processor is pretty-much feature-complete and compatible with traditional (K&R) pre-processors.  Additional features include: a plain-text mode; an option to unlit literate code files; and an option to turn off macro-expansion.")
    (license "'lgpl??")))

(define-public ghc-refact
  (package
    (name "ghc-refact")
    (version "0.3.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/refact/refact-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0v0zxcx29b8jxs2kgy9csykqcp8kzhdvyylw2xfwmj4pfxr2kl0a"))))
    (build-system haskell-build-system)
    (home-page
      "http://hackage.haskell.org/package/refact")
    (synopsis
      "Specify refactorings to perform with apply-refact")
    (description
      "This library provides a datatype which can be interpreted by apply-refact. It exists as a seperate library so that applications can specify refactorings without depending on GHC.")
    (license bsd-3)))

(define-public ghc-hscolour
  (package
    (name "ghc-hscolour")
    (version "1.24.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hscolour/hscolour-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1j3rpzjygh3igvnd1n2xn63bq68rs047cjxr2qi6xyfnivgf6vz4"))))
    (build-system haskell-build-system)
    (home-page
      "http://code.haskell.org/~malcolm/hscolour/")
    (synopsis "Colourise Haskell code.")
    (description
      "hscolour is a small Haskell script to colourise Haskell code. It currently has six output formats: ANSI terminal codes (optionally XTerm-256colour codes), HTML 3.2 with <font> tags, HTML 4.01 with CSS, HTML 4.01 with CSS and mouseover annotations, XHTML 1.0 with inline CSS styling, LaTeX, and mIRC chat codes.")
    (license "'lgpl??")))

(define-public ghc-stm-chans
  (package
    (name "ghc-stm-chans")
    (version "3.0.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/stm-chans/stm-chans-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0f27sp09yha43xk9q55sc185jyjs5h7gq2dhsyx6bm9kz9dzqi13"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-stm" ,ghc-stm)))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis
      "Additional types of channels for STM.")
    (description
      "Additional types of channels for STM.")
    (license bsd-3)))

(define-public ghc-monad-loops
  (package
    (name "ghc-monad-loops")
    (version "0.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/monad-loops/monad-loops-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "062c2sn3hc8h50p1mhqkpyv6x8dydz2zh3ridvlfjq9nqimszaky"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)))
    (home-page
      "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description
      "Some useful control operators for looping. . New in 0.4: STM loop operators have been split into a new package instead of being conditionally-built. . New in 0.3.2.0: various functions for traversing lists and computing minima/maxima using arbitrary procedures to compare or score the elements.")
    (license #f)))

(define-public ghc-genvalidity
  (package
    (name "ghc-genvalidity")
    (version "0.3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/genvalidity/genvalidity-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0nwhp429dvaf04zwb3k4h1m8dbqpdk6hir0zi4sf22cz3ld654hs"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-validity" ,ghc-validity)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-hspec-discover" ,ghc-hspec-discover)))
    (home-page
      "https://github.com/NorfairKing/validity#readme")
    (synopsis
      "Testing utilities for the validity library")
    (description
      "Note: There are companion instance packages for this library: . * <https://hackage.haskell.org/package/genvalidity-text genvalidity-text> . * <https://hackage.haskell.org/package/genvalidity-time genvalidity-time> . * <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers> . * <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>")
    (license expat)))

(define-public ghc-genvalidity-property
  (package
    (name "ghc-genvalidity-property")
    (version "0.0.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/genvalidity-property/genvalidity-property-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "044gf9fcih3d5qwr5nk5c534nh814q7p6s9l4wq8crf38n12w82x"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-validity" ,ghc-validity)
        ("ghc-genvalidity" ,ghc-genvalidity)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-doctest" ,ghc-doctest)))
    (home-page
      "https://github.com/NorfairKing/validity#readme")
    (synopsis
      "Standard properties for functions on `Validity` types")
    (description
      "Standard properties for functions on `Validity` types")
    (license expat)))

(define-public ghc-validity
  (package
    (name "ghc-validity")
    (version "0.3.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/validity/validity-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1cayhhycmfj9ri2k8j4ndbqxv67w9ibf9v44w8lfkwp2zm8my5zz"))))
    (build-system haskell-build-system)
    (home-page
      "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity typeclass")
    (description
      "For more info, see <https://github.com/NorfairKing/validity the readme>. . Note: There are companion instance packages for this library: . * <https://hackage.haskell.org/package/validity-text validity-text> . * <https://hackage.haskell.org/package/validity-path validity-path> . * <https://hackage.haskell.org/package/validity-time validity-time> . * <https://hackage.haskell.org/package/validity-containers validity-containers> . * <https://hackage.haskell.org/package/validity-bytestring validity-bytestring>")
    (license expat)))

(define-public ghc-resource-pool
  (package
    (name "ghc-resource-pool")
    (version "0.2.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/resource-pool/resource-pool-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "04mw8b9djb14zp4rdi6h7mc3zizh597ffiinfbr4m0m8psifw9w6"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-hashable" ,ghc-hashable)
        ("ghc-monad-control" ,ghc-monad-control)
        ("ghc-transformers-base" ,ghc-transformers-base)
        ("ghc-stm" ,ghc-stm)
        ("ghc-vector" ,ghc-vector)))
    (home-page "http://github.com/bos/pool")
    (synopsis
      "A high-performance striped resource pooling implementation")
    (description
      "A high-performance striped pooling abstraction for managing flexibly-sized collections of resources such as database connections.")
    (license bsd-3)))

(define-public ghc-path-pieces
  (package
    (name "ghc-path-pieces")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/path-pieces/path-pieces-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0vx3sivcsld76058925hym2j6hm3g71f0qjr7v59f1g2afgx82q8"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-text" ,ghc-text)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page
      "http://hackage.haskell.org/package/path-pieces")
    (synopsis "Components of paths.")
    (description
      "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/path-pieces>.")
    (license bsd-3)))

(define-public ghc-http-api-data
  (package
    (name "ghc-http-api-data")
    (version "0.3.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/http-api-data/http-api-data-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1zbmf0kkfsw7pfznisi205gh7jd284gfarxsyiavd2iw26akwqwc"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-attoparsec" ,ghc-attoparsec)
        ("ghc-attoparsec-iso8601"
        ,ghc-attoparsec-iso8601)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-http-types" ,ghc-http-types)
        ("ghc-text" ,ghc-text)
        ("ghc-time-locale-compat"
        ,ghc-time-locale-compat)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-uri-bytestring" ,ghc-uri-bytestring)
        ("ghc-uuid-types" ,ghc-uuid-types)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)
        ("ghc-uuid" ,ghc-uuid)
        ("ghc-doctest" ,ghc-doctest)))
    (home-page
      "http://github.com/fizruk/http-api-data")
    (synopsis
      "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description "Please see README.md")
    (license bsd-3)))

(define-public ghc-attoparsec-iso8601
  (package
    (name "ghc-attoparsec-iso8601")
    (version "1.0.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/attoparsec-iso8601/attoparsec-iso8601-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "12l55b76bhya9q89mfmqmy6sl5v39b6gzrw5rf3f70vkb23nsv5a"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-attoparsec" ,ghc-attoparsec)
        ("ghc-base-compat" ,ghc-base-compat)
        ("ghc-text" ,ghc-text)))
    (home-page "https://github.com/bos/aeson")
    (synopsis
      "Parsing of ISO 8601 dates, originally from aeson.")
    (description
      "Parsing of ISO 8601 dates, originally from aeson.")
    (license bsd-3)))

(define-public ghc-time-locale-compat
  (package
    (name "ghc-time-locale-compat")
    (version "0.1.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/time-locale-compat/time-locale-compat-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1vdcfr2hp9qh3ag90x6ikbdf42wiqpdylnplffna54bpnilbyi4i"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-old-locale" ,ghc-old-locale)))
    (home-page
      "https://github.com/khibino/haskell-time-locale-compat")
    (synopsis
      "Compatibility of TimeLocale between old-locale and time-1.5")
    (description
      "This package contains wrapped name module for TimeLocale.")
    (license bsd-3)))

(define-public ghc-uri-bytestring
  (package
    (name "ghc-uri-bytestring")
    (version "0.2.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/uri-bytestring/uri-bytestring-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "050bimfsc912dh5sb2kjvvdd80ggjhakqq1dbn46cnp98zr8p0rx"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-attoparsec" ,ghc-attoparsec)
        ("ghc-blaze-builder" ,ghc-blaze-builder)
        ("ghc-th-lift-instances" ,ghc-th-lift-instances)
        ("ghc-th-lift" ,ghc-th-lift)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-base-compat" ,ghc-base-compat)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-generics-sop" ,ghc-generics-sop)))
    (home-page
      "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
      "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license bsd-3)))

(define-public ghc-th-lift-instances
  (package
    (name "ghc-th-lift-instances")
    (version "0.1.11")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/th-lift-instances/th-lift-instances-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1f56cp6ckcalld5jchv0kxpjkwcsixd7smd0g7r8cg67ppx6m90x"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-th-lift" ,ghc-th-lift)
        ("ghc-vector" ,ghc-vector)
        ("ghc-text" ,ghc-text)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page
      "http://github.com/bennofs/th-lift-instances/")
    (synopsis
      "Lift instances for template-haskell for common data types.")
    (description
      "Most data types in haskell platform do not have Lift instances. This package provides orphan instances for containers, text, bytestring and vector.")
    (license bsd-3)))

(define-public ghc-microlens-th
  (package
    (name "ghc-microlens-th")
    (version "0.4.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/microlens-th/microlens-th-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0yvaabxs80fbmbg0yc1q7c147ks15bpn6fdq1zc0ay2pp06l06jv"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-microlens" ,ghc-microlens)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis
      "Automatic generation of record lenses for microlens")
    (description
      "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens). . This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license bsd-3)))

(define-public ghc-aeson-compat
  (package
    (name "ghc-aeson-compat")
    (version "0.3.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/aeson-compat/aeson-compat-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1jya3lm9imclhb8qqihv39hhb62vvs3qpws7pc5fc23vwg0hsx2r"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base-compat" ,ghc-base-compat)
        ("ghc-aeson" ,ghc-aeson)
        ("ghc-attoparsec" ,ghc-attoparsec)
        ("ghc-attoparsec-iso8601"
        ,ghc-attoparsec-iso8601)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-text" ,ghc-text)
        ("ghc-time-locale-compat"
        ,ghc-time-locale-compat)
        ("ghc-unordered-containers"
        ,ghc-unordered-containers)
        ("ghc-vector" ,ghc-vector)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-semigroups" ,ghc-semigroups)
        ("ghc-base-orphans" ,ghc-base-orphans)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-hunit" ,ghc-tasty-hunit)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)))
    (home-page
      "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @aeson@")
    (license bsd-3)))

(define-public ghc-bitarray
  (package
    (name "ghc-bitarray")
    (version "0.0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/bitarray/bitarray-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "00nqd62cbh42qqqvcl6iv1i9kbv0f0mkiygv4j70wfh5cl86yzxj"))))
    (build-system haskell-build-system)
    (home-page "http://code.haskell.org/~bkomuves/")
    (synopsis "Mutable and immutable bit arrays")
    (description "Mutable and immutable bit arrays.")
    (license bsd-3)))

(define-public ghc-getopt-generics
  (package
    (name "ghc-getopt-generics")
    (version "0.13.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/getopt-generics/getopt-generics-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "10sfab5frm53bll8kh6bkwg0y0cv47740sxy6gsnd9fycvixf0k9"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-base-compat" ,ghc-base-compat)
        ("ghc-base-orphans" ,ghc-base-orphans)
        ("ghc-generics-sop" ,ghc-generics-sop)
        ("ghc-tagged" ,ghc-tagged)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-silently" ,ghc-silently)
        ("ghc-safe" ,ghc-safe)))
    (home-page
      "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis
      "Create command line interfaces with ease")
    (description
      "Create command line interfaces with ease")
    (license bsd-3)))

(define-public ghc-interpolate
  (package
    (name "ghc-interpolate")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/interpolate/interpolate-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "120ygxs8vfsjcc7xr9v8p8bcyqidhlg1rd568ym2bsl1nhx4h22b"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-haskell-src-meta" ,ghc-haskell-src-meta)
        ("ghc-text" ,ghc-text)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-quickcheck-instances"
        ,ghc-quickcheck-instances)))
    (home-page
      "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license expat)))

(define-public ghc-th-utilities
  (package
    (name "ghc-th-utilities")
    (version "0.2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/th-utilities/th-utilities-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1mki2s821b1zpdn5463qz5vl3kvxxam90iax1n6vznf0d7p4rik5"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-primitive" ,ghc-primitive)
        ("ghc-syb" ,ghc-syb)
        ("ghc-text" ,ghc-text)
        ("ghc-th-orphans" ,ghc-th-orphans)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-vector" ,ghc-vector)))
    (home-page
      "https://github.com/fpco/th-utilities#readme")
    (synopsis
      "Collection of useful functions for use with Template Haskell")
    (description "")
    (license expat)))

(define-public ghc-hspec-smallcheck
  (package
    (name "ghc-hspec-smallcheck")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hspec-smallcheck/hspec-smallcheck-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1lsy71ri0lfvs6w1drwa4p69bcy0nrpb62dah3bg4vqwxfrd82ds"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-hspec-core" ,ghc-hspec-core)
        ("ghc-smallcheck" ,ghc-smallcheck)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page "http://hspec.github.io/")
    (synopsis
      "SmallCheck support for the Hspec testing framework")
    (description
      "SmallCheck support for the Hspec testing framework")
    (license expat)))

(define-public ghc-test-invariant
  (package
    (name "ghc-test-invariant")
    (version "0.4.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/test-invariant/test-invariant-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0ck3kk7pmj1679ddmrysx5j3y27619ar1b2pny45mskz3g6vyvrh"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-quickcheck" ,ghc-tasty-quickcheck)))
    (home-page
      "https://github.com/knupfer/test-invariant")
    (synopsis
      "Provide common invariants to be checked with QuickCheck")
    (description
      "test-invariant is a library for providing common invariants of functions as higher order polymorphic functions.  This reduces for a lot of cases the need for writing prop_ functions for QuickCheck. . >>> quickCheck $ idempotent (abs :: Int -> Int) >>> quickCheck $ involutory not >>> quickCheck $ not . involutory (+ (2 :: Int))")
    (license bsd-3)))

(define-public ghc-unification-fd
  (package
    (name "ghc-unification-fd")
    (version "0.10.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/unification-fd/unification-fd-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "15hrnmgr0pqq43fwgxc168r08xjgfhr2nchmz5blq46vwrh6gx2v"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-logict" ,ghc-logict) ("ghc-mtl" ,ghc-mtl)))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis
      "Simple generic unification algorithms.")
    (description
      "Simple generic unification algorithms.")
    (license bsd-3)))

(define-public ghc-hindent
  (package
    (name "ghc-hindent")
    (version "5.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hindent/hindent-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1wjcgkgqcvr1q0b7dckhg12ai6zgmvvnv2b3zgfkyqy1h9qhj7wk"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-haskell-src-exts" ,ghc-haskell-src-exts)
        ("ghc-monad-loops" ,ghc-monad-loops)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-utf8-string" ,ghc-utf8-string)
        ("ghc-exceptions" ,ghc-exceptions)
        ("ghc-text" ,ghc-text)
        ("ghc-yaml" ,ghc-yaml)
        ("ghc-descriptive" ,ghc-descriptive)
        ("ghc-unix-compat" ,ghc-unix-compat)
        ("ghc-path" ,ghc-path)
        ("ghc-path-io" ,ghc-path-io)
        ("ghc-hspec" ,ghc-hspec)
        ("ghc-diff" ,ghc-diff)))
    (home-page
      "https://github.com/commercialhaskell/hindent")
    (synopsis "Extensible Haskell pretty printer")
    (description
      "Extensible Haskell pretty printer. Both a library and an executable. . See the Github page for usage\\/explanation: <https://github.com/commercialhaskell/hindent>")
    (license bsd-3)))

(define-public ghc-structured-haskell-mode
  (package
    (name "ghc-structured-haskell-mode")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/structured-haskell-mode/structured-haskell-mode-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1d1qv9d8qifcxbxqb6a6j0fsi65lg8sndn7hn2s38hgnxdb7llf5"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-haskell-src-exts" ,ghc-haskell-src-exts)
        ("ghc-text" ,ghc-text)
        ("ghc-descriptive" ,ghc-descriptive)))
    (home-page
      "https://github.com/chrisdone/structured-haskell-mode")
    (synopsis
      "Structured editing Emacs mode for Haskell")
    (description
      "Structured editing Emacs mode for Haskell.")
    (license bsd-3)))

(define-public ghc-hasktags
  (package
    (name "ghc-hasktags")
    (version "0.69.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hasktags/hasktags-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1yjsdvb3y6ly29anvh14bvfan1fplc9brb6i68ipcz9a7jk9l1jf"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-utf8-string" ,ghc-utf8-string)
        ("ghc-json" ,ghc-json)
        ("ghc-hunit" ,ghc-hunit)))
    (home-page
      "http://github.com/MarcWeber/hasktags")
    (synopsis
      "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs")
    (description
      "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.")
    (license bsd-3)))

(define-public ghc-descriptive
  (package
    (name "ghc-descriptive")
    (version "0.9.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/descriptive/descriptive-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0bxskc4q6jzpvifnhh6zl77xic0fbni8abf9lipfr1xzarbwcpkr"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-aeson" ,ghc-aeson)
        ("ghc-bifunctors" ,ghc-bifunctors)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-scientific" ,ghc-scientific)
        ("ghc-text" ,ghc-text)
        ("ghc-vector" ,ghc-vector)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-hspec" ,ghc-hspec)))
    (home-page
      "https://github.com/chrisdone/descriptive")
    (synopsis
      "Self-describing consumers/parsers; forms, cmd-line args, JSON, etc.")
    (description
      "Self-describing consumers/parsers. See the README.md for more information. It is currently EXPERIMENTAL.")
    (license bsd-3)))

(define-public ghc-hspec-discover
  (package
    (name "ghc-hspec-discover")
    (version "2.4.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hspec-discover/hspec-discover-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0isx9nc59nw8pkh4r6ynd55dghqnzgrzn9pvrq6ail1y5z3knhkn"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-hspec-meta" ,ghc-hspec-meta)))
    (home-page "http://hspec.github.io/")
    (synopsis
      "Automatically discover and run Hspec tests")
    (description
      "Automatically discover and run Hspec tests . <http://hspec.github.io/hspec-discover.html>")
    (license expat)))

(define-public ghc-hspec-meta
  (package
    (name "ghc-hspec-meta")
    (version "2.4.4")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hspec-meta/hspec-meta-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "117n4j56wfh48xj02mv0wkp10bkr2xkyvwg7n7r2ynp03wrf9ykm"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-quickcheck" ,ghc-quickcheck)
        ("ghc-hspec-expectations"
        ,ghc-hspec-expectations)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-setenv" ,ghc-setenv)
        ("ghc-random" ,ghc-random)
        ("ghc-quickcheck-io" ,ghc-quickcheck-io)
        ("ghc-ansi-terminal" ,ghc-ansi-terminal)
        ("ghc-async" ,ghc-async)
        ("ghc-call-stack" ,ghc-call-stack)))
    (home-page "http://hspec.github.io/")
    (synopsis
      "A version of Hspec which is used to test Hspec itself")
    (description
      "A stable version of Hspec which is used to test the in-development version of Hspec.")
    (license expat)))

(define-public ghc-call-stack
  (package
    (name "ghc-call-stack")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/call-stack/call-stack-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1qmihf5jafmc79sk52l6gpx75f5bnla2lp62kh3p34x3j84mwpzj"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-nanospec" ,ghc-nanospec)))
    (home-page
      "https://github.com/sol/call-stack#readme")
    (synopsis
      "Use GHC call-stacks in a backward compatible way")
    (description "")
    (license expat)))

(define-public ghc-hspec-expectations
  (package
    (name "ghc-hspec-expectations")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/hspec-expectations/hspec-expectations-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1vxl9zazbaapijr6zmcj72j9wf7ka1pirrjbwddwwddg3zm0g5l1"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-call-stack" ,ghc-call-stack)
        ("ghc-hunit" ,ghc-hunit)
        ("ghc-nanospec" ,ghc-nanospec)))
    (home-page
      "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
      "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license expat)))

(define-public ghc-nanospec
  (package
    (name "ghc-nanospec")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/nanospec/nanospec-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0jq2l1lmy4hcl6r975xcg86xr1y7jfxr3qn27ibsmjbzlnxdkjyv"))))
    (build-system haskell-build-system)
    (arguments `(#:tests? #f))
    (home-page
      "http://hackage.haskell.org/package/nanospec")
    (synopsis
      "A lightweight implementation of a subset of Hspec's API")
    (description
      "A lightweight implementation of a subset of Hspec's API with minimal dependencies.")
    (license expat)))

(define-public ghc-hunit
  (package
    (name "ghc-hunit")
    (version "1.6.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/HUnit/HUnit-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1pnhwqq5v8h48gbp3ibv3skfj25mf4zs5svxcavq93p9cswycj3l"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-call-stack" ,ghc-call-stack)))
    (arguments `(#:tests? #f))
    (home-page
      "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
      "HUnit is a unit testing framework for Haskell, inspired by the JUnit tool for Java, see: <http://www.junit.org>.")
    (license bsd-3)))

(define-public ghc-dlist
  (package
    (name "ghc-dlist")
    (version "0.8.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/dlist/dlist-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0brgai4vs7xz29p06kd6gzg5bpa8iy3k7yzgcc44izspd74q4rw7"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-quickcheck" ,ghc-quickcheck)))
    (home-page "https://github.com/spl/dlist")
    (synopsis "Difference lists")
    (description
      "Difference lists are a list-like type supporting O(1) append. This is particularly useful for efficient logging and pretty printing (e.g. with the Writer monad), where list append quickly becomes too expensive.")
    (license bsd-3)))

(define-public ghc-haskell-src-exts
  (package
    (name "ghc-haskell-src-exts")
    (version "1.19.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/haskell-src-exts/haskell-src-exts-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0wd93cqzdk1wq8csha8c8sphksi2jb3gr9g8rk3m9mkkfs3b5xgh"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-cpphs" ,ghc-cpphs)
        ("ghc-happy" ,ghc-happy)
        ("ghc-mtl" ,ghc-mtl)
        ("ghc-smallcheck" ,ghc-smallcheck)
        ("ghc-tasty" ,ghc-tasty)
        ("ghc-tasty-smallcheck" ,ghc-tasty-smallcheck)
        ("ghc-tasty-golden" ,ghc-tasty-golden)
        ("ghc-pretty-show" ,ghc-pretty-show)))
    (home-page
      "https://github.com/haskell-suite/haskell-src-exts")
    (synopsis
      "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer")
    (description
      "Haskell-Source with Extensions (HSE, haskell-src-exts) is a standalone parser for Haskell. In addition to standard Haskell, all extensions implemented in GHC are supported. . Apart from these standard extensions, it also handles regular patterns as per the HaRP extension as well as HSX-style embedded XML syntax.")
    (license bsd-3)))

(define-public ghc-pretty-show
  (package
    (name "ghc-pretty-show")
    (version "1.6.13")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/pretty-show/pretty-show-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "1kbx72ybrpw0kh5zsd2kdw143qykbmd9lgmsvj57659y0k5l7fjm"))))
    (build-system haskell-build-system)
    (inputs
     `(("ghc-happy" ,ghc-happy)
       ("ghc-haskell-lexer" ,ghc-haskell-lexer)))
    (home-page
      "http://wiki.github.com/yav/pretty-show")
    (synopsis
      "Tools for working with derived `Show` instances and generic inspection of values.")
    (description
      "We provide a library and an executable for working with derived 'Show' instances. By using the library, we can parse derived 'Show' instances into a generic data structure. The @ppsh@ tool uses the library to produce human-readable versions of 'Show' instances, which can be quite handy for debugging Haskell programs.  We can also render complex generic values into an interactive Html page, for easier examination.")
    (license expat)))

(define-public ghc-haskell-lexer
  (package
    (name "ghc-haskell-lexer")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/haskell-lexer/haskell-lexer-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "0rj3r1pk88hh3sk3mj61whp8czz5kpxhbc78xlr04bxwqjrjmm6p"))))
    (build-system haskell-build-system)
    (home-page
      "http://hackage.haskell.org/package/haskell-lexer")
    (synopsis "A fully compliant Haskell 98 lexer.")
    (description
      "A fully compliant Haskell 98 lexer.")
    (license bsd-3)))

(define-public ghc-happy
  (package
    (name "ghc-happy")
    (version "1.19.7")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
              "https://hackage.haskell.org/package/happy/happy-"
              version
              ".tar.gz"))
        (sha256
          (base32
            "16vg292pp12wnkny7znsv7bichh9ghny7swl7v55qafmcfg2lcdv"))))
    (build-system haskell-build-system)
    (inputs `(("ghc-mtl" ,ghc-mtl)))
    (home-page "https://www.haskell.org/happy/")
    (synopsis
      "Happy is a parser generator for Haskell")
    (description
      "Happy is a parser generator for Haskell.  Given a grammar specification in BNF, Happy generates Haskell code to parse the grammar.  Happy works in a similar way to the @yacc@ tool for C.")
    (license bsd-2)))
