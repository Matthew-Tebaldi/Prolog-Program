


bound(0,1).
bound(0,2).
bound(0,3).
bound(0,4).
bound(0,5).
bound(0,6).
bound(1,7).
bound(2,7).
bound(1,0).
bound(2,0).
bound(3,0).
bound(4,0).
bound(5,0).
bound(6,0).
bound(3,7).
bound(4,7).
bound(5,7).
bound(6,7).
bound(7,1).
bound(7,2).
bound(7,3).
bound(7,4).
bound(7,5).
bound(7,6).



/*
car(1,2,4,3,4,4,4,3).
car(2,4,1,4,2,4,3,3).
car(3,5,4,5,5,5,6,3).
car(4,1,1,2,1,3,1,3).
*/


car(1,3,1,3,2,9,9,2).
car(2,4,1,5,1,9,9,2).
car(3,6,1,6,2,9,9,2).
car(4,5,2,5,3,9,9,2).
car(5,6,3,6,4,9,9,2).
car(6,3,4,4,4,9,9,2).
car(7,1,5,2,5,3,5,3).
car(8,4,5,4,6,9,9,2).
car(9,5,5,6,5,9,9,2).




endTile(6,3).

equals(X,X).

add(X,Y,Z) :- Z is X + Y.
subtract(X,Y,Z) :- Z is X - Y.


takeOut(X,[X|R],R).
takeOut(X,[F|R],[F|S]) :- takeOut(X,R,S).

putIn(X,L,R) :- takeOut(X,R,L).


member(X,[X|_]).
member(X,[_|R]) :- member(X,R).

union([X|Y],Z,W) :- member(X,Z),  union(Y,Z,W).
union([X|Y],Z,[X|W]) :- \+ member(X,Z), union(Y,Z,W).
union([],Z,Z).


hit(A,X,Y):- car(A,X,Y,B,C,D,E,F).
hit(A,X,Y):- car(A,B,C,X,Y,D,E,F).
hit(A,X,Y):- car(A,B,C,D,E,X,Y,F).
hit2(A,X,Y):- car(A,X,Y,D,E,9,9,2).
hit2(A,X,Y):- car(A,B,C,X,Y,9,9,2).



hit360(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), subtract(Y1,Z,TRUE_Y1), equals(Y,TRUE_Y1).
hit360(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), subtract(Y2,Z,TRUE_Y2), equals(Y,TRUE_Y2).
hit360(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), subtract(Y3,Z,TRUE_Y3), equals(Y,TRUE_Y3).

hit180(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), add(Y1,Z,TRUE_Y1), equals(Y,TRUE_Y1).
hit180(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), add(Y2,Z,TRUE_Y2), equals(Y,TRUE_Y2).
hit180(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), add(Y3,Z,TRUE_Y3), equals(Y,TRUE_Y3).

hit270(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), subtract(X1,Z,TRUE_X1), equals(X,TRUE_X1).
hit270(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), subtract(X2,Z,TRUE_X2), equals(X,TRUE_X2).
hit270(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), subtract(X3,Z,TRUE_X3), equals(X,TRUE_X3).

hit90(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), add(X1,Z,TRUE_X1), equals(X,TRUE_X1).
hit90(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), add(X2,Z,TRUE_X2), equals(X,TRUE_X2).
hit90(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), add(X3,Z,TRUE_X3), equals(X,TRUE_X3).




smallHit360(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), subtract(Y1,Z,TRUE_Y1), equals(Y,TRUE_Y1).
smallHit360(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), subtract(Y2,Z,TRUE_Y2), equals(Y,TRUE_Y2).

smallHit180(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), add(Y1,Z,TRUE_Y1), equals(Y,TRUE_Y1).
smallHit180(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(X,X1), add(Y2,Z,TRUE_Y2), equals(Y,TRUE_Y2).

smallHit270(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), subtract(X1,Z,TRUE_X1), equals(X,TRUE_X1).
smallHit270(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), subtract(X2,Z,TRUE_X2), equals(X,TRUE_X2).

smallHit90(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), add(X1,Z,TRUE_X1), equals(X,TRUE_X1).
smallHit90(ID,X,Y,Z):- car(ID,X1,Y1,X2,Y2,X3,Y3,LENGTH), equals(Y,Y1), add(X2,Z,TRUE_X2), equals(X,TRUE_X2).




isNotCar(X,Y,CARHIS) :- not(isCar1(X,Y,CARHIS)), not(isCar2(X,Y,CARHIS)), not(isCar3(X,Y,CARHIS)), not(isCar4(X,Y,CARHIS)), 
			not(isCar5(X,Y,CARHIS)), not(isCar6(X,Y,CARHIS)), not(isCar7(X,Y,CARHIS)), not(isCar8(X,Y,CARHIS)), 
			not(isCar9(X,Y,CARHIS)), not(isCar10(X,Y,CARHIS)).  

isCar1(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,3), not(member([A,DIRECTION,LENGTH], CARHIS)), hit(A,X,Y).
isCar2(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H),  equals(H,3),member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,360), hit360(A,X,Y,LENGTH).
isCar3(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H),  equals(H,3),member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,180), hit180(A,X,Y,LENGTH).
isCar4(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,3), member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,270), hit270(A,X,Y,LENGTH).
isCar5(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,3), member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,90), hit90(A,X,Y,LENGTH).

isCar6(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,2), not(member([A,DIRECTION,LENGTH], CARHIS)), hit2(A,X,Y).
isCar7(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H),  equals(H,2),member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,360), smallHit360(A,X,Y,LENGTH).
isCar8(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,2), member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,180), smallHit180(A,X,Y,LENGTH).
isCar9(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H),  equals(H,2),member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,270), smallHit270(A,X,Y,LENGTH).
isCar10(X,Y,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(H,2), member([A,DIRECTION,LENGTH], CARHIS), equals(DIRECTION,90), smallHit90(A,X,Y,LENGTH).



freeSpace(X,Y,CARHIS) :- not(bound(X,Y)), isNotCar(X,Y,CARHIS).




notMovedBefore(ID, DIRECTION, LENGTH, CARHIS) :- not(member([ID,X,Y], CARHIS)).



%right
canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), add(F,1,FP1), freeSpace(FP1,C,CARHIS),
						ID is A, DIRECTION is 90, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).


canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), add(F,1,FP1), freeSpace(FP1,C,CARHIS), add(F,2,FP2), freeSpace(FP2,C,CARHIS), 
						ID is A, DIRECTION is 90, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), add(F,1,FP1), freeSpace(FP1,C,CARHIS), 
						add(F,2,FP2), freeSpace(FP2,C,CARHIS),  add(F,3,FP3), freeSpace(FP3,C,CARHIS), 
							ID is A, DIRECTION is 90, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).





canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), add(D,1,DP1), freeSpace(DP1,C,CARHIS), 
						ID is A, DIRECTION is 90, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), add(D,1,DP1), freeSpace(DP1,C,CARHIS), add(D,2,DP2), freeSpace(DP2,C,CARHIS), 
						ID is A, DIRECTION is 90, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), add(D,1,DP1), freeSpace(DP1,C,CARHIS), 
						add(D,2,DP2), freeSpace(DP2,C,CARHIS),  add(D,3,DP1), freeSpace(DP3,C,CARHIS), 
							ID is A, DIRECTION is 90, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), add(D,1,DP1), freeSpace(DP1,C,CARHIS), 
						add(D,2,DP2), freeSpace(DP2,C,CARHIS),  add(D,3,DP3), freeSpace(DP3,C,CARHIS),  add(D,4,DP4), freeSpace(DP4,C,CARHIS), 
						ID is A, DIRECTION is 90, LENGTH is 4, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

%up
						
canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS),
						ID is A, DIRECTION is 360, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS), subtract(C,2,CM2), freeSpace(B,CM2,CARHIS),
						ID is A, DIRECTION is 360, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS),
						subtract(C,2,CM2), freeSpace(B,CM2,CARHIS), subtract(C,3,CM3), freeSpace(B,CM3,CARHIS),
							ID is A, DIRECTION is 360, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).





canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), subtract(C,1,CM1),freeSpace(B,CM1,CARHIS),
                                                ID is A, DIRECTION is 360, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS), subtract(C,2,CM2), freeSpace(B,CM2,CARHIS),
                                                ID is A, DIRECTION is 360, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS),
                                                subtract(C,2,CM2), freeSpace(B,CM2,CARHIS), subtract(C,3,CM3), freeSpace(B,CM3,CARHIS),
                                                        ID is A, DIRECTION is 360, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), subtract(C,1,CM1), freeSpace(B,CM1,CARHIS),
                                                subtract(C,2,CM2), freeSpace(B,CM2,CARHIS), subtract(C,3,CM3), freeSpace(B,CM3,CARHIS), subtract(C,4,CM4), freeSpace(B,CM4,CARHIS),
                                                        ID is A, DIRECTION is 360, LENGTH is 4, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).






%left

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                subtract(B,2,BM2), freeSpace(BM2,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,3), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                subtract(B,2,BM2), freeSpace(BM2,C,CARHIS), subtract(B,3,BM3), freeSpace(BM3,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).



canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                subtract(B,2,BM2), freeSpace(BM2,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                subtract(B,2,BM2), freeSpace(BM2,C,CARHIS), subtract(B,3,BM3), freeSpace(BM3,C,CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(C,E), equals(H,2), subtract(B,1,BM1), freeSpace(BM1,C,CARHIS),
                                                subtract(B,2,BM2), freeSpace(BM2,C,CARHIS), subtract(B,3,BM3), freeSpace(BM3,C,CARHIS), subtract(B,4,BM4), freeSpace(BM3,C CARHIS),
                                                        ID is A, DIRECTION is 270, LENGTH is 4, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).




%Down

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), add(G,1,GM1), freeSpace(B,GM1,CARHIS),
                                                ID is A, DIRECTION is 180, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), add(G,1,GM1), freeSpace(B,GM1,CARHIS), add(G,2,GM2), freeSpace(B,GM2,CARHIS),
                                                ID is A, DIRECTION is 180, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,3), add(G,1,GM1), freeSpace(B,GM1,CARHIS),
                                                subtract(G,2,GM2), freeSpace(B,GM2,CARHIS), add(G,3,GM3), freeSpace(B,GM3,CARHIS),
                                                        ID is A, DIRECTION is 180, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).





canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), add(E,1,EM1), freeSpace(B,EM1,CARHIS),
                                                ID is A, DIRECTION is 180, LENGTH is 1, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), add(E,1,EM1), freeSpace(B,EM1,CARHIS), add(E,2,EM2), freeSpace(B,EM2,CARHIS),
                                                ID is A, DIRECTION is 180, LENGTH is 2, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), add(E,1,EM1), freeSpace(B,EM1,CARHIS),
                                                add(E,2,EM2), freeSpace(B,EM2,CARHIS), add(E,3,EM3), freeSpace(B,EM3,CARHIS),
                                                        ID is A, DIRECTION is 180, LENGTH is 3, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).

canMoveCar(ID,DIRECTION,LENGTH,CARHIS) :- car(A,B,C,D,E,F,G,H), equals(B,D), equals(H,2), add(E,1,EM1), freeSpace(B,EM1,CARHIS),
                                                add(E,2,EM2), freeSpace(B,EM2,CARHIS), add(E,3,EM3), freeSpace(B,EM3,CARHIS), add(E,4,EM4), freeSpace(B,EM4,CARHIS),
                                                        ID is A, DIRECTION is 180, LENGTH is 4, notMovedBefore(ID,DIRECTION,LENGTH,CARHIS).






moveDown(X,Y,Z,CARHIS) :- add(Y,1,Z), freeSpace(X,Z,CARHIS).
moveRight(X,Y,Z,CARHIS) :- add(X,1,Z), freeSpace(Z,Y,CARHIS).
moveUp(X,Y,Z,CARHIS) :-subtract(Y,1,Z), freeSpace(X,Z,CARHIS).
moveLeft(X,Y,Z,CARHIS) :- subtract(X,1,Z), freeSpace(Z,Y,CARHIS).

cutIn(X,Y,Z) :- putIn(X,Y,Z), !.

findEnd(X, Y,RHIS,RALL_HIS,CARHIS) :-   endTile(X,Y), write("\n\n Path for robot: \n"), write(RHIS), write("\n").
findEnd(X, Y, RHIS,RALL_HIS,CARHIS) :- moveRight(X,Y,Z,CARHIS),not(member(Z+c+Y, RHIS)), cutIn(Z+c+Y,RHIS,NEW_HIS), 
					continueSearching(Z,Y,NEW_HIS,RALL_HIS,CARHIS) .
findEnd(X, Y, RHIS,RALL_HIS,CARHIS) :- moveDown(X,Y,Z,CARHIS), not(member(X+c+Z,RHIS)), cutIn(X+c+Z,RHIS,NEW_HIS), 
					continueSearching(X,Z,NEW_HIS,RALL_HIS,CARHIS) .
findEnd(X, Y, RHIS,RALL_HIS,CARHIS) :- moveUp(X,Y,Z,CARHIS), not(member(X+c+Z, RHIS)), cutIn(X+c+Z,RHIS,NEW_HIS),
					continueSearching(X,Z,NEW_HIS,RALL_HIS,CARHIS).
findEnd(X, Y, RHIS,RALL_HIS,CARHIS) :- moveLeft(X,Y,Z,CARHIS), not(member(Z+c+Y, RHIS)), cutIn(Z+c+Y,RHIS,NEW_HIS), 
					continueSearching(Z,Y,NEW_HIS,RALL_HIS,CARHIS) .


continueSearching(X,Y,RHIS,RALL_HIS,CARHIS) :-  not(member(RHIS,RALL_HIS)), putIn(RHIS,RALL_HIS,NEW_NEW_HIS),!, findEnd(X,Y,RHIS,NEW_NEW_HIS,CARHIS).



findPath(X,Y,RHIS,RALL_HIS,CARHIS):- findEnd(X,Y,RHIS,RALL_HIS,CARHIS).

start() :- play([],[]).


isNotRepeat(NEW_HIS,ALL_HIS) :- not(member(NEW_HIS,ALL_HIS)), cutIn(NEW_HIS,ALL_HIS,ALL_NEW_HIS), !, play(NEW_HIS,ALL_NEW_HIS).


play(CARHIS, CALL_HIS):- findPath(1,3,[1+c+3],[], CARHIS), write("\n\n Path for Cars: \n"),  write(CARHIS).

play(CARHIS, CALL_HIS) :- write("\n Car his: \n"), write(CARHIS),canMoveCar(ID,DIRECTION,LENGTH,CARHIS), cutIn([ID,DIRECTION,LENGTH], CARHIS, NEW_HIS),
	isNotRepeat(NEW_HIS,CALL_HIS).






