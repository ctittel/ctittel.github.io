#lang racket
(require  racket/include
          racket/require
          txexpr 
          gregor 
          gregor/time
          pollen/decode
          pollen/tag
          pollen/file
          pollen/pagetree
          sugar
          scribble/base
          racket/path
          "settings.rkt")
          ;;; hyphenate

(require (only-in racket/base environment-variables? path->string ))

(provide (all-from-out "settings.rkt"))

(provide (all-defined-out))
 
(module setup racket/base
  (provide (all-defined-out))
  (define poly-targets '(html txt)))

;; --- date & time
;; https://docs.racket-lang.org/gregor/time-format.html
(define (current-year-string)
  (~t (now) "yyyy"))

(define (current-datetime-string)
  (string-append (~t (now/moment) "yyyy-MM-dd kk:mm:ss X")))
;; ---

(define (heading . elements)
  (txexpr 'h2 empty elements))
 
(define (emph . elements)
  (txexpr 'strong empty elements))

(define (hyperlink url elements)
  `(a [[href ,url]] ,elements))

(define (quicklink url)
  `(a [[href ,url]] ,url))

(define (relative-file-path file) 
    (let* (
      [p (->path file)]
      [dir-part (path-only p)]
      [file-part (file-name-from-path p)]
    )
    (string-append
      ""
      (if dir-part (path->string dir-part) "")
      (if file-part (path->string (get-source file-part)) "")
    )
))

(define (path-element-strings file)
  (let* ([p (->path file)])
    (map path->string (explode-path p))
))

(define (reduce fn lat current-sum)
  (cond
    ([null? lat] current-sum)
    (else
     (reduce fn (cdr lat) (fn current-sum (car lat))))))

(define (path-element-path-strings file)
  (cdr
      (let* ([path-eles (path-element-strings file)])
        (reduce 
          (lambda (total current)
            (append total 
                    (list 
                        (string-append  (last total) 
                                        "/" 
                                        current))))
          path-eles
          '("")
    ))
))

(define (my-print-pagetree) 
  (pagetree->list (current-pagetree)))

(define (lz) "◊")
