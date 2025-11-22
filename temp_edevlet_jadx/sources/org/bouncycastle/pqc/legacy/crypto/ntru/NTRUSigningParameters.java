package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;

/* loaded from: classes2.dex */
public class NTRUSigningParameters implements Cloneable {
    public int B;
    public int N;
    double beta;
    public double betaSq;
    int bitsF;

    /* renamed from: d, reason: collision with root package name */
    public int f12039d;

    /* renamed from: d1, reason: collision with root package name */
    public int f12040d1;

    /* renamed from: d2, reason: collision with root package name */
    public int f12041d2;

    /* renamed from: d3, reason: collision with root package name */
    public int f12042d3;
    public Digest hashAlg;
    double normBound;
    public double normBoundSq;

    /* renamed from: q, reason: collision with root package name */
    public int f12043q;
    public int signFailTolerance;

    public NTRUSigningParameters(int r22, int r32, int r42, int r52, double d10, double d11, Digest digest) {
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.N = r22;
        this.f12043q = r32;
        this.f12039d = r42;
        this.B = r52;
        this.beta = d10;
        this.normBound = d11;
        this.hashAlg = digest;
        init();
    }

    public NTRUSigningParameters(int r12, int r22, int r32, int r42, int r52, int r6, double d10, double d11, double d12, Digest digest) {
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.N = r12;
        this.f12043q = r22;
        this.f12040d1 = r32;
        this.f12041d2 = r42;
        this.f12042d3 = r52;
        this.B = r6;
        this.beta = d10;
        this.normBound = d11;
        this.hashAlg = digest;
        init();
    }

    public NTRUSigningParameters(InputStream inputStream) throws IOException {
        Digest sHA256Digest;
        this.signFailTolerance = 100;
        this.bitsF = 6;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.N = dataInputStream.readInt();
        this.f12043q = dataInputStream.readInt();
        this.f12039d = dataInputStream.readInt();
        this.f12040d1 = dataInputStream.readInt();
        this.f12041d2 = dataInputStream.readInt();
        this.f12042d3 = dataInputStream.readInt();
        this.B = dataInputStream.readInt();
        this.beta = dataInputStream.readDouble();
        this.normBound = dataInputStream.readDouble();
        this.signFailTolerance = dataInputStream.readInt();
        this.bitsF = dataInputStream.readInt();
        String utf = dataInputStream.readUTF();
        if (!"SHA-512".equals(utf)) {
            sHA256Digest = "SHA-256".equals(utf) ? new SHA256Digest() : sHA256Digest;
            init();
        }
        sHA256Digest = new SHA512Digest();
        this.hashAlg = sHA256Digest;
        init();
    }

    private void init() {
        double d10 = this.beta;
        this.betaSq = d10 * d10;
        double d11 = this.normBound;
        this.normBoundSq = d11 * d11;
    }

    public NTRUSigningParameters clone() {
        return new NTRUSigningParameters(this.N, this.f12043q, this.f12039d, this.B, this.beta, this.normBound, this.hashAlg);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUSigningParameters)) {
            return false;
        }
        NTRUSigningParameters nTRUSigningParameters = (NTRUSigningParameters) obj;
        if (this.B != nTRUSigningParameters.B || this.N != nTRUSigningParameters.N || Double.doubleToLongBits(this.beta) != Double.doubleToLongBits(nTRUSigningParameters.beta) || Double.doubleToLongBits(this.betaSq) != Double.doubleToLongBits(nTRUSigningParameters.betaSq) || this.bitsF != nTRUSigningParameters.bitsF || this.f12039d != nTRUSigningParameters.f12039d || this.f12040d1 != nTRUSigningParameters.f12040d1 || this.f12041d2 != nTRUSigningParameters.f12041d2 || this.f12042d3 != nTRUSigningParameters.f12042d3) {
            return false;
        }
        Digest digest = this.hashAlg;
        if (digest == null) {
            if (nTRUSigningParameters.hashAlg != null) {
                return false;
            }
        } else if (!digest.getAlgorithmName().equals(nTRUSigningParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return Double.doubleToLongBits(this.normBound) == Double.doubleToLongBits(nTRUSigningParameters.normBound) && Double.doubleToLongBits(this.normBoundSq) == Double.doubleToLongBits(nTRUSigningParameters.normBoundSq) && this.f12043q == nTRUSigningParameters.f12043q && this.signFailTolerance == nTRUSigningParameters.signFailTolerance;
    }

    public int hashCode() {
        int r02 = ((this.B + 31) * 31) + this.N;
        long jDoubleToLongBits = Double.doubleToLongBits(this.beta);
        int r03 = (r02 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.betaSq);
        int r04 = ((((((((((((r03 * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31) + this.bitsF) * 31) + this.f12039d) * 31) + this.f12040d1) * 31) + this.f12041d2) * 31) + this.f12042d3) * 31;
        Digest digest = this.hashAlg;
        int r05 = r04 + (digest == null ? 0 : digest.getAlgorithmName().hashCode());
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.normBound);
        int r06 = (r05 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.normBoundSq);
        return (((((r06 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)))) * 31) + this.f12043q) * 31) + this.signFailTolerance;
    }

    public String toString() {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        StringBuilder sb2 = new StringBuilder("SignatureParameters(N=" + this.N + " q=" + this.f12043q);
        sb2.append(" B=" + this.B + " beta=" + decimalFormat.format(this.beta) + " normBound=" + decimalFormat.format(this.normBound) + " hashAlg=" + this.hashAlg + ")");
        return sb2.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.N);
        dataOutputStream.writeInt(this.f12043q);
        dataOutputStream.writeInt(this.f12039d);
        dataOutputStream.writeInt(this.f12040d1);
        dataOutputStream.writeInt(this.f12041d2);
        dataOutputStream.writeInt(this.f12042d3);
        dataOutputStream.writeInt(this.B);
        dataOutputStream.writeDouble(this.beta);
        dataOutputStream.writeDouble(this.normBound);
        dataOutputStream.writeInt(this.signFailTolerance);
        dataOutputStream.writeInt(this.bitsF);
        dataOutputStream.writeUTF(this.hashAlg.getAlgorithmName());
    }
}
