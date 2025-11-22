package org.bouncycastle.util.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class FixedSecureRandom extends SecureRandom {
    private static final boolean isAndroidStyle;
    private static final boolean isClasspathStyle;
    private static final boolean isRegularStyle;
    private byte[] _data;
    private int _index;
    private static java.math.BigInteger REGULAR = new java.math.BigInteger("01020304ffffffff0506070811111111", 16);
    private static java.math.BigInteger ANDROID = new java.math.BigInteger("1111111105060708ffffffff01020304", 16);
    private static java.math.BigInteger CLASSPATH = new java.math.BigInteger("3020104ffffffff05060708111111", 16);

    public static class BigInteger extends Source {
        public BigInteger(int r12, String str) {
            super(FixedSecureRandom.expandToBitLength(r12, Hex.decode(str)));
        }

        public BigInteger(int r12, byte[] bArr) {
            super(FixedSecureRandom.expandToBitLength(r12, bArr));
        }

        public BigInteger(String str) {
            this(Hex.decode(str));
        }

        public BigInteger(byte[] bArr) {
            super(bArr);
        }
    }

    public static class Data extends Source {
        public Data(byte[] bArr) {
            super(bArr);
        }
    }

    public static class DummyProvider extends Provider {
        public DummyProvider() {
            super("BCFIPS_FIXED_RNG", 1.0d, "BCFIPS Fixed Secure Random Provider");
        }
    }

    public static class RandomChecker extends SecureRandom {
        byte[] data;
        int index;

        public RandomChecker() {
            super(null, new DummyProvider());
            this.data = Hex.decode("01020304ffffffff0506070811111111");
            this.index = 0;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void nextBytes(byte[] bArr) {
            System.arraycopy(this.data, this.index, bArr, 0, bArr.length);
            this.index += bArr.length;
        }
    }

    public static class Source {
        byte[] data;

        public Source(byte[] bArr) {
            this.data = bArr;
        }
    }

    static {
        java.math.BigInteger bigInteger = new java.math.BigInteger(128, new RandomChecker());
        java.math.BigInteger bigInteger2 = new java.math.BigInteger(120, new RandomChecker());
        isAndroidStyle = bigInteger.equals(ANDROID);
        isRegularStyle = bigInteger.equals(REGULAR);
        isClasspathStyle = bigInteger2.equals(CLASSPATH);
    }

    public FixedSecureRandom(byte[] bArr) {
        this(new Source[]{new Data(bArr)});
    }

    public FixedSecureRandom(Source[] sourceArr) throws IOException {
        super(null, new DummyProvider());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int r42 = 0;
        if (!isRegularStyle) {
            if (!isAndroidStyle) {
                throw new IllegalStateException("Unrecognized BigInteger implementation");
            }
            for (int r12 = 0; r12 != sourceArr.length; r12++) {
                try {
                    Source source = sourceArr[r12];
                    if (source instanceof BigInteger) {
                        byte[] bArr = source.data;
                        int length = bArr.length - (bArr.length % 4);
                        int r72 = 0;
                        while (r72 < length) {
                            r72 += 4;
                            byteArrayOutputStream.write(bArr, bArr.length - r72, 4);
                        }
                        if (bArr.length - length != 0) {
                            for (int r73 = 0; r73 != 4 - (bArr.length - length); r73++) {
                                byteArrayOutputStream.write(0);
                            }
                        }
                        for (int r74 = 0; r74 != bArr.length - length; r74++) {
                            byteArrayOutputStream.write(bArr[length + r74]);
                        }
                    } else {
                        byteArrayOutputStream.write(source.data);
                    }
                } catch (IOException unused) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else if (isClasspathStyle) {
            while (r42 != sourceArr.length) {
                try {
                    Source source2 = sourceArr[r42];
                    if (source2 instanceof BigInteger) {
                        byte[] bArr2 = source2.data;
                        int length2 = bArr2.length - (bArr2.length % 4);
                        for (int length3 = (bArr2.length - length2) - 1; length3 >= 0; length3--) {
                            byteArrayOutputStream.write(bArr2[length3]);
                        }
                        for (int length4 = bArr2.length - length2; length4 < bArr2.length; length4 += 4) {
                            byteArrayOutputStream.write(bArr2, length4, 4);
                        }
                    } else {
                        byteArrayOutputStream.write(source2.data);
                    }
                    r42++;
                } catch (IOException unused2) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else {
            while (r42 != sourceArr.length) {
                try {
                    byteArrayOutputStream.write(sourceArr[r42].data);
                    r42++;
                } catch (IOException unused3) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        }
        this._data = byteArrayOutputStream.toByteArray();
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(buildDataArray(bArr));
    }

    private static Data[] buildDataArray(byte[][] bArr) {
        Data[] dataArr = new Data[bArr.length];
        for (int r12 = 0; r12 != bArr.length; r12++) {
            dataArr[r12] = new Data(bArr[r12]);
        }
        return dataArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] expandToBitLength(int r42, byte[] bArr) {
        int r43;
        int r44;
        int r02 = (r42 + 7) / 8;
        if (r02 <= bArr.length) {
            if (isAndroidStyle && r42 < bArr.length * 8 && (r43 = r42 % 8) != 0) {
                Pack.intToBigEndian(Pack.bigEndianToInt(bArr, 0) << (8 - r43), bArr, 0);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[r02];
        System.arraycopy(bArr, 0, bArr2, r02 - bArr.length, bArr.length);
        if (isAndroidStyle && (r44 = r42 % 8) != 0) {
            Pack.intToBigEndian(Pack.bigEndianToInt(bArr2, 0) << (8 - r44), bArr2, 0);
        }
        return bArr2;
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int r12 = this._index;
        this._index = r12 + 1;
        return bArr[r12] & 255;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int r12) {
        byte[] bArr = new byte[r12];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        return (nextValue() << 24) | 0 | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
