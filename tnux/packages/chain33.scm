(define-module (tnux packages chain33)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses))

(define-public chain33
  (package
   (name "chain33")
   (version "1.65.5")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/33cn/chain33")
                  (commit (string-append "v" version))))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1wlv7ckl6qdcwbrgx5kjw7f7jncb828b2fgiwm65rpcrcjm0anzs"))))
   (build-system gnu-build-system)
   (home-page "https://github.com/33cn/chain33")
   (synopsis "高度模块化, 遵循 KISS原则的区块链开发框架")
   (description "高度模块化, 遵循 KISS原则的区块链开发框架")
   (license bsd-3)))
