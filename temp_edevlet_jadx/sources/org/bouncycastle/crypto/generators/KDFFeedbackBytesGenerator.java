package org.bouncycastle.crypto.generators;

import androidx.browser.browseractions.a;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFFeedbackParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class KDFFeedbackBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputData;
    private int generatedBytes;

    /* renamed from: h, reason: collision with root package name */
    private final int f11546h;
    private byte[] ios;
    private byte[] iv;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11547k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFFeedbackBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f11546h = macSize;
        this.f11547k = new byte[macSize];
    }

    private void generateNext() throws IllegalStateException, DataLengthException {
        if (this.generatedBytes == 0) {
            Mac mac = this.prf;
            byte[] bArr = this.iv;
            mac.update(bArr, 0, bArr.length);
        } else {
            Mac mac2 = this.prf;
            byte[] bArr2 = this.f11547k;
            mac2.update(bArr2, 0, bArr2.length);
        }
        if (this.useCounter) {
            int r02 = (this.generatedBytes / this.f11546h) + 1;
            byte[] bArr3 = this.ios;
            int length = bArr3.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr3[0] = (byte) (r02 >>> 24);
                    }
                    bArr3[bArr3.length - 3] = (byte) (r02 >>> 16);
                }
                bArr3[bArr3.length - 2] = (byte) (r02 >>> 8);
            }
            bArr3[bArr3.length - 1] = (byte) r02;
            this.prf.update(bArr3, 0, bArr3.length);
        }
        Mac mac3 = this.prf;
        byte[] bArr4 = this.fixedInputData;
        mac3.update(bArr4, 0, bArr4.length);
        this.prf.doFinal(this.f11547k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r02 = this.generatedBytes;
        int r12 = r02 + r72;
        if (r12 < 0 || r12 >= this.maxSizeExcl) {
            throw new DataLengthException(a.b(new StringBuilder("Current KDFCTR may only be used for "), this.maxSizeExcl, " bytes"));
        }
        if (r02 % this.f11546h == 0) {
            generateNext();
        }
        int r03 = this.generatedBytes;
        int r13 = this.f11546h;
        int r22 = r03 % r13;
        int r04 = Math.min(r13 - (r03 % r13), r72);
        System.arraycopy(this.f11547k, r22, bArr, r6, r04);
        this.generatedBytes += r04;
        int r14 = r72 - r04;
        while (true) {
            r6 += r04;
            if (r14 <= 0) {
                return r72;
            }
            generateNext();
            r04 = Math.min(this.f11546h, r14);
            System.arraycopy(this.f11547k, 0, bArr, r6, r04);
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
        if (!(derivationParameters instanceof KDFFeedbackParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFFeedbackParameters kDFFeedbackParameters = (KDFFeedbackParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFFeedbackParameters.getKI()));
        this.fixedInputData = kDFFeedbackParameters.getFixedInputData();
        int r6 = kDFFeedbackParameters.getR();
        this.ios = new byte[r6 / 8];
        int r22 = Integer.MAX_VALUE;
        if (kDFFeedbackParameters.useCounter()) {
            BigInteger bigIntegerMultiply = TWO.pow(r6).multiply(BigInteger.valueOf(this.f11546h));
            if (bigIntegerMultiply.compareTo(INTEGER_MAX) != 1) {
                r22 = bigIntegerMultiply.intValue();
            }
        }
        this.maxSizeExcl = r22;
        this.iv = kDFFeedbackParameters.getIV();
        this.useCounter = kDFFeedbackParameters.useCounter();
        this.generatedBytes = 0;
    }
}
