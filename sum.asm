		global _sum
		section .text
_sum:
		xorpd xmm0, xmm0
		cmp rsi, 0
		je done
next:
		addsd xmm0, [rdi]
		add rdi, 8
		sub rsi, 1
		jnz next
done:
		ret
		
