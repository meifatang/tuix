(define-module (tnux packages chain33)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system go)
  #:use-module (guix licenses))

(define-public chain33
  (package
   (name "chain33")
   (version "1.65.5")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https://github.com/33cn/chain33")
           (commit (string-append "v" version))))
     (sha256
      (base32
       "1wlv7ckl6qdcwbrgx5kjw7f7j     ncb828b2fgiwm65rpcrcjm0anzs"))))
   (build-system go-build-system)
   (arguments
    `(#:import-path "github.com/33cn/chain33"))
   (home-page "https://github.com/33cn/chain33")
   (synopsis "chain33")
   (description "chain33")
   (license bsd-3)))
