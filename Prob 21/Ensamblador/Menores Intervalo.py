def MenoresLista(L, a, b):
    best = L[a]
    for i in range(a,b):
        if(L[i] < best):
            best = L[i]
    return best

L = [78,19,0,46,8,17,10,11,7,3,4]
print (MenoresLista(L,0,4))