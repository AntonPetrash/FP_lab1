;;створення списку
(defvar my-list ())   
(setq my-list (list 's 1 (list 'c 2) () 'symbol))
(format t "~a~%" my-list)

;;голова списку
(format t "Head: ~a~%" (first my-list))

;;Хвіст списку
(format t "Tail: ~a~%" (cdr my-list))

;;третій елемент списку
(format t "3rd elevent: ~a~%" (nth 2 my-list))

;;останній елемент списку
(format t "Last element: ~a~%" (first (last my-list)))

;;Предикати ATOM та LISTP
(format t "Is 1st Atom?: ~a~%" (atom (first my-list)))
(format t "Is 3rd Atom?: ~a~%" (atom (nth 2 my-list)))
(format t "Is 5th Atom?: ~a~%" (atom (nth 4 my-list)))
(format t "Is 1st List?: ~a~%" (listp (first my-list)))
(format t "Is 3rd List?: ~a~%" (listp (nth 2 my-list)))
(format t "Is 5th List?: ~a~%" (listp (nth 4 my-list)))

;;Порівняння
(format t "Is 3rd an 4th eaqual?: ~a~%" (equal (nth 2 my-list) (nth 3 my-list)))
(format t "Is 2nd > 0?: ~a~%" (plusp (nth 1 my-list)))

;;Об'єднання списків
(defvar sub-list (nth 2 my-list))
(defvar comb-list (append my-list sub-list))
(format t "Merging lists: ~a~%" comb-list)

(format t "~% ~%")

;;голова списку
(format t "Main task: ~%")

(defvar myy-list)
(setq sub-list (list 5 4 'E 'F))
(setq myy-list (list 'D (cdr sub-list) (list (first sub-list)) (first (last sub-list))))
(format t "~a~%" myy-list)