package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410ValidationParameters;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int r19, int r20, BigInteger[] bigIntegerArr, int r22) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int r222;
        int r17;
        int r12 = r19;
        while (true) {
            if (r12 >= 0 && r12 <= 65536) {
                break;
            }
            r12 = this.init_random.nextInt() / 32768;
        }
        int r42 = r20;
        while (true) {
            if (r42 >= 0 && r42 <= 65536 && r42 / 2 != 0) {
                break;
            }
            r42 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Integer.toString(r42));
        BigInteger bigInteger5 = new BigInteger("19381");
        BigInteger bigInteger6 = new BigInteger(Integer.toString(r12));
        int r13 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] r6 = {r22};
        int r72 = 0;
        int r82 = 0;
        while (r6[r72] >= 17) {
            int length = r6.length + 1;
            int[] r92 = new int[length];
            System.arraycopy(r6, 0, r92, 0, r6.length);
            r6 = new int[length];
            System.arraycopy(r92, 0, r6, 0, length);
            r82 = r72 + 1;
            r6[r82] = r6[r72] / 2;
            r72 = r82;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[r82 + 1];
        int r11 = 16;
        bigIntegerArr4[r82] = new BigInteger("8003", 16);
        int r93 = r82 - 1;
        int r10 = 0;
        while (true) {
            if (r10 >= r82) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int r122 = r6[r93] / r11;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, r13, bigIntegerArr5, r13, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[r122 + 1];
                System.arraycopy(bigIntegerArr5, r13, bigIntegerArr2, r13, length2);
                int r43 = 0;
                while (r43 < r122) {
                    int r132 = r43 + 1;
                    bigIntegerArr2[r132] = bigIntegerArr2[r43].multiply(bigInteger5).add(bigInteger4).mod(TWO.pow(r11));
                    r43 = r132;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int r133 = 0; r133 < r122; r133++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[r133].multiply(TWO.pow(r133 * 16)));
                }
                bigIntegerArr2[r13] = bigIntegerArr2[r122];
                BigInteger bigInteger8 = TWO;
                int r14 = r93 + 1;
                BigInteger bigIntegerAdd = bigInteger8.pow(r6[r93] - 1).divide(bigIntegerArr4[r14]).add(bigInteger8.pow(r6[r93] - 1).multiply(bigInteger7).divide(bigIntegerArr4[r14].multiply(bigInteger8.pow(r122 * 16))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger8);
                BigInteger bigInteger9 = ONE;
                if (bigIntegerMod.compareTo(bigInteger9) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger9);
                }
                int r44 = 0;
                while (true) {
                    bigInteger2 = bigInteger4;
                    bigInteger3 = bigInteger5;
                    long j10 = r44;
                    r222 = r82;
                    BigInteger bigIntegerMultiply = bigIntegerArr4[r14].multiply(bigIntegerAdd.add(BigInteger.valueOf(j10)));
                    BigInteger bigInteger10 = ONE;
                    BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger10);
                    bigIntegerArr4[r93] = bigIntegerAdd2;
                    BigInteger bigInteger11 = TWO;
                    r17 = r122;
                    if (bigIntegerAdd2.compareTo(bigInteger11.pow(r6[r93])) == 1) {
                        break;
                    }
                    if (bigInteger11.modPow(bigIntegerArr4[r14].multiply(bigIntegerAdd.add(BigInteger.valueOf(j10))), bigIntegerArr4[r93]).compareTo(bigInteger10) == 0 && bigInteger11.modPow(bigIntegerAdd.add(BigInteger.valueOf(j10)), bigIntegerArr4[r93]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    r44 += 2;
                    r82 = r222;
                    bigInteger5 = bigInteger3;
                    bigInteger4 = bigInteger2;
                    r122 = r17;
                }
                r82 = r222;
                bigInteger5 = bigInteger3;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger4 = bigInteger2;
                r122 = r17;
                r13 = 0;
                r11 = 16;
            }
            r93--;
            if (r93 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            r10++;
            r82 = r222;
            bigInteger5 = bigInteger3;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger4 = bigInteger2;
            r13 = 0;
            r11 = 16;
        }
        return bigInteger.intValue();
    }

    private long procedure_Aa(long j10, long j11, BigInteger[] bigIntegerArr, int r23) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int r232;
        long jNextInt = j10;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= 4294967296L) {
                break;
            }
            jNextInt = this.init_random.nextInt() * 2;
        }
        long jNextInt2 = j11;
        while (true) {
            if (jNextInt2 >= 0 && jNextInt2 <= 4294967296L && jNextInt2 / 2 != 0) {
                break;
            }
            jNextInt2 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger5 = new BigInteger("97781173");
        BigInteger bigInteger6 = new BigInteger(Long.toString(jNextInt));
        int r12 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] r22 = {r23};
        int r6 = 0;
        int r72 = 0;
        while (r22[r6] >= 33) {
            int length = r22.length + 1;
            int[] r82 = new int[length];
            System.arraycopy(r22, 0, r82, 0, r22.length);
            r22 = new int[length];
            System.arraycopy(r82, 0, r22, 0, length);
            r72 = r6 + 1;
            r22[r72] = r22[r6] / 2;
            r6 = r72;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[r72 + 1];
        bigIntegerArr4[r72] = new BigInteger("8000000B", 16);
        int r83 = r72 - 1;
        int r10 = 0;
        while (true) {
            if (r10 >= r72) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int r122 = 32;
            int r11 = r22[r83] / 32;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, r12, bigIntegerArr5, r12, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[r11 + 1];
                System.arraycopy(bigIntegerArr5, r12, bigIntegerArr2, r12, length2);
                int r52 = 0;
                while (r52 < r11) {
                    int r13 = r52 + 1;
                    bigIntegerArr2[r13] = bigIntegerArr2[r52].multiply(bigInteger5).add(bigInteger4).mod(TWO.pow(r122));
                    r52 = r13;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int r132 = 0; r132 < r11; r132++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[r132].multiply(TWO.pow(r132 * 32)));
                }
                bigIntegerArr2[r12] = bigIntegerArr2[r11];
                BigInteger bigInteger8 = TWO;
                int r14 = r83 + 1;
                BigInteger bigIntegerAdd = bigInteger8.pow(r22[r83] - 1).divide(bigIntegerArr4[r14]).add(bigInteger8.pow(r22[r83] - 1).multiply(bigInteger7).divide(bigIntegerArr4[r14].multiply(bigInteger8.pow(r11 * 32))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger8);
                BigInteger bigInteger9 = ONE;
                if (bigIntegerMod.compareTo(bigInteger9) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger9);
                }
                int r53 = 0;
                while (true) {
                    long j12 = r53;
                    bigInteger2 = bigInteger4;
                    BigInteger bigIntegerMultiply = bigIntegerArr4[r14].multiply(bigIntegerAdd.add(BigInteger.valueOf(j12)));
                    BigInteger bigInteger10 = ONE;
                    BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger10);
                    bigIntegerArr4[r83] = bigIntegerAdd2;
                    bigInteger3 = bigInteger5;
                    BigInteger bigInteger11 = TWO;
                    r232 = r72;
                    if (bigIntegerAdd2.compareTo(bigInteger11.pow(r22[r83])) == 1) {
                        break;
                    }
                    if (bigInteger11.modPow(bigIntegerArr4[r14].multiply(bigIntegerAdd.add(BigInteger.valueOf(j12))), bigIntegerArr4[r83]).compareTo(bigInteger10) == 0 && bigInteger11.modPow(bigIntegerAdd.add(BigInteger.valueOf(j12)), bigIntegerArr4[r83]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    r53 += 2;
                    bigInteger4 = bigInteger2;
                    r72 = r232;
                    bigInteger5 = bigInteger3;
                }
                bigInteger4 = bigInteger2;
                r72 = r232;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger5 = bigInteger3;
                r12 = 0;
                r122 = 32;
            }
            r83--;
            if (r83 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            r10++;
            bigInteger4 = bigInteger2;
            r72 = r232;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger5 = bigInteger3;
            r12 = 0;
        }
        return bigInteger.longValue();
    }

    private void procedure_B(int r17, int r18, BigInteger[] bigIntegerArr) {
        int r12 = r17;
        while (true) {
            if (r12 >= 0 && r12 <= 65536) {
                break;
            } else {
                r12 = this.init_random.nextInt() / 32768;
            }
        }
        int r42 = r18;
        while (true) {
            if (r42 >= 0 && r42 <= 65536 && r42 / 2 != 0) {
                break;
            } else {
                r42 = (this.init_random.nextInt() / 32768) + 1;
            }
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(r42));
        BigInteger bigInteger2 = new BigInteger("19381");
        int r13 = procedure_A(r12, r42, bigIntegerArr2, 256);
        char c10 = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int r14 = procedure_A(r13, r42, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(r14));
        while (true) {
            int r15 = 0;
            while (r15 < 64) {
                int r22 = r15 + 1;
                bigIntegerArr3[r22] = bigIntegerArr3[r15].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                r15 = r22;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int r32 = 0; r32 < 64; r32++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[r32].multiply(TWO.pow(r32 * 16)));
            }
            bigIntegerArr3[c10] = bigIntegerArr3[64];
            BigInteger bigInteger6 = TWO;
            int r122 = 1024;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            BigInteger bigInteger8 = bigIntegerAdd;
            int r16 = 0;
            while (true) {
                long j10 = r16;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j10)));
                BigInteger bigInteger9 = ONE;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger9);
                BigInteger bigInteger10 = TWO;
                if (bigIntegerAdd2.compareTo(bigInteger10.pow(r122)) == 1) {
                    break;
                }
                if (bigInteger10.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j10))), bigIntegerAdd2).compareTo(bigInteger9) == 0 && bigInteger10.modPow(bigInteger3.multiply(bigInteger8.add(BigInteger.valueOf(j10))), bigIntegerAdd2).compareTo(bigInteger9) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    r16 += 2;
                    r122 = 1024;
                }
            }
            c10 = 0;
        }
    }

    private void procedure_Bb(long j10, long j11, BigInteger[] bigIntegerArr) {
        long jNextInt = j10;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= 4294967296L) {
                break;
            } else {
                jNextInt = this.init_random.nextInt() * 2;
            }
        }
        long jNextInt2 = j11;
        while (true) {
            if (jNextInt2 >= 0 && jNextInt2 <= 4294967296L && jNextInt2 / 2 != 0) {
                break;
            } else {
                jNextInt2 = (this.init_random.nextInt() * 2) + 1;
            }
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long j12 = jNextInt2;
        long jProcedure_Aa = procedure_Aa(jNextInt, j12, bigIntegerArr2, 256);
        char c10 = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long jProcedure_Aa2 = procedure_Aa(jProcedure_Aa, j12, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(jProcedure_Aa2));
        while (true) {
            int r02 = 0;
            while (r02 < 32) {
                int r22 = r02 + 1;
                bigIntegerArr3[r22] = bigIntegerArr3[r02].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                r02 = r22;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int r23 = 0; r23 < 32; r23++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[r23].multiply(TWO.pow(r23 * 32)));
            }
            bigIntegerArr3[c10] = bigIntegerArr3[32];
            BigInteger bigInteger6 = TWO;
            int r11 = 1024;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            int r12 = 0;
            while (true) {
                long j13 = r12;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j13)));
                BigInteger bigInteger8 = ONE;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger8);
                BigInteger bigInteger9 = TWO;
                if (bigIntegerAdd2.compareTo(bigInteger9.pow(r11)) == 1) {
                    break;
                }
                if (bigInteger9.modPow(bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j13))), bigIntegerAdd2).compareTo(bigInteger8) == 0 && bigInteger9.modPow(bigInteger3.multiply(bigIntegerAdd.add(BigInteger.valueOf(j13))), bigIntegerAdd2).compareTo(bigInteger8) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    r12 += 2;
                    r11 = 1024;
                }
            }
            c10 = 0;
        }
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerSubtract = bigInteger.subtract(ONE);
        BigInteger bigIntegerDivide = bigIntegerSubtract.divide(bigInteger2);
        int r12 = bigInteger.bitLength();
        while (true) {
            BigInteger bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(r12, this.init_random);
            BigInteger bigInteger3 = ONE;
            if (bigIntegerCreateRandomBigInteger.compareTo(bigInteger3) > 0 && bigIntegerCreateRandomBigInteger.compareTo(bigIntegerSubtract) < 0) {
                BigInteger bigIntegerModPow = bigIntegerCreateRandomBigInteger.modPow(bigIntegerDivide, bigInteger);
                if (bigIntegerModPow.compareTo(bigInteger3) != 0) {
                    return bigIntegerModPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.typeproc == 1) {
            int r12 = this.init_random.nextInt();
            int r52 = this.init_random.nextInt();
            int r6 = this.size;
            if (r6 == 512) {
                procedure_A(r12, r52, bigIntegerArr, 512);
            } else {
                if (r6 != 1024) {
                    throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
                }
                procedure_B(r12, r52, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(r12, r52));
        }
        long jNextLong = this.init_random.nextLong();
        long jNextLong2 = this.init_random.nextLong();
        int r13 = this.size;
        if (r13 == 512) {
            procedure_Aa(jNextLong, jNextLong2, bigIntegerArr, 512);
        } else {
            if (r13 != 1024) {
                throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
            }
            procedure_Bb(jNextLong, jNextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(jNextLong, jNextLong2));
    }

    public void init(int r12, int r22, SecureRandom secureRandom) {
        this.size = r12;
        this.typeproc = r22;
        this.init_random = secureRandom;
    }
}
