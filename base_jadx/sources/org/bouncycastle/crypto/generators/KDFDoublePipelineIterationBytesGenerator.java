package org.bouncycastle.crypto.generators;

import androidx.browser.browseractions.a;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class KDFDoublePipelineIterationBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: a, reason: collision with root package name */
    private byte[] f11543a;
    private byte[] fixedInputData;
    private int generatedBytes;

    /* renamed from: h, reason: collision with root package name */
    private final int f11544h;
    private byte[] ios;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11545k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFDoublePipelineIterationBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f11544h = macSize;
        this.f11543a = new byte[macSize];
        this.f11545k = new byte[macSize];
    }

    private void generateNext() throws IllegalStateException, DataLengthException {
        if (this.generatedBytes == 0) {
            Mac mac = this.prf;
            byte[] bArr = this.fixedInputData;
            mac.update(bArr, 0, bArr.length);
            this.prf.doFinal(this.f11543a, 0);
        } else {
            Mac mac2 = this.prf;
            byte[] bArr2 = this.f11543a;
            mac2.update(bArr2, 0, bArr2.length);
            this.prf.doFinal(this.f11543a, 0);
        }
        Mac mac3 = this.prf;
        byte[] bArr3 = this.f11543a;
        mac3.update(bArr3, 0, bArr3.length);
        if (this.useCounter) {
            int r02 = (this.generatedBytes / this.f11544h) + 1;
            byte[] bArr4 = this.ios;
            int length = bArr4.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr4[0] = (byte) (r02 >>> 24);
                    }
                    bArr4[bArr4.length - 3] = (byte) (r02 >>> 16);
                }
                bArr4[bArr4.length - 2] = (byte) (r02 >>> 8);
            }
            bArr4[bArr4.length - 1] = (byte) r02;
            this.prf.update(bArr4, 0, bArr4.length);
        }
        Mac mac4 = this.prf;
        byte[] bArr5 = this.fixedInputData;
        mac4.update(bArr5, 0, bArr5.length);
        this.prf.doFinal(this.f11545k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r02 = this.generatedBytes;
        int r12 = r02 + r72;
        if (r12 < 0 || r12 >= this.maxSizeExcl) {
            throw new DataLengthException(a.b(new StringBuilder("Current KDFCTR may only be used for "), this.maxSizeExcl, " bytes"));
        }
        if (r02 % this.f11544h == 0) {
            generateNext();
        }
        int r03 = this.generatedBytes;
        int r13 = this.f11544h;
        int r22 = r03 % r13;
        int r04 = Math.min(r13 - (r03 % r13), r72);
        System.arraycopy(this.f11545k, r22, bArr, r6, r04);
        this.generatedBytes += r04;
        int r14 = r72 - r04;
        while (true) {
            r6 += r04;
            if (r14 <= 0) {
                return r72;
            }
            generateNext();
            r04 = Math.min(this.f11544h, r14);
            System.arraycopy(this.f11545k, 0, bArr, r6, r04);
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
        if (!(derivationParameters instanceof KDFDoublePipelineIterationParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFDoublePipelineIterationParameters kDFDoublePipelineIterationParameters = (KDFDoublePipelineIterationParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFDoublePipelineIterationParameters.getKI()));
        this.fixedInputData = kDFDoublePipelineIterationParameters.getFixedInputData();
        int r6 = kDFDoublePipelineIterationParameters.getR();
        this.ios = new byte[r6 / 8];
        int r22 = Integer.MAX_VALUE;
        if (kDFDoublePipelineIterationParameters.useCounter()) {
            BigInteger bigIntegerMultiply = TWO.pow(r6).multiply(BigInteger.valueOf(this.f11544h));
            if (bigIntegerMultiply.compareTo(INTEGER_MAX) != 1) {
                r22 = bigIntegerMultiply.intValue();
            }
        }
        this.maxSizeExcl = r22;
        this.useCounter = kDFDoublePipelineIterationParameters.useCounter();
        this.generatedBytes = 0;
    }
}
