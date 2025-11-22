package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;

/* loaded from: classes2.dex */
public class NTRUSigningKeyGenerationParameters extends KeyGenerationParameters implements Cloneable {
    public static final int BASIS_TYPE_STANDARD = 0;
    public static final int BASIS_TYPE_TRANSPOSE = 1;
    public static final int KEY_GEN_ALG_FLOAT = 1;
    public static final int KEY_GEN_ALG_RESULTANT = 0;
    public int B;
    public int N;
    public int basisType;
    double beta;
    public double betaSq;
    int bitsF;

    /* renamed from: d, reason: collision with root package name */
    public int f12034d;

    /* renamed from: d1, reason: collision with root package name */
    public int f12035d1;

    /* renamed from: d2, reason: collision with root package name */
    public int f12036d2;

    /* renamed from: d3, reason: collision with root package name */
    public int f12037d3;
    public Digest hashAlg;
    public int keyGenAlg;
    double keyNormBound;
    public double keyNormBoundSq;
    double normBound;
    public double normBoundSq;
    public int polyType;
    public boolean primeCheck;

    /* renamed from: q, reason: collision with root package name */
    public int f12038q;
    public int signFailTolerance;
    public boolean sparse;
    public static final NTRUSigningKeyGenerationParameters APR2011_439 = new NTRUSigningKeyGenerationParameters(439, 2048, 146, 1, 1, 0.165d, 490.0d, 280.0d, false, true, 0, new SHA256Digest());
    public static final NTRUSigningKeyGenerationParameters APR2011_439_PROD = new NTRUSigningKeyGenerationParameters(439, 2048, 9, 8, 5, 1, 1, 0.165d, 490.0d, 280.0d, false, true, 0, new SHA256Digest());
    public static final NTRUSigningKeyGenerationParameters APR2011_743 = new NTRUSigningKeyGenerationParameters(743, 2048, 248, 1, 1, 0.127d, 560.0d, 360.0d, true, false, 0, new SHA512Digest());
    public static final NTRUSigningKeyGenerationParameters APR2011_743_PROD = new NTRUSigningKeyGenerationParameters(743, 2048, 11, 11, 15, 1, 1, 0.127d, 560.0d, 360.0d, true, false, 0, new SHA512Digest());
    public static final NTRUSigningKeyGenerationParameters TEST157 = new NTRUSigningKeyGenerationParameters(157, 256, 29, 1, 1, 0.38d, 200.0d, 80.0d, false, false, 0, new SHA256Digest());
    public static final NTRUSigningKeyGenerationParameters TEST157_PROD = new NTRUSigningKeyGenerationParameters(157, 256, 5, 5, 8, 1, 1, 0.38d, 200.0d, 80.0d, false, false, 0, new SHA256Digest());

    public NTRUSigningKeyGenerationParameters(int r42, int r52, int r6, int r72, int r82, double d10, double d11, double d12, boolean z10, boolean z11, int r17, Digest digest) {
        super(CryptoServicesRegistrar.getSecureRandom(), r42);
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.N = r42;
        this.f12038q = r52;
        this.f12034d = r6;
        this.B = r72;
        this.basisType = r82;
        this.beta = d10;
        this.normBound = d11;
        this.keyNormBound = d12;
        this.primeCheck = z10;
        this.sparse = z11;
        this.keyGenAlg = r17;
        this.hashAlg = digest;
        this.polyType = 0;
        init();
    }

    public NTRUSigningKeyGenerationParameters(int r42, int r52, int r6, int r72, int r82, int r92, int r10, double d10, double d11, double d12, boolean z10, boolean z11, int r19, Digest digest) {
        super(CryptoServicesRegistrar.getSecureRandom(), r42);
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.N = r42;
        this.f12038q = r52;
        this.f12035d1 = r6;
        this.f12036d2 = r72;
        this.f12037d3 = r82;
        this.B = r92;
        this.basisType = r10;
        this.beta = d10;
        this.normBound = d11;
        this.keyNormBound = d12;
        this.primeCheck = z10;
        this.sparse = z11;
        this.keyGenAlg = r19;
        this.hashAlg = digest;
        this.polyType = 1;
        init();
    }

    public NTRUSigningKeyGenerationParameters(InputStream inputStream) throws IOException {
        Digest sHA256Digest;
        super(CryptoServicesRegistrar.getSecureRandom(), 0);
        this.signFailTolerance = 100;
        this.bitsF = 6;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.N = dataInputStream.readInt();
        this.f12038q = dataInputStream.readInt();
        this.f12034d = dataInputStream.readInt();
        this.f12035d1 = dataInputStream.readInt();
        this.f12036d2 = dataInputStream.readInt();
        this.f12037d3 = dataInputStream.readInt();
        this.B = dataInputStream.readInt();
        this.basisType = dataInputStream.readInt();
        this.beta = dataInputStream.readDouble();
        this.normBound = dataInputStream.readDouble();
        this.keyNormBound = dataInputStream.readDouble();
        this.signFailTolerance = dataInputStream.readInt();
        this.primeCheck = dataInputStream.readBoolean();
        this.sparse = dataInputStream.readBoolean();
        this.bitsF = dataInputStream.readInt();
        this.keyGenAlg = dataInputStream.read();
        String utf = dataInputStream.readUTF();
        if (!"SHA-512".equals(utf)) {
            sHA256Digest = "SHA-256".equals(utf) ? new SHA256Digest() : sHA256Digest;
            this.polyType = dataInputStream.read();
            init();
        }
        sHA256Digest = new SHA512Digest();
        this.hashAlg = sHA256Digest;
        this.polyType = dataInputStream.read();
        init();
    }

    private void init() {
        double d10 = this.beta;
        this.betaSq = d10 * d10;
        double d11 = this.normBound;
        this.normBoundSq = d11 * d11;
        double d12 = this.keyNormBound;
        this.keyNormBoundSq = d12 * d12;
    }

    public NTRUSigningKeyGenerationParameters clone() {
        return this.polyType == 0 ? new NTRUSigningKeyGenerationParameters(this.N, this.f12038q, this.f12034d, this.B, this.basisType, this.beta, this.normBound, this.keyNormBound, this.primeCheck, this.sparse, this.keyGenAlg, this.hashAlg) : new NTRUSigningKeyGenerationParameters(this.N, this.f12038q, this.f12035d1, this.f12036d2, this.f12037d3, this.B, this.basisType, this.beta, this.normBound, this.keyNormBound, this.primeCheck, this.sparse, this.keyGenAlg, this.hashAlg);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUSigningKeyGenerationParameters)) {
            return false;
        }
        NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters = (NTRUSigningKeyGenerationParameters) obj;
        if (this.B != nTRUSigningKeyGenerationParameters.B || this.N != nTRUSigningKeyGenerationParameters.N || this.basisType != nTRUSigningKeyGenerationParameters.basisType || Double.doubleToLongBits(this.beta) != Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.beta) || Double.doubleToLongBits(this.betaSq) != Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.betaSq) || this.bitsF != nTRUSigningKeyGenerationParameters.bitsF || this.f12034d != nTRUSigningKeyGenerationParameters.f12034d || this.f12035d1 != nTRUSigningKeyGenerationParameters.f12035d1 || this.f12036d2 != nTRUSigningKeyGenerationParameters.f12036d2 || this.f12037d3 != nTRUSigningKeyGenerationParameters.f12037d3) {
            return false;
        }
        Digest digest = this.hashAlg;
        if (digest == null) {
            if (nTRUSigningKeyGenerationParameters.hashAlg != null) {
                return false;
            }
        } else if (!digest.getAlgorithmName().equals(nTRUSigningKeyGenerationParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return this.keyGenAlg == nTRUSigningKeyGenerationParameters.keyGenAlg && Double.doubleToLongBits(this.keyNormBound) == Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.keyNormBound) && Double.doubleToLongBits(this.keyNormBoundSq) == Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.keyNormBoundSq) && Double.doubleToLongBits(this.normBound) == Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.normBound) && Double.doubleToLongBits(this.normBoundSq) == Double.doubleToLongBits(nTRUSigningKeyGenerationParameters.normBoundSq) && this.polyType == nTRUSigningKeyGenerationParameters.polyType && this.primeCheck == nTRUSigningKeyGenerationParameters.primeCheck && this.f12038q == nTRUSigningKeyGenerationParameters.f12038q && this.signFailTolerance == nTRUSigningKeyGenerationParameters.signFailTolerance && this.sparse == nTRUSigningKeyGenerationParameters.sparse;
    }

    public NTRUSigningParameters getSigningParameters() {
        return new NTRUSigningParameters(this.N, this.f12038q, this.f12034d, this.B, this.beta, this.normBound, this.hashAlg);
    }

    public int hashCode() {
        int r02 = ((((this.B + 31) * 31) + this.N) * 31) + this.basisType;
        long jDoubleToLongBits = Double.doubleToLongBits(this.beta);
        int r03 = (r02 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.betaSq);
        int r04 = ((((((((((((r03 * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31) + this.bitsF) * 31) + this.f12034d) * 31) + this.f12035d1) * 31) + this.f12036d2) * 31) + this.f12037d3) * 31;
        Digest digest = this.hashAlg;
        int r05 = ((r04 + (digest == null ? 0 : digest.getAlgorithmName().hashCode())) * 31) + this.keyGenAlg;
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.keyNormBound);
        int r06 = (r05 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.keyNormBoundSq);
        int r07 = (r06 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.normBound);
        int r08 = (r07 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.normBoundSq);
        return (((((((((((r08 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)))) * 31) + this.polyType) * 31) + (this.primeCheck ? 1231 : 1237)) * 31) + this.f12038q) * 31) + this.signFailTolerance) * 31) + (this.sparse ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int r32;
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        StringBuilder sb3 = new StringBuilder("SignatureParameters(N=" + this.N + " q=" + this.f12038q);
        if (this.polyType == 0) {
            sb2 = new StringBuilder(" polyType=SIMPLE d=");
            r32 = this.f12034d;
        } else {
            sb2 = new StringBuilder(" polyType=PRODUCT d1=");
            sb2.append(this.f12035d1);
            sb2.append(" d2=");
            sb2.append(this.f12036d2);
            sb2.append(" d3=");
            r32 = this.f12037d3;
        }
        sb2.append(r32);
        sb3.append(sb2.toString());
        sb3.append(" B=" + this.B + " basisType=" + this.basisType + " beta=" + decimalFormat.format(this.beta) + " normBound=" + decimalFormat.format(this.normBound) + " keyNormBound=" + decimalFormat.format(this.keyNormBound) + " prime=" + this.primeCheck + " sparse=" + this.sparse + " keyGenAlg=" + this.keyGenAlg + " hashAlg=" + this.hashAlg + ")");
        return sb3.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.N);
        dataOutputStream.writeInt(this.f12038q);
        dataOutputStream.writeInt(this.f12034d);
        dataOutputStream.writeInt(this.f12035d1);
        dataOutputStream.writeInt(this.f12036d2);
        dataOutputStream.writeInt(this.f12037d3);
        dataOutputStream.writeInt(this.B);
        dataOutputStream.writeInt(this.basisType);
        dataOutputStream.writeDouble(this.beta);
        dataOutputStream.writeDouble(this.normBound);
        dataOutputStream.writeDouble(this.keyNormBound);
        dataOutputStream.writeInt(this.signFailTolerance);
        dataOutputStream.writeBoolean(this.primeCheck);
        dataOutputStream.writeBoolean(this.sparse);
        dataOutputStream.writeInt(this.bitsF);
        dataOutputStream.write(this.keyGenAlg);
        dataOutputStream.writeUTF(this.hashAlg.getAlgorithmName());
        dataOutputStream.write(this.polyType);
    }
}
