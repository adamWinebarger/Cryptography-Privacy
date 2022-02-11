
def verify(v1 : int, v2 : int):
	for i in range(26):
		if (v1 * (v2 * i) % 26) % 26 != i:
			return False
	return True

def doubleLock(v1 : int, v2 : int, v3 : int, v4 : int):
	arr = []
	for i in range(26):
		arr.append(i)

	#Encrypt once
	for i in range(26):
		arr[i] = v1 * arr[i] % 26

	print(arr)

	#Encryption number 2
	for j in range(26):
		arr[j] = v2 * arr[j] % 26

	print(arr)

	#Decryption 1
	for k in range(26):
		arr[k] = v3 * arr[k] % 26

	print(arr)

	#Decryption 2
	for m in range(26):
		arr[m] = arr[m] * v4 % 26

	print(arr)

print(verify(7, 23))

doubleLock(7, 17, 15, 23)