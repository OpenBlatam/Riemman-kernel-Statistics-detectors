#include <cmath>
#include <complex>

// Time series of the statisctic dectector of the kernel
double equation(int N, double t, std::complex<double> chi, std::vector<double> pn) {
    double BN = 0.0;

    for (int n = 1; n <= N; ++n) {
        BN += cos(t * log(pn[n - 1]) - std::arg(chi));
    }

    return BN;
}
