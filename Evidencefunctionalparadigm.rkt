#lang racket

(define (is-in? lst elem)
  (cond
    [(empty? lst) #f]
    [(= (first lst) elem) #t]
    [else (is-in? (rest lst) elem)]))



(define (sum-list lst acc)
  (cond
    ;;Se utiliza un acumulador para realizar tail recursion
    ;;Ahorrando un tiempo de espera de accion.
    [(empty? lst)acc]
    [else (sum-list (rest lst) (+ (first lst) acc))]))


;(sum-list '(2 3 4 5 6 7 7)0)

(define (good? lst)
  (define s(sum-list lst 0))
  (cond
    [(=(modulo s 2)1)#f]
    [else (is-in? lst (/ s 2))]))

;(good? '(3 5 2))
;(good? '(8 3 5))
;(good? '(1 2 4 3))

(define (remove-at lst i)
  (cond
    [(empty? lst) '()]
    [(= i 1)(rest lst)]
    [else (cons (first lst)
                (remove-at (rest lst)(- i 1)))]))


;(remove-at '(2 5 1 2 2) 1)
;(remove-at '(2 5 1 2 2)2)
;(remove-at '(2 5 1 2 2)5)

(define (find-nice lst index)
  (cond
    [(empty? lst) '()]
    [(> index (length lst)) '()]
    [(good? (remove-at lst index))
     (cons index (find-nice lst (+ index 1)))]
    [else (find-nice lst (+ index 1))]))


;;Caso Base
(find-nice '(2 5 1 2 2) 1)
(find-nice '(8 3 5 2)1)
(find-nice '(1 2 3)1)


;;Peores Casos
(find-nice '(2 1 2 4 3) 1)
(find-nice '(1 1 1 1)1)
(find-nice '(7 3 2) 1)

