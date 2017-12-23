(define-module (nat guix packages misc)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system trivial)
  #:use-module (guix licenses)
  #:use-module (gnu packages)
  #:use-module (gnu packages aspell)
  #:use-module (gnu packages base)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages perl))

(define* (aspell-dictionary dict-name full-name
                            #:key version sha256 (prefix "aspell6-"))
  (package
    (name (string-append "aspell-dict-" dict-name))
    (version version)
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://gnu/aspell/dict/" dict-name
                                  "/" prefix dict-name "-"
                                  version ".tar.bz2"))
              (sha256 sha256)))
    (build-system gnu-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (replace 'configure
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (zero? (system* "./configure"))))))
       #:make-flags
       (let ((out (assoc-ref %outputs "out")))
         (list (string-append "dictdir=" out "/lib/aspell")
               (string-append "datadir=" out "/lib/aspell")))
       #:tests? #f))
    (native-inputs `(("aspell" ,aspell)
                     ("which" ,which)))
    (synopsis (string-append full-name " dictionary for GNU Aspell")) ; XXX: i18n
    (description
     "This package provides a dictionary for the GNU Aspell spell checker.")
    (license gpl2+)
    (home-page "http://aspell.net/")))

;; (define-public aspell-dict-pl-sjp
;;   (package
;;    (name "aspell-dict-pl-sjp")
;;    (version "6.0_20171214-0")
;;    (source (origin
;;             (method url-fetch)
;;             (url "https://sjp.pl/slownik/ort/sjp-aspell5-pl-6.0_20171214-0.tar.bz2")
;;             (sha256
;;              (base32
;;               ""))))
;;    ))

(define-public aspell-dict-pl
  (aspell-dictionary "pl" "Polish"
                     #:version "6.0_20061121-0"
                     #:sha256
                     (base32
                      "0kap4kh6bqbb22ypja1m5z3krc06vv4n0hakiiqmv20anzy42xq1")))

(define-public libtinfo
  (package
   (name "libtinfo")
   (version (package-version ncurses))
   (source #f)
   (build-system trivial-build-system)
   (arguments
    `(#:modules ((guix build utils))
      #:builder
      (begin
        (use-modules (guix build utils))
        (let* ((src (string-append (assoc-ref %build-inputs "ncurses")
                                   "/lib"))
               (curses (string-append src "/libncursesw.so.6"))
               (lib (string-append (assoc-ref %outputs "out") "/lib")))
          (mkdir-p lib)
          (with-directory-excursion lib
            (symlink curses "libtinfo.so.6")
            (symlink curses "libtinfo.so")
            #t)))))
   (inputs `(("ncurses" ,ncurses)))
   (home-page (package-home-page ncurses))
   (synopsis "Misssing libtinfo symlink")
   (description "Missing libtinfo symlink")
   (license (package-license ncurses))))
