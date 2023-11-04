def xndir5():
    sum = 0
    factorial = 1
    n = int(input("input n="))
    for i in range(1,n+1):
        factorial*=i
        print(factorial)
        sum+=factorial
    print("factorials sum=",sum)

def xndir6():
    n = int(input("Input n="))
    lowestDigit =n%10
    n//=10
    while n:
        digit = n%10
        if lowestDigit>digit:
            lowestDigit=digit
        n//=10
    print(lowestDigit)


def xndir7():
    n = int(input("Input n="))
    highestDigit =n%10
    n//=10
    while n:
        digit = n%10
        if highestDigit<digit:
            lowestDigit=digit
        n//=10
    print(lowestDigit)

import math
def xndir8():
    h = int(input("Input h[1,8] = "))
    while h not in [1,2,3,4,5,6,7,8]:
        h = int(input("Input h[1,8] = "))
    a = int(input("Input a="))
    x = int(input("Input x="))
    result = None
    if 1<=x<2.5:
        result = math.sqrt(x**2 + a**2)
    elif 2.5<=x<6:
        result = math.tan(x)
    else:
        result = math.sin(math.cos(x))
    print(result)
        

def xndir9():
    r = int(input("Input r = "))
    x = float(input("input x = "))
    y = float(input("input y = "))
    if x**2+y**2 <= r**2:
        print(True)
    else:
        print(False)


def xndir18():
    n= int(input("input n for reverse number = "))
    k=n
    reverseNumber = 0
    while k>0:
        reverseNumber*=10
        reverseNumber+=k%10
        k//=10
    print(f"{n} reverse is {reverseNumber}")
    


def xndir19():
    n= int(input("input n multiply number digits = "))
    k=n
    mul = 1
    while k>0:
        mul*=k%10
        k//=10
    print(f"{n} digits multiply is {mul}")
    


def xndir20():
    n= int(input("is n 2i astijan = "))
    if n:
        while n>0:
            n//=2
        if n==0:
            print("Yes")
        else:
            print("No")
    else:
        print("n not found")
    



def xndirbb():
    if 32&(32-1)==0:
        print("Astijana")
    else:
        print("no")


def xndir4_23():
    arr = list()
    arrIters=0
    for i in range(1000,9999+1):
        arrIters+=1
        if i%4==0 and i%5==0:
            arr.append(i)
            

    arr2 = list()
    arr2Iters=0
    for i in range(1000,9999+1,20):
        arr2Iters+=1
        if i%4==0 and i%5==0:
            arr2.append(i)
            
            
    equal = True
    for i in range(len(arr)):
        if equal and arr[i]!=arr2[i]:
            equal=False
    print(arrIters,arr2Iters,equal)

from random import random, randint, sample

def xndir4_24():
    arr = list()
    arrIters=0
    for i in range(10):
        arr.append(randint(-20,20))
    print(arr)
    
    for i in range(10):
        arr[i]*=-1
    print(arr)



def xndir4_25():
    arr = sample(range(-20,21),20)
    s=1
    sum=0
    for i in range(len(arr)):
        if i%2==0:
            s*=arr[i]
        else:
            sum+=arr[i]
    print(arr)
    print(sum, s,sep="\n")
    print(sum if s>0 else 1)


def xndir4_26():
    arr = sample(range(-20,21),20)
    print(arr)
    for i in range(1,len(arr)-1):
        if arr[i-1]<arr[i]>arr[i+1]:
            print(arr[i])

def xndir4_27():
    arr = sample(range(-20,21),20)
    print(arr)
    sum = 0
    count=0
    for i in range(len(arr)):
        if arr[i]%2!=0:
            print(arr[i])
            sum+=i
            count+=1;
    print(sum/count)


def xndir4_29():
    n=7
    arr = [10,328,10, 12,14,12,71,10,32]
    print(arr)
    sum = 0
    count=0
    min=arr[0]
    for i in arr:
        if i<min:
            min=i
            count=1
            sum=i
        elif i==min:
            count+=1
            sum+=i
            
    print(min,sum, count)


def quickSort(arr):
    if len(arr)<2:
        return arr
    less = []
    greater = []
    base = arr.pop(0)
    for i in arr:
        if i>=base:
            greater.append(i)
        else:
            less.append(i)
    return quickSort(greater) + [base] + quickSort(less)
def xndir4_30():
    arr = sample(range(40,90),5)
    print(arr)
    sorted = quickSort(arr)
    print(sorted)
    print([sorted[i] for i in range(3)])




