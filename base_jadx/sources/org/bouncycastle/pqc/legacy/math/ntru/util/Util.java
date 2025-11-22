package org.bouncycastle.pqc.legacy.math.ntru.util;

import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import org.bouncycastle.pqc.legacy.math.ntru.euclid.IntEuclidean;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public class Util {
    private static volatile boolean IS_64_BITNESS_KNOWN;
    private static volatile boolean IS_64_BIT_JVM;

    public static TernaryPolynomial generateRandomTernary(int r02, int r12, int r22, boolean z10, SecureRandom secureRandom) {
        return z10 ? SparseTernaryPolynomial.generateRandom(r02, r12, r22, secureRandom) : DenseTernaryPolynomial.generateRandom(r02, r12, r22, secureRandom);
    }

    public static int[] generateRandomTernary(int r6, int r72, int r82, SecureRandom secureRandom) {
        Integer numValueOf = Integers.valueOf(1);
        Integer numValueOf2 = Integers.valueOf(-1);
        Integer numValueOf3 = Integers.valueOf(0);
        ArrayList arrayList = new ArrayList();
        for (int r52 = 0; r52 < r72; r52++) {
            arrayList.add(numValueOf);
        }
        for (int r73 = 0; r73 < r82; r73++) {
            arrayList.add(numValueOf2);
        }
        while (arrayList.size() < r6) {
            arrayList.add(numValueOf3);
        }
        Collections.shuffle(arrayList, secureRandom);
        int[] r74 = new int[r6];
        for (int r22 = 0; r22 < r6; r22++) {
            r74[r22] = ((Integer) arrayList.get(r22)).intValue();
        }
        return r74;
    }

    public static int invert(int r02, int r12) {
        int r03 = r02 % r12;
        if (r03 < 0) {
            r03 += r12;
        }
        return IntEuclidean.calculate(r03, r12).f12063x;
    }

    public static boolean is64BitJVM() {
        if (!IS_64_BITNESS_KNOWN) {
            String property = System.getProperty("os.arch");
            IS_64_BIT_JVM = "amd64".equals(property) || "x86_64".equals(property) || "ppc64".equals(property) || "64".equals(System.getProperty("sun.arch.data.model"));
            IS_64_BITNESS_KNOWN = true;
        }
        return IS_64_BIT_JVM;
    }

    public static int pow(int r22, int r32, int r42) {
        int r02 = 1;
        for (int r12 = 0; r12 < r32; r12++) {
            r02 = (r02 * r22) % r42;
        }
        return r02;
    }

    public static long pow(long j10, int r52, long j11) {
        long j12 = 1;
        for (int r22 = 0; r22 < r52; r22++) {
            j12 = (j12 * j10) % j11;
        }
        return j12;
    }

    public static byte[] readFullLength(InputStream inputStream, int r22) throws IOException {
        byte[] bArr = new byte[r22];
        if (inputStream.read(bArr) == r22) {
            return bArr;
        }
        throw new IOException("Not enough bytes to read.");
    }
}
