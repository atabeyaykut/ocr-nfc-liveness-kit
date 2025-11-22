package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.util.DigestFactory;

/* loaded from: classes2.dex */
public class NTRUEncryptionParameters implements Cloneable {
    public int N;
    public int bufferLenBits;
    int bufferLenTrits;

    /* renamed from: c, reason: collision with root package name */
    public int f12026c;

    /* renamed from: db, reason: collision with root package name */
    public int f12027db;

    /* renamed from: df, reason: collision with root package name */
    public int f12028df;
    public int df1;
    public int df2;
    public int df3;

    /* renamed from: dg, reason: collision with root package name */
    public int f12029dg;
    public int dm0;
    public int dr;
    public int dr1;
    public int dr2;
    public int dr3;
    public boolean fastFp;
    public Digest hashAlg;
    public boolean hashSeed;
    int llen;
    public int maxMsgLenBytes;
    public int minCallsMask;
    public int minCallsR;
    public byte[] oid;
    public int pkLen;
    public int polyType;

    /* renamed from: q, reason: collision with root package name */
    public int f12030q;
    public boolean sparse;

    public NTRUEncryptionParameters(int r12, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92, int r10, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest) {
        this.N = r12;
        this.f12030q = r22;
        this.df1 = r32;
        this.df2 = r42;
        this.df3 = r52;
        this.f12027db = r72;
        this.dm0 = r6;
        this.f12026c = r82;
        this.minCallsR = r92;
        this.minCallsMask = r10;
        this.hashSeed = z10;
        this.oid = bArr;
        this.sparse = z11;
        this.fastFp = z12;
        this.polyType = 1;
        this.hashAlg = digest;
        init();
    }

    public NTRUEncryptionParameters(int r12, int r22, int r32, int r42, int r52, int r6, int r72, int r82, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest) {
        this.N = r12;
        this.f12030q = r22;
        this.f12028df = r32;
        this.f12027db = r52;
        this.dm0 = r42;
        this.f12026c = r6;
        this.minCallsR = r72;
        this.minCallsMask = r82;
        this.hashSeed = z10;
        this.oid = bArr;
        this.sparse = z11;
        this.fastFp = z12;
        this.polyType = 0;
        this.hashAlg = digest;
        init();
    }

    public NTRUEncryptionParameters(InputStream inputStream) throws IOException {
        Digest sHA256Digest;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.N = dataInputStream.readInt();
        this.f12030q = dataInputStream.readInt();
        this.f12028df = dataInputStream.readInt();
        this.df1 = dataInputStream.readInt();
        this.df2 = dataInputStream.readInt();
        this.df3 = dataInputStream.readInt();
        this.f12027db = dataInputStream.readInt();
        this.dm0 = dataInputStream.readInt();
        this.f12026c = dataInputStream.readInt();
        this.minCallsR = dataInputStream.readInt();
        this.minCallsMask = dataInputStream.readInt();
        this.hashSeed = dataInputStream.readBoolean();
        byte[] bArr = new byte[3];
        this.oid = bArr;
        dataInputStream.read(bArr);
        this.sparse = dataInputStream.readBoolean();
        this.fastFp = dataInputStream.readBoolean();
        this.polyType = dataInputStream.read();
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
        this.dr = this.f12028df;
        this.dr1 = this.df1;
        this.dr2 = this.df2;
        this.dr3 = this.df3;
        int r02 = this.N;
        this.f12029dg = r02 / 3;
        this.llen = 1;
        int r32 = this.f12027db;
        this.maxMsgLenBytes = (((((r02 * 3) / 2) / 8) - 1) - (r32 / 8)) - 1;
        this.bufferLenBits = (((((r02 * 3) / 2) + 7) / 8) * 8) + 1;
        this.bufferLenTrits = r02 - 1;
        this.pkLen = r32;
    }

    public NTRUEncryptionParameters clone() {
        return this.polyType == 0 ? new NTRUEncryptionParameters(this.N, this.f12030q, this.f12028df, this.dm0, this.f12027db, this.f12026c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg)) : new NTRUEncryptionParameters(this.N, this.f12030q, this.df1, this.df2, this.df3, this.dm0, this.f12027db, this.f12026c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUEncryptionParameters nTRUEncryptionParameters = (NTRUEncryptionParameters) obj;
        if (this.N != nTRUEncryptionParameters.N || this.bufferLenBits != nTRUEncryptionParameters.bufferLenBits || this.bufferLenTrits != nTRUEncryptionParameters.bufferLenTrits || this.f12026c != nTRUEncryptionParameters.f12026c || this.f12027db != nTRUEncryptionParameters.f12027db || this.f12028df != nTRUEncryptionParameters.f12028df || this.df1 != nTRUEncryptionParameters.df1 || this.df2 != nTRUEncryptionParameters.df2 || this.df3 != nTRUEncryptionParameters.df3 || this.f12029dg != nTRUEncryptionParameters.f12029dg || this.dm0 != nTRUEncryptionParameters.dm0 || this.dr != nTRUEncryptionParameters.dr || this.dr1 != nTRUEncryptionParameters.dr1 || this.dr2 != nTRUEncryptionParameters.dr2 || this.dr3 != nTRUEncryptionParameters.dr3 || this.fastFp != nTRUEncryptionParameters.fastFp) {
            return false;
        }
        Digest digest = this.hashAlg;
        if (digest == null) {
            if (nTRUEncryptionParameters.hashAlg != null) {
                return false;
            }
        } else if (!digest.getAlgorithmName().equals(nTRUEncryptionParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return this.hashSeed == nTRUEncryptionParameters.hashSeed && this.llen == nTRUEncryptionParameters.llen && this.maxMsgLenBytes == nTRUEncryptionParameters.maxMsgLenBytes && this.minCallsMask == nTRUEncryptionParameters.minCallsMask && this.minCallsR == nTRUEncryptionParameters.minCallsR && Arrays.equals(this.oid, nTRUEncryptionParameters.oid) && this.pkLen == nTRUEncryptionParameters.pkLen && this.polyType == nTRUEncryptionParameters.polyType && this.f12030q == nTRUEncryptionParameters.f12030q && this.sparse == nTRUEncryptionParameters.sparse;
    }

    public int getMaxMessageLength() {
        return this.maxMsgLenBytes;
    }

    public int hashCode() {
        int r02 = (((((((((((((((((((((((((((((((this.N + 31) * 31) + this.bufferLenBits) * 31) + this.bufferLenTrits) * 31) + this.f12026c) * 31) + this.f12027db) * 31) + this.f12028df) * 31) + this.df1) * 31) + this.df2) * 31) + this.df3) * 31) + this.f12029dg) * 31) + this.dm0) * 31) + this.dr) * 31) + this.dr1) * 31) + this.dr2) * 31) + this.dr3) * 31) + (this.fastFp ? 1231 : 1237)) * 31;
        Digest digest = this.hashAlg;
        return ((((((((Arrays.hashCode(this.oid) + ((((((((((((r02 + (digest == null ? 0 : digest.getAlgorithmName().hashCode())) * 31) + (this.hashSeed ? 1231 : 1237)) * 31) + this.llen) * 31) + this.maxMsgLenBytes) * 31) + this.minCallsMask) * 31) + this.minCallsR) * 31)) * 31) + this.pkLen) * 31) + this.polyType) * 31) + this.f12030q) * 31) + (this.sparse ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int r22;
        StringBuilder sb3 = new StringBuilder("EncryptionParameters(N=" + this.N + " q=" + this.f12030q);
        if (this.polyType == 0) {
            sb2 = new StringBuilder(" polyType=SIMPLE df=");
            r22 = this.f12028df;
        } else {
            sb2 = new StringBuilder(" polyType=PRODUCT df1=");
            sb2.append(this.df1);
            sb2.append(" df2=");
            sb2.append(this.df2);
            sb2.append(" df3=");
            r22 = this.df3;
        }
        sb2.append(r22);
        sb3.append(sb2.toString());
        sb3.append(" dm0=" + this.dm0 + " db=" + this.f12027db + " c=" + this.f12026c + " minCallsR=" + this.minCallsR + " minCallsMask=" + this.minCallsMask + " hashSeed=" + this.hashSeed + " hashAlg=" + this.hashAlg + " oid=" + Arrays.toString(this.oid) + " sparse=" + this.sparse + ")");
        return sb3.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.N);
        dataOutputStream.writeInt(this.f12030q);
        dataOutputStream.writeInt(this.f12028df);
        dataOutputStream.writeInt(this.df1);
        dataOutputStream.writeInt(this.df2);
        dataOutputStream.writeInt(this.df3);
        dataOutputStream.writeInt(this.f12027db);
        dataOutputStream.writeInt(this.dm0);
        dataOutputStream.writeInt(this.f12026c);
        dataOutputStream.writeInt(this.minCallsR);
        dataOutputStream.writeInt(this.minCallsMask);
        dataOutputStream.writeBoolean(this.hashSeed);
        dataOutputStream.write(this.oid);
        dataOutputStream.writeBoolean(this.sparse);
        dataOutputStream.writeBoolean(this.fastFp);
        dataOutputStream.write(this.polyType);
        dataOutputStream.writeUTF(this.hashAlg.getAlgorithmName());
    }
}
