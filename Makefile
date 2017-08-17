CXX=gcc --std=c99
CFLAGS_AVX2=-mavx2
CFLAGS_SSE=-msse
CFLAGS_SSE4=-msse4
LDFLAGS=-lpthread
all: avx avx_thread cpu
avx:
	$(CXX) $(CFLAGS_AVX2) -o avx_mul avx_mul.c $(LDFLAGS)
cpu_add:
	$(CXX) -o cpu_add cpu_add.c $(LDFLAGS)
avx_thread:
	$(CXX) $(CFLAGS_AVX2) -o avx_mul_th avx_mul_th.c $(LDFLAGS)
sse_add:
	$(CXX) $(CFLAGS_SSE) -o sse_add sse_add.c $(LDFLAGS)
sse_mul:
	$(CXX) $(CFLAGS_SSE4) -o sse_mul sse_mul.c $(LDFLAGS)
clean:
	rm avx
	rm cpu