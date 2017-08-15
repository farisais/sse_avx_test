CXX=gcc --std=c99
CFLAGS=-mavx2
LDFLAGS=-lpthread
all: avx avx_thread cpu
avx:
	$(CXX) $(CFLAGS) -o avx_mul avx_mul.c $(LDFLAGS)
cpu:
	$(CXX) -o cpu_mul cpu_mul.c $(LDFLAGS)
avx_thread:
	$(CXX) $(CFLAGS) -o avx_mul_th avx_mul_th.c $(LDFLAGS)
cpu:
clean:
	rm avx
	rm cpu