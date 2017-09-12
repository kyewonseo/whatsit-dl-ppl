import numpy as np
import cv2

# cap = cv2.VideoCapture('/Users/bok95/Downloads/gold_life_1.mp4')
cap = cv2.VideoCapture('/Users/bok95/gold_life_1_qt.mp4')
# cap = cv2.VideoCapture('/Users/bok95/Downloads/3.mp4')

while(cap.isOpened()):
    ret, frame = cap.read()

    # gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    cv2.imshow('frame',frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()