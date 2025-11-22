package org.bouncycastle.crypto.generators;

import androidx.browser.browseractions.a;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFCounterParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class KDFCounterBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputDataCtrPrefix;
    private byte[] fixedInputData_afterCtr;
    private int generatedBytes;

    /* renamed from: h, reason: collision with root package name */
    private final int f11541h;
    private byte[] ios;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11542k;
    private int maxSizeExcl;
    private final Mac prf;

    public KDFCounterBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f11541h = macSize;
        this.f11542k = new byte[macSize];
    }

    private void generateNext() throws IllegalStateException, DataLengthException {
        int r02 = (this.generatedBytes / this.f11541h) + 1;
        byte[] bArr = this.ios;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                if (length != 3) {
                    if (length != 4) {
                        throw new IllegalStateException("Unsupported size of counter i");
                    }
                    bArr[0] = (byte) (r02 >>> 24);
                }
                bArr[bArr.length - 3] = (byte) (r02 >>> 16);
            }
            bArr[bArr.length - 2] = (byte) (r02 >>> 8);
        }
        bArr[bArr.length - 1] = (byte) r02;
        Mac mac = this.prf;
        byte[] bArr2 = this.fixedInputDataCtrPrefix;
        mac.update(bArr2, 0, bArr2.length);
        Mac mac2 = this.prf;
        byte[] bArr3 = this.ios;
        mac2.update(bArr3, 0, bArr3.length);
        Mac mac3 = this.prf;
        byte[] bArr4 = this.fixedInputData_afterCtr;
        mac3.update(bArr4, 0, bArr4.length);
        this.prf.doFinal(this.f11542k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r02 = this.generatedBytes;
        int r12 = r02 + r72;
        if (r12 < 0 || r12 >= this.maxSizeExcl) {
            throw new DataLengthException(a.b(new StringBuilder("Current KDFCTR may only be used for "), this.maxSizeExcl, " bytes"));
        }
        if (r02 % this.f11541h == 0) {
            generateNext();
        }
        int r03 = this.generatedBytes;
        int r13 = this.f11541h;
        int r22 = r03 % r13;
        int r04 = Math.min(r13 - (r03 % r13), r72);
        System.arraycopy(this.f11542k, r22, bArr, r6, r04);
        this.generatedBytes += r04;
        int r14 = r72 - r04;
        while (true) {
            r6 += r04;
            if (r14 <= 0) {
                return r72;
            }
            generateNext();
            r04 = Math.min(this.f11541h, r14);
            System.arraycopy(this.f11542k, 0, bArr, r6, r04);
            this.generatedBytes += r04;
            r14 -= r04;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.prf;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) throws IllegalArgumentException {
        if (!(derivationParameters instanceof KDFCounterParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFCounterParameters kDFCounterParameters = (KDFCounterParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFCounterParameters.getKI()));
        this.fixedInputDataCtrPrefix = kDFCounterParameters.getFixedInputDataCounterPrefix();
        this.fixedInputData_afterCtr = kDFCounterParameters.getFixedInputDataCounterSuffix();
        int r6 = kDFCounterParameters.getR();
        this.ios = new byte[r6 / 8];
        BigInteger bigIntegerMultiply = TWO.pow(r6).multiply(BigInteger.valueOf(this.f11541h));
        this.maxSizeExcl = bigIntegerMultiply.compareTo(INTEGER_MAX) == 1 ? Integer.MAX_VALUE : bigIntegerMultiply.intValue();
        this.generatedBytes = 0;
    }
}
