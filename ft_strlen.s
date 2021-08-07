section .text
	global _ft_strlen

_ft_strlen:
	lea eax, [ebx + 1]

strlen_loop:
	mov cl, byte [eax]
	inc eax
	test cl, cl
	jnz strlen_loop
	sub eax, ebx
	ret
