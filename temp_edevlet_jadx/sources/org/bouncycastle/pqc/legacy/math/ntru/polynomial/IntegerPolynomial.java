package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import org.bouncycastle.pqc.legacy.math.ntru.euclid.BigIntEuclidean;
import org.bouncycastle.pqc.legacy.math.ntru.util.ArrayEncoder;
import org.bouncycastle.pqc.legacy.math.ntru.util.Util;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class IntegerPolynomial implements Polynomial {
    private static final int NUM_EQUAL_RESULTANTS = 3;
    public int[] coeffs;
    private static final int[] PRIMES = {4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, 8209, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447, 8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011, 9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199, 9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377, 9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533, 9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733, 9739, 9743, 9749, 9767, 9769, 9781, 9787, 9791, 9803, 9811, 9817, 9829, 9833, 9839, 9851, 9857, 9859, 9871, 9883, 9887, 9901, 9907, 9923, 9929, 9931, 9941, 9949, 9967, 9973};
    private static final List BIGINT_PRIMES = new ArrayList();

    public static class CombineTask implements Callable<ModularResultant> {
        private ModularResultant modRes1;
        private ModularResultant modRes2;

        private CombineTask(ModularResultant modularResultant, ModularResultant modularResultant2) {
            this.modRes1 = modularResultant;
            this.modRes2 = modularResultant2;
        }

        @Override // java.util.concurrent.Callable
        public ModularResultant call() {
            return ModularResultant.combineRho(this.modRes1, this.modRes2);
        }
    }

    public class ModResultantTask implements Callable<ModularResultant> {
        private int modulus;

        private ModResultantTask(int r22) {
            this.modulus = r22;
        }

        @Override // java.util.concurrent.Callable
        public ModularResultant call() {
            return IntegerPolynomial.this.resultant(this.modulus);
        }
    }

    public static class PrimeGenerator {
        private int index;
        private BigInteger prime;

        private PrimeGenerator() {
            this.index = 0;
        }

        public BigInteger nextPrime() {
            BigInteger bigIntegerNextProbablePrime;
            if (this.index < IntegerPolynomial.BIGINT_PRIMES.size()) {
                List list = IntegerPolynomial.BIGINT_PRIMES;
                int r12 = this.index;
                this.index = r12 + 1;
                bigIntegerNextProbablePrime = (BigInteger) list.get(r12);
            } else {
                bigIntegerNextProbablePrime = this.prime.nextProbablePrime();
            }
            this.prime = bigIntegerNextProbablePrime;
            return this.prime;
        }
    }

    static {
        int r02 = 0;
        while (true) {
            if (r02 == PRIMES.length) {
                return;
            }
            BIGINT_PRIMES.add(BigInteger.valueOf(r1[r02]));
            r02++;
        }
    }

    public IntegerPolynomial(int r12) {
        this.coeffs = new int[r12];
    }

    public IntegerPolynomial(BigIntPolynomial bigIntPolynomial) {
        this.coeffs = new int[bigIntPolynomial.coeffs.length];
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = bigIntPolynomial.coeffs;
            if (r02 >= bigIntegerArr.length) {
                return;
            }
            this.coeffs[r02] = bigIntegerArr[r02].intValue();
            r02++;
        }
    }

    public IntegerPolynomial(int[] r12) {
        this.coeffs = r12;
    }

    private boolean equalsAbsOne() {
        int r12 = 1;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return Math.abs(r22[0]) == 1;
            }
            if (r22[r12] != 0) {
                return false;
            }
            r12++;
        }
    }

    private boolean equalsZero() {
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return true;
            }
            if (r22[r12] != 0) {
                return false;
            }
            r12++;
        }
    }

    public static IntegerPolynomial fromBinary(InputStream inputStream, int r22, int r32) throws IOException {
        return new IntegerPolynomial(ArrayEncoder.decodeModQ(inputStream, r22, r32));
    }

    public static IntegerPolynomial fromBinary(byte[] bArr, int r22, int r32) {
        return new IntegerPolynomial(ArrayEncoder.decodeModQ(bArr, r22, r32));
    }

    public static IntegerPolynomial fromBinary3Sves(byte[] bArr, int r22) {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Sves(bArr, r22));
    }

    public static IntegerPolynomial fromBinary3Tight(InputStream inputStream, int r22) throws IOException {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Tight(inputStream, r22));
    }

    public static IntegerPolynomial fromBinary3Tight(byte[] bArr, int r22) {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Tight(bArr, r22));
    }

    private IntegerPolynomial mod2ToModq(IntegerPolynomial integerPolynomial, int r72) {
        int r12 = 2;
        if (!Util.is64BitJVM() || r72 != 2048) {
            while (r12 < r72) {
                r12 *= 2;
                int[] r22 = integerPolynomial.coeffs;
                IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(Arrays.copyOf(r22, r22.length));
                integerPolynomial2.mult2(r12);
                integerPolynomial2.sub(mult(integerPolynomial, r12).mult(integerPolynomial, r12), r12);
                integerPolynomial = integerPolynomial2;
            }
            return integerPolynomial;
        }
        LongPolynomial2 longPolynomial2 = new LongPolynomial2(this);
        LongPolynomial2 longPolynomial22 = new LongPolynomial2(integerPolynomial);
        while (r12 < r72) {
            r12 *= 2;
            LongPolynomial2 longPolynomial23 = (LongPolynomial2) longPolynomial22.clone();
            int r32 = r12 - 1;
            longPolynomial23.mult2And(r32);
            longPolynomial23.subAnd(longPolynomial2.mult(longPolynomial22).mult(longPolynomial22), r32);
            longPolynomial22 = longPolynomial23;
        }
        return longPolynomial22.toIntegerPolynomial();
    }

    private void mult2(int r42) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            int r22 = r12[r02] * 2;
            r12[r02] = r22;
            r12[r02] = r22 % r42;
            r02++;
        }
    }

    private IntegerPolynomial multRecursive(IntegerPolynomial integerPolynomial) {
        int[] r02 = this.coeffs;
        int[] r12 = integerPolynomial.coeffs;
        int length = r12.length;
        int r32 = 0;
        if (length <= 32) {
            int r22 = (length * 2) - 1;
            IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(new int[r22]);
            for (int r52 = 0; r52 < r22; r52++) {
                for (int r6 = Math.max(0, (r52 - length) + 1); r6 <= Math.min(r52, length - 1); r6++) {
                    int[] r72 = integerPolynomial2.coeffs;
                    r72[r52] = (r12[r6] * r02[r52 - r6]) + r72[r52];
                }
            }
            return integerPolynomial2;
        }
        int r23 = length / 2;
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(Arrays.copyOf(r02, r23));
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(Arrays.copyOfRange(r02, r23, length));
        IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(Arrays.copyOf(r12, r23));
        IntegerPolynomial integerPolynomial6 = new IntegerPolynomial(Arrays.copyOfRange(r12, r23, length));
        IntegerPolynomial integerPolynomial7 = (IntegerPolynomial) integerPolynomial3.clone();
        integerPolynomial7.add(integerPolynomial4);
        IntegerPolynomial integerPolynomial8 = (IntegerPolynomial) integerPolynomial5.clone();
        integerPolynomial8.add(integerPolynomial6);
        IntegerPolynomial integerPolynomialMultRecursive = integerPolynomial3.multRecursive(integerPolynomial5);
        IntegerPolynomial integerPolynomialMultRecursive2 = integerPolynomial4.multRecursive(integerPolynomial6);
        IntegerPolynomial integerPolynomialMultRecursive3 = integerPolynomial7.multRecursive(integerPolynomial8);
        integerPolynomialMultRecursive3.sub(integerPolynomialMultRecursive);
        integerPolynomialMultRecursive3.sub(integerPolynomialMultRecursive2);
        IntegerPolynomial integerPolynomial9 = new IntegerPolynomial((length * 2) - 1);
        int r13 = 0;
        while (true) {
            int[] r62 = integerPolynomialMultRecursive.coeffs;
            if (r13 >= r62.length) {
                break;
            }
            integerPolynomial9.coeffs[r13] = r62[r13];
            r13++;
        }
        int r03 = 0;
        while (true) {
            int[] r14 = integerPolynomialMultRecursive3.coeffs;
            if (r03 >= r14.length) {
                break;
            }
            int[] r63 = integerPolynomial9.coeffs;
            int r73 = r23 + r03;
            r63[r73] = r63[r73] + r14[r03];
            r03++;
        }
        while (true) {
            int[] r122 = integerPolynomialMultRecursive2.coeffs;
            if (r32 >= r122.length) {
                return integerPolynomial9;
            }
            int[] r04 = integerPolynomial9.coeffs;
            int r15 = (r23 * 2) + r32;
            r04[r15] = r04[r15] + r122[r32];
            r32++;
        }
    }

    private void multShiftSub(IntegerPolynomial integerPolynomial, int r82, int r92, int r10) {
        int length = this.coeffs.length;
        for (int r12 = r92; r12 < length; r12++) {
            int[] r22 = this.coeffs;
            r22[r12] = (r22[r12] - (integerPolynomial.coeffs[r12 - r92] * r82)) % r10;
        }
    }

    private void sort(int[] r72) {
        boolean z10;
        for (boolean z11 = true; z11; z11 = z10) {
            int r12 = 0;
            z10 = false;
            while (r12 != r72.length - 1) {
                int r32 = r72[r12];
                int r42 = r12 + 1;
                int r52 = r72[r42];
                if (r32 > r52) {
                    r72[r12] = r52;
                    r72[r42] = r32;
                    z10 = true;
                }
                r12 = r42;
            }
        }
    }

    private BigInteger squareSum() {
        BigInteger bigIntegerAdd = Constants.BIGINT_ZERO;
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return bigIntegerAdd;
            }
            int r23 = r22[r12];
            bigIntegerAdd = bigIntegerAdd.add(BigInteger.valueOf(r23 * r23));
            r12++;
        }
    }

    public void add(IntegerPolynomial integerPolynomial) {
        int[] r02 = integerPolynomial.coeffs;
        int length = r02.length;
        int[] r22 = this.coeffs;
        if (length > r22.length) {
            this.coeffs = Arrays.copyOf(r22, r02.length);
        }
        int r03 = 0;
        while (true) {
            int[] r12 = integerPolynomial.coeffs;
            if (r03 >= r12.length) {
                return;
            }
            int[] r23 = this.coeffs;
            r23[r03] = r23[r03] + r12[r03];
            r03++;
        }
    }

    public void add(IntegerPolynomial integerPolynomial, int r22) {
        add(integerPolynomial);
        mod(r22);
    }

    public void center0(int r52) {
        for (int r02 = 0; r02 < this.coeffs.length; r02++) {
            while (true) {
                int[] r12 = this.coeffs;
                int r22 = r12[r02];
                if (r22 >= (-r52) / 2) {
                    break;
                } else {
                    r12[r02] = r22 + r52;
                }
            }
            while (true) {
                int[] r13 = this.coeffs;
                int r23 = r13[r02];
                if (r23 > r52 / 2) {
                    r13[r02] = r23 - r52;
                }
            }
        }
    }

    public long centeredNormSq(int r10) {
        int length = this.coeffs.length;
        IntegerPolynomial integerPolynomial = (IntegerPolynomial) clone();
        integerPolynomial.shiftGap(r10);
        long j10 = 0;
        int r102 = 0;
        long j11 = 0;
        while (true) {
            int[] r6 = integerPolynomial.coeffs;
            if (r102 == r6.length) {
                return j10 - ((j11 * j11) / length);
            }
            j11 += r6[r102];
            j10 += r6 * r6;
            r102++;
        }
    }

    public void clear() {
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return;
            }
            r22[r12] = 0;
            r12++;
        }
    }

    public Object clone() {
        return new IntegerPolynomial((int[]) this.coeffs.clone());
    }

    public int count(int r52) {
        int r02 = 0;
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r02 == r22.length) {
                return r12;
            }
            if (r22[r02] == r52) {
                r12++;
            }
            r02++;
        }
    }

    public int degree() {
        int length = this.coeffs.length - 1;
        while (length > 0 && this.coeffs[length] == 0) {
            length--;
        }
        return length;
    }

    public void div(int r6) {
        int r02 = (r6 + 1) / 2;
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return;
            }
            int r32 = r22[r12];
            int r33 = r32 + (r32 > 0 ? r02 : -r02);
            r22[r12] = r33;
            r22[r12] = r33 / r6;
            r12++;
        }
    }

    public void ensurePositive(int r42) {
        for (int r02 = 0; r02 < this.coeffs.length; r02++) {
            while (true) {
                int[] r12 = this.coeffs;
                int r22 = r12[r02];
                if (r22 < 0) {
                    r12[r02] = r22 + r42;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof IntegerPolynomial) {
            return Arrays.areEqual(this.coeffs, ((IntegerPolynomial) obj).coeffs);
        }
        return false;
    }

    public boolean equalsOne() {
        int r12 = 1;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                return r22[0] == 1;
            }
            if (r22[r12] != 0) {
                return false;
            }
            r12++;
        }
    }

    public IntegerPolynomial invertF3() {
        int length = this.coeffs.length;
        int r32 = length + 1;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(r32);
        integerPolynomial.coeffs[0] = 1;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(r32);
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(r32);
        integerPolynomial3.coeffs = Arrays.copyOf(this.coeffs, r32);
        integerPolynomial3.modPositive(3);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(r32);
        int[] r10 = integerPolynomial4.coeffs;
        r10[0] = -1;
        r10[length] = 1;
        int r102 = 0;
        while (true) {
            if (integerPolynomial3.coeffs[0] == 0) {
                for (int r11 = 1; r11 <= length; r11++) {
                    int[] r13 = integerPolynomial3.coeffs;
                    r13[r11 - 1] = r13[r11];
                    int[] r132 = integerPolynomial2.coeffs;
                    r132[r32 - r11] = r132[length - r11];
                }
                integerPolynomial3.coeffs[length] = 0;
                integerPolynomial2.coeffs[0] = 0;
                r102++;
                if (integerPolynomial3.equalsZero()) {
                    return null;
                }
            } else {
                if (integerPolynomial3.equalsAbsOne()) {
                    if (integerPolynomial.coeffs[length] != 0) {
                        return null;
                    }
                    IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(length);
                    int r103 = r102 % length;
                    for (int r42 = length - 1; r42 >= 0; r42--) {
                        int r6 = r42 - r103;
                        if (r6 < 0) {
                            r6 += length;
                        }
                        integerPolynomial5.coeffs[r6] = integerPolynomial3.coeffs[0] * integerPolynomial.coeffs[r42];
                    }
                    integerPolynomial5.ensurePositive(3);
                    return integerPolynomial5;
                }
                if (integerPolynomial3.degree() < integerPolynomial4.degree()) {
                    IntegerPolynomial integerPolynomial6 = integerPolynomial2;
                    integerPolynomial2 = integerPolynomial;
                    integerPolynomial = integerPolynomial6;
                    IntegerPolynomial integerPolynomial7 = integerPolynomial4;
                    integerPolynomial4 = integerPolynomial3;
                    integerPolynomial3 = integerPolynomial7;
                }
                if (integerPolynomial3.coeffs[0] == integerPolynomial4.coeffs[0]) {
                    integerPolynomial3.sub(integerPolynomial4, 3);
                    integerPolynomial.sub(integerPolynomial2, 3);
                } else {
                    integerPolynomial3.add(integerPolynomial4, 3);
                    integerPolynomial.add(integerPolynomial2, 3);
                }
            }
        }
    }

    public IntegerPolynomial invertFq(int r19) {
        int length = this.coeffs.length;
        int r32 = length + 1;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(r32);
        integerPolynomial.coeffs[0] = 1;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(r32);
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(r32);
        integerPolynomial3.coeffs = Arrays.copyOf(this.coeffs, r32);
        integerPolynomial3.modPositive(2);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(r32);
        int[] r10 = integerPolynomial4.coeffs;
        r10[0] = 1;
        r10[length] = 1;
        int r102 = 0;
        while (true) {
            if (integerPolynomial3.coeffs[0] == 0) {
                for (int r11 = 1; r11 <= length; r11++) {
                    int[] r13 = integerPolynomial3.coeffs;
                    r13[r11 - 1] = r13[r11];
                    int[] r132 = integerPolynomial2.coeffs;
                    r132[r32 - r11] = r132[length - r11];
                }
                integerPolynomial3.coeffs[length] = 0;
                integerPolynomial2.coeffs[0] = 0;
                r102++;
                if (integerPolynomial3.equalsZero()) {
                    return null;
                }
            } else {
                if (integerPolynomial3.equalsOne()) {
                    if (integerPolynomial.coeffs[length] != 0) {
                        return null;
                    }
                    IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(length);
                    int r103 = r102 % length;
                    for (int r42 = length - 1; r42 >= 0; r42--) {
                        int r52 = r42 - r103;
                        if (r52 < 0) {
                            r52 += length;
                        }
                        integerPolynomial5.coeffs[r52] = integerPolynomial.coeffs[r42];
                    }
                    return mod2ToModq(integerPolynomial5, r19);
                }
                if (integerPolynomial3.degree() < integerPolynomial4.degree()) {
                    IntegerPolynomial integerPolynomial6 = integerPolynomial2;
                    integerPolynomial2 = integerPolynomial;
                    integerPolynomial = integerPolynomial6;
                    IntegerPolynomial integerPolynomial7 = integerPolynomial4;
                    integerPolynomial4 = integerPolynomial3;
                    integerPolynomial3 = integerPolynomial7;
                }
                integerPolynomial3.add(integerPolynomial4, 2);
                integerPolynomial.add(integerPolynomial2, 2);
            }
        }
    }

    public void mod(int r42) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            r12[r02] = r12[r02] % r42;
            r02++;
        }
    }

    public void mod3() {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            int r22 = r12[r02] % 3;
            r12[r02] = r22;
            if (r22 > 1) {
                r12[r02] = r22 - 3;
            }
            int r23 = r12[r02];
            if (r23 < -1) {
                r12[r02] = r23 + 3;
            }
            r02++;
        }
    }

    public void modCenter(int r52) {
        int r32;
        mod(r52);
        for (int r02 = 0; r02 < this.coeffs.length; r02++) {
            while (true) {
                int[] r12 = this.coeffs;
                int r22 = r12[r02];
                r32 = r52 / 2;
                if (r22 >= r32) {
                    break;
                } else {
                    r12[r02] = r22 + r52;
                }
            }
            while (true) {
                int[] r13 = this.coeffs;
                int r23 = r13[r02];
                if (r23 >= r32) {
                    r13[r02] = r23 - r52;
                }
            }
        }
    }

    public void modPositive(int r12) {
        mod(r12);
        ensurePositive(r12);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        return new BigIntPolynomial(this).mult(bigIntPolynomial);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial) {
        int[] r22;
        int length = this.coeffs.length;
        if (integerPolynomial.coeffs.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        IntegerPolynomial integerPolynomialMultRecursive = multRecursive(integerPolynomial);
        if (integerPolynomialMultRecursive.coeffs.length > length) {
            int r12 = length;
            while (true) {
                r22 = integerPolynomialMultRecursive.coeffs;
                if (r12 >= r22.length) {
                    break;
                }
                int r32 = r12 - length;
                r22[r32] = r22[r32] + r22[r12];
                r12++;
            }
            integerPolynomialMultRecursive.coeffs = Arrays.copyOf(r22, length);
        }
        return integerPolynomialMultRecursive;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int r22) {
        IntegerPolynomial integerPolynomialMult = mult(integerPolynomial);
        integerPolynomialMult.mod(r22);
        return integerPolynomialMult;
    }

    public void mult(int r42) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            r12[r02] = r12[r02] * r42;
            r02++;
        }
    }

    public void mult3(int r42) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            int r22 = r12[r02] * 3;
            r12[r02] = r22;
            r12[r02] = r22 % r42;
            r02++;
        }
    }

    public ModularResultant resultant(int r15) {
        int[] r02 = this.coeffs;
        int[] r03 = Arrays.copyOf(r02, r02.length + 1);
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(r03);
        int length = r03.length;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(length);
        int[] r42 = integerPolynomial2.coeffs;
        r42[0] = -1;
        int r52 = length - 1;
        r42[r52] = 1;
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(integerPolynomial.coeffs);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(length);
        IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(length);
        integerPolynomial5.coeffs[0] = 1;
        int r82 = r52;
        int r92 = 1;
        int r53 = integerPolynomial3.degree();
        IntegerPolynomial integerPolynomial6 = integerPolynomial4;
        IntegerPolynomial integerPolynomial7 = integerPolynomial5;
        int r72 = r82;
        IntegerPolynomial integerPolynomial8 = integerPolynomial2;
        IntegerPolynomial integerPolynomial9 = integerPolynomial3;
        while (r53 > 0) {
            int r10 = (Util.invert(integerPolynomial9.coeffs[r53], r15) * integerPolynomial8.coeffs[r72]) % r15;
            int r73 = r72 - r53;
            integerPolynomial8.multShiftSub(integerPolynomial9, r10, r73, r15);
            integerPolynomial6.multShiftSub(integerPolynomial7, r10, r73, r15);
            r72 = integerPolynomial8.degree();
            if (r72 < r53) {
                int r102 = (Util.pow(integerPolynomial9.coeffs[r53], r82 - r72, r15) * r92) % r15;
                r92 = (r82 % 2 == 1 && r53 % 2 == 1) ? (-r102) % r15 : r102;
                r82 = r53;
                r53 = r72;
                r72 = r82;
                IntegerPolynomial integerPolynomial10 = integerPolynomial7;
                integerPolynomial7 = integerPolynomial6;
                integerPolynomial6 = integerPolynomial10;
                IntegerPolynomial integerPolynomial11 = integerPolynomial8;
                integerPolynomial8 = integerPolynomial9;
                integerPolynomial9 = integerPolynomial11;
            }
        }
        int r04 = (Util.pow(integerPolynomial9.coeffs[0], r72, r15) * r92) % r15;
        integerPolynomial7.mult(Util.invert(integerPolynomial9.coeffs[0], r15));
        integerPolynomial7.mod(r15);
        integerPolynomial7.mult(r04);
        integerPolynomial7.mod(r15);
        int[] r32 = integerPolynomial7.coeffs;
        integerPolynomial7.coeffs = Arrays.copyOf(r32, r32.length - 1);
        return new ModularResultant(new BigIntPolynomial(integerPolynomial7), BigInteger.valueOf(r04), BigInteger.valueOf(r15));
    }

    public Resultant resultant() {
        BigInteger bigIntegerMultiply;
        BigInteger bigIntegerMod;
        int length = this.coeffs.length;
        LinkedList linkedList = new LinkedList();
        BigInteger bigInteger = Constants.BIGINT_ONE;
        PrimeGenerator primeGenerator = new PrimeGenerator();
        BigInteger bigInteger2 = bigInteger;
        int r6 = 1;
        while (true) {
            BigInteger bigIntegerNextPrime = primeGenerator.nextPrime();
            ModularResultant modularResultantResultant = resultant(bigIntegerNextPrime.intValue());
            linkedList.add(modularResultantResultant);
            bigIntegerMultiply = bigInteger.multiply(bigIntegerNextPrime);
            BigIntEuclidean bigIntEuclideanCalculate = BigIntEuclidean.calculate(bigIntegerNextPrime, bigInteger);
            bigIntegerMod = bigInteger2.multiply(bigIntEuclideanCalculate.f12061x.multiply(bigIntegerNextPrime)).add(modularResultantResultant.res.multiply(bigIntEuclideanCalculate.f12062y.multiply(bigInteger))).mod(bigIntegerMultiply);
            BigInteger bigIntegerDivide = bigIntegerMultiply.divide(BigInteger.valueOf(2L));
            BigInteger bigIntegerNegate = bigIntegerDivide.negate();
            if (bigIntegerMod.compareTo(bigIntegerDivide) > 0) {
                bigIntegerMod = bigIntegerMod.subtract(bigIntegerMultiply);
            } else if (bigIntegerMod.compareTo(bigIntegerNegate) < 0) {
                bigIntegerMod = bigIntegerMod.add(bigIntegerMultiply);
            }
            if (bigIntegerMod.equals(bigInteger2)) {
                r6++;
                if (r6 >= 3) {
                    break;
                }
            } else {
                r6 = 1;
            }
            bigInteger2 = bigIntegerMod;
            bigInteger = bigIntegerMultiply;
        }
        while (linkedList.size() > 1) {
            linkedList.addLast(ModularResultant.combineRho((ModularResultant) linkedList.removeFirst(), (ModularResultant) linkedList.removeFirst()));
        }
        BigIntPolynomial bigIntPolynomial = ((ModularResultant) linkedList.getFirst()).rho;
        BigInteger bigIntegerDivide2 = bigIntegerMultiply.divide(BigInteger.valueOf(2L));
        BigInteger bigIntegerNegate2 = bigIntegerDivide2.negate();
        if (bigIntegerMod.compareTo(bigIntegerDivide2) > 0) {
            bigIntegerMod = bigIntegerMod.subtract(bigIntegerMultiply);
        }
        if (bigIntegerMod.compareTo(bigIntegerNegate2) < 0) {
            bigIntegerMod = bigIntegerMod.add(bigIntegerMultiply);
        }
        for (int r52 = 0; r52 < length; r52++) {
            BigInteger bigInteger3 = bigIntPolynomial.coeffs[r52];
            if (bigInteger3.compareTo(bigIntegerDivide2) > 0) {
                bigIntPolynomial.coeffs[r52] = bigInteger3.subtract(bigIntegerMultiply);
            }
            if (bigInteger3.compareTo(bigIntegerNegate2) < 0) {
                bigIntPolynomial.coeffs[r52] = bigInteger3.add(bigIntegerMultiply);
            }
        }
        return new Resultant(bigIntPolynomial, bigIntegerMod);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x008d, code lost:
    
        r10 = (org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant) r1.get();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.pqc.legacy.math.ntru.polynomial.Resultant resultantMultiThread() {
        /*
            r12 = this;
            int[] r0 = r12.coeffs
            int r0 = r0.length
            java.math.BigInteger r1 = r12.squareSum()
            int r2 = r0 + 1
            int r2 = r2 / 2
            java.math.BigInteger r1 = r1.pow(r2)
            r2 = 2
            java.math.BigInteger r4 = java.math.BigInteger.valueOf(r2)
            int r5 = r12.degree()
            int r5 = r5 + 1
            int r5 = r5 / 2
            java.math.BigInteger r4 = r4.pow(r5)
            java.math.BigInteger r1 = r1.multiply(r4)
            java.math.BigInteger r4 = java.math.BigInteger.valueOf(r2)
            java.math.BigInteger r1 = r1.multiply(r4)
            r4 = 10000(0x2710, double:4.9407E-320)
            java.math.BigInteger r4 = java.math.BigInteger.valueOf(r4)
            java.math.BigInteger r5 = org.bouncycastle.pqc.legacy.math.ntru.polynomial.Constants.BIGINT_ONE
            java.util.concurrent.LinkedBlockingQueue r6 = new java.util.concurrent.LinkedBlockingQueue
            r6.<init>()
            java.util.List r7 = org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial.BIGINT_PRIMES
            java.util.Iterator r7 = r7.iterator()
            java.lang.Runtime r8 = java.lang.Runtime.getRuntime()
            int r8 = r8.availableProcessors()
            java.util.concurrent.ExecutorService r8 = java.util.concurrent.Executors.newFixedThreadPool(r8)
        L4c:
            int r9 = r5.compareTo(r1)
            r10 = 0
            if (r9 >= 0) goto L79
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L60
            java.lang.Object r4 = r7.next()
            java.math.BigInteger r4 = (java.math.BigInteger) r4
            goto L64
        L60:
            java.math.BigInteger r4 = r4.nextProbablePrime()
        L64:
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial$ModResultantTask r9 = new org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial$ModResultantTask
            int r11 = r4.intValue()
            r9.<init>(r11)
            java.util.concurrent.Future r9 = r8.submit(r9)
            r6.add(r9)
            java.math.BigInteger r5 = r5.multiply(r4)
            goto L4c
        L79:
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto Lb9
            java.lang.Object r1 = r6.take()     // Catch: java.lang.Exception -> Lae
            java.util.concurrent.Future r1 = (java.util.concurrent.Future) r1     // Catch: java.lang.Exception -> Lae
            java.lang.Object r4 = r6.poll()     // Catch: java.lang.Exception -> Lae
            java.util.concurrent.Future r4 = (java.util.concurrent.Future) r4     // Catch: java.lang.Exception -> Lae
            if (r4 != 0) goto L95
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Exception -> Lae
            r10 = r1
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant r10 = (org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant) r10     // Catch: java.lang.Exception -> Lae
            goto Lb9
        L95:
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial$CombineTask r7 = new org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial$CombineTask     // Catch: java.lang.Exception -> Lae
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Exception -> Lae
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant r1 = (org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant) r1     // Catch: java.lang.Exception -> Lae
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Exception -> Lae
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant r4 = (org.bouncycastle.pqc.legacy.math.ntru.polynomial.ModularResultant) r4     // Catch: java.lang.Exception -> Lae
            r7.<init>(r1, r4)     // Catch: java.lang.Exception -> Lae
            java.util.concurrent.Future r1 = r8.submit(r7)     // Catch: java.lang.Exception -> Lae
            r6.add(r1)     // Catch: java.lang.Exception -> Lae
            goto L79
        Lae:
            r0 = move-exception
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        Lb9:
            r8.shutdown()
            java.math.BigInteger r1 = r10.res
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.BigIntPolynomial r4 = r10.rho
            java.math.BigInteger r2 = java.math.BigInteger.valueOf(r2)
            java.math.BigInteger r2 = r5.divide(r2)
            java.math.BigInteger r3 = r2.negate()
            int r6 = r1.compareTo(r2)
            if (r6 <= 0) goto Ld6
            java.math.BigInteger r1 = r1.subtract(r5)
        Ld6:
            int r6 = r1.compareTo(r3)
            if (r6 >= 0) goto Le0
            java.math.BigInteger r1 = r1.add(r5)
        Le0:
            r6 = 0
        Le1:
            if (r6 >= r0) goto L106
            java.math.BigInteger[] r7 = r4.coeffs
            r7 = r7[r6]
            int r8 = r7.compareTo(r2)
            if (r8 <= 0) goto Lf5
            java.math.BigInteger[] r8 = r4.coeffs
            java.math.BigInteger r9 = r7.subtract(r5)
            r8[r6] = r9
        Lf5:
            int r8 = r7.compareTo(r3)
            if (r8 >= 0) goto L103
            java.math.BigInteger[] r8 = r4.coeffs
            java.math.BigInteger r7 = r7.add(r5)
            r8[r6] = r7
        L103:
            int r6 = r6 + 1
            goto Le1
        L106:
            org.bouncycastle.pqc.legacy.math.ntru.polynomial.Resultant r0 = new org.bouncycastle.pqc.legacy.math.ntru.polynomial.Resultant
            r0.<init>(r4, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial.resultantMultiThread():org.bouncycastle.pqc.legacy.math.ntru.polynomial.Resultant");
    }

    public void rotate1() {
        int[] r02 = this.coeffs;
        int r12 = r02[r02.length - 1];
        for (int length = r02.length - 1; length > 0; length--) {
            int[] r22 = this.coeffs;
            r22[length] = r22[length - 1];
        }
        this.coeffs[0] = r12;
    }

    public void shiftGap(int r82) {
        int r02;
        modCenter(r82);
        int[] r03 = Arrays.clone(this.coeffs);
        sort(r03);
        int r22 = 0;
        int r32 = 0;
        int r42 = 0;
        while (r22 < r03.length - 1) {
            int r52 = r22 + 1;
            int r6 = r03[r52];
            int r23 = r03[r22];
            int r62 = r6 - r23;
            if (r62 > r32) {
                r42 = r23;
                r32 = r62;
            }
            r22 = r52;
        }
        int r12 = r03[0];
        int r04 = r03[r03.length - 1];
        if ((r82 - r04) + r12 > r32) {
            r02 = (r04 + r12) / 2;
        } else {
            r02 = (r82 / 2) + (r32 / 2) + r42;
        }
        sub(r02);
    }

    public void sub(int r42) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.coeffs;
            if (r02 >= r12.length) {
                return;
            }
            r12[r02] = r12[r02] - r42;
            r02++;
        }
    }

    public void sub(IntegerPolynomial integerPolynomial) {
        int[] r02 = integerPolynomial.coeffs;
        int length = r02.length;
        int[] r22 = this.coeffs;
        if (length > r22.length) {
            this.coeffs = Arrays.copyOf(r22, r02.length);
        }
        int r03 = 0;
        while (true) {
            int[] r12 = integerPolynomial.coeffs;
            if (r03 >= r12.length) {
                return;
            }
            int[] r23 = this.coeffs;
            r23[r03] = r23[r03] - r12[r03];
            r03++;
        }
    }

    public void sub(IntegerPolynomial integerPolynomial, int r22) {
        sub(integerPolynomial);
        mod(r22);
    }

    public int sumCoeffs() {
        int r02 = 0;
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r02 >= r22.length) {
                return r12;
            }
            r12 += r22[r02];
            r02++;
        }
    }

    public byte[] toBinary(int r22) {
        return ArrayEncoder.encodeModQ(this.coeffs, r22);
    }

    public byte[] toBinary3Sves() {
        return ArrayEncoder.encodeMod3Sves(this.coeffs);
    }

    public byte[] toBinary3Tight() {
        BigInteger bigIntegerAdd = Constants.BIGINT_ZERO;
        for (int length = this.coeffs.length - 1; length >= 0; length--) {
            bigIntegerAdd = bigIntegerAdd.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(this.coeffs[length] + 1));
        }
        int r12 = (BigInteger.valueOf(3L).pow(this.coeffs.length).bitLength() + 7) / 8;
        byte[] byteArray = bigIntegerAdd.toByteArray();
        if (byteArray.length >= r12) {
            return byteArray.length > r12 ? Arrays.copyOfRange(byteArray, 1, byteArray.length) : byteArray;
        }
        byte[] bArr = new byte[r12];
        System.arraycopy(byteArray, 0, bArr, r12 - byteArray.length, byteArray.length);
        return bArr;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial toIntegerPolynomial() {
        return (IntegerPolynomial) clone();
    }
}
