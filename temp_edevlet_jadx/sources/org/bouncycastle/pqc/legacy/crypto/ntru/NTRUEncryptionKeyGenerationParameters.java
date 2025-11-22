package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Arrays;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.util.DigestFactory;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class NTRUEncryptionKeyGenerationParameters extends KeyGenerationParameters implements Cloneable {
    public int N;
    public int bufferLenBits;
    int bufferLenTrits;

    /* renamed from: c, reason: collision with root package name */
    public int f12021c;

    /* renamed from: db, reason: collision with root package name */
    public int f12022db;

    /* renamed from: df, reason: collision with root package name */
    public int f12023df;
    public int df1;
    public int df2;
    public int df3;

    /* renamed from: dg, reason: collision with root package name */
    public int f12024dg;
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
    public int f12025q;
    public boolean sparse;
    public static final NTRUEncryptionKeyGenerationParameters EES1087EP2 = new NTRUEncryptionKeyGenerationParameters(1087, 2048, 120, 120, 256, 13, 25, 14, true, new byte[]{0, 6, 3}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters EES1171EP1 = new NTRUEncryptionKeyGenerationParameters(1171, 2048, 106, 106, 256, 13, 20, 15, true, new byte[]{0, 6, 4}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters EES1499EP1 = new NTRUEncryptionKeyGenerationParameters(1499, 2048, 79, 79, 256, 13, 17, 19, true, new byte[]{0, 6, 5}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_439 = new NTRUEncryptionKeyGenerationParameters(439, 2048, 146, ISO781611.BIOMETRIC_SUBTYPE_TAG, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, false, new SHA256Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_439_FAST = new NTRUEncryptionKeyGenerationParameters(439, 2048, 9, 8, 5, ISO781611.BIOMETRIC_SUBTYPE_TAG, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, true, new SHA256Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_743 = new NTRUEncryptionKeyGenerationParameters(743, 2048, 248, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_743_FAST = new NTRUEncryptionKeyGenerationParameters(743, 2048, 11, 11, 15, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, true, new SHA512Digest());

    public NTRUEncryptionKeyGenerationParameters(int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest) {
        this(r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, z10, bArr, z11, z12, digest, null);
    }

    public NTRUEncryptionKeyGenerationParameters(int r42, int r52, int r6, int r72, int r82, int r92, int r10, int r11, int r12, int r13, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest, SecureRandom secureRandom) {
        super(secureRandom != null ? secureRandom : CryptoServicesRegistrar.getSecureRandom(), r10);
        this.N = r42;
        this.f12025q = r52;
        this.df1 = r6;
        this.df2 = r72;
        this.df3 = r82;
        this.f12022db = r10;
        this.dm0 = r92;
        this.f12021c = r11;
        this.minCallsR = r12;
        this.minCallsMask = r13;
        this.hashSeed = z10;
        this.oid = bArr;
        this.sparse = z11;
        this.fastFp = z12;
        this.polyType = 1;
        this.hashAlg = digest;
        init();
    }

    public NTRUEncryptionKeyGenerationParameters(int r16, int r17, int r18, int r19, int r20, int r21, int r22, int r23, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest) {
        this(r16, r17, r18, r19, r20, r21, r22, r23, z10, bArr, z11, z12, digest, null);
    }

    public NTRUEncryptionKeyGenerationParameters(int r12, int r22, int r32, int r42, int r52, int r6, int r72, int r82, boolean z10, byte[] bArr, boolean z11, boolean z12, Digest digest, SecureRandom secureRandom) {
        super(secureRandom == null ? CryptoServicesRegistrar.getSecureRandom() : secureRandom, r52);
        this.N = r12;
        this.f12025q = r22;
        this.f12023df = r32;
        this.f12022db = r52;
        this.dm0 = r42;
        this.f12021c = r6;
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

    public NTRUEncryptionKeyGenerationParameters(InputStream inputStream) throws IOException {
        Digest sHA256Digest;
        super(CryptoServicesRegistrar.getSecureRandom(), -1);
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.N = dataInputStream.readInt();
        this.f12025q = dataInputStream.readInt();
        this.f12023df = dataInputStream.readInt();
        this.df1 = dataInputStream.readInt();
        this.df2 = dataInputStream.readInt();
        this.df3 = dataInputStream.readInt();
        this.f12022db = dataInputStream.readInt();
        this.dm0 = dataInputStream.readInt();
        this.f12021c = dataInputStream.readInt();
        this.minCallsR = dataInputStream.readInt();
        this.minCallsMask = dataInputStream.readInt();
        this.hashSeed = dataInputStream.readBoolean();
        byte[] bArr = new byte[3];
        this.oid = bArr;
        dataInputStream.readFully(bArr);
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
        this.dr = this.f12023df;
        this.dr1 = this.df1;
        this.dr2 = this.df2;
        this.dr3 = this.df3;
        int r02 = this.N;
        this.f12024dg = r02 / 3;
        this.llen = 1;
        int r32 = this.f12022db;
        this.maxMsgLenBytes = (((((r02 * 3) / 2) / 8) - 1) - (r32 / 8)) - 1;
        this.bufferLenBits = (((((r02 * 3) / 2) + 7) / 8) * 8) + 1;
        this.bufferLenTrits = r02 - 1;
        this.pkLen = r32;
    }

    public NTRUEncryptionKeyGenerationParameters clone() {
        return this.polyType == 0 ? new NTRUEncryptionKeyGenerationParameters(this.N, this.f12025q, this.f12023df, this.dm0, this.f12022db, this.f12021c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg)) : new NTRUEncryptionKeyGenerationParameters(this.N, this.f12025q, this.df1, this.df2, this.df3, this.dm0, this.f12022db, this.f12021c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUEncryptionKeyGenerationParameters nTRUEncryptionKeyGenerationParameters = (NTRUEncryptionKeyGenerationParameters) obj;
        if (this.N != nTRUEncryptionKeyGenerationParameters.N || this.bufferLenBits != nTRUEncryptionKeyGenerationParameters.bufferLenBits || this.bufferLenTrits != nTRUEncryptionKeyGenerationParameters.bufferLenTrits || this.f12021c != nTRUEncryptionKeyGenerationParameters.f12021c || this.f12022db != nTRUEncryptionKeyGenerationParameters.f12022db || this.f12023df != nTRUEncryptionKeyGenerationParameters.f12023df || this.df1 != nTRUEncryptionKeyGenerationParameters.df1 || this.df2 != nTRUEncryptionKeyGenerationParameters.df2 || this.df3 != nTRUEncryptionKeyGenerationParameters.df3 || this.f12024dg != nTRUEncryptionKeyGenerationParameters.f12024dg || this.dm0 != nTRUEncryptionKeyGenerationParameters.dm0 || this.dr != nTRUEncryptionKeyGenerationParameters.dr || this.dr1 != nTRUEncryptionKeyGenerationParameters.dr1 || this.dr2 != nTRUEncryptionKeyGenerationParameters.dr2 || this.dr3 != nTRUEncryptionKeyGenerationParameters.dr3 || this.fastFp != nTRUEncryptionKeyGenerationParameters.fastFp) {
            return false;
        }
        Digest digest = this.hashAlg;
        if (digest == null) {
            if (nTRUEncryptionKeyGenerationParameters.hashAlg != null) {
                return false;
            }
        } else if (!digest.getAlgorithmName().equals(nTRUEncryptionKeyGenerationParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return this.hashSeed == nTRUEncryptionKeyGenerationParameters.hashSeed && this.llen == nTRUEncryptionKeyGenerationParameters.llen && this.maxMsgLenBytes == nTRUEncryptionKeyGenerationParameters.maxMsgLenBytes && this.minCallsMask == nTRUEncryptionKeyGenerationParameters.minCallsMask && this.minCallsR == nTRUEncryptionKeyGenerationParameters.minCallsR && Arrays.equals(this.oid, nTRUEncryptionKeyGenerationParameters.oid) && this.pkLen == nTRUEncryptionKeyGenerationParameters.pkLen && this.polyType == nTRUEncryptionKeyGenerationParameters.polyType && this.f12025q == nTRUEncryptionKeyGenerationParameters.f12025q && this.sparse == nTRUEncryptionKeyGenerationParameters.sparse;
    }

    public NTRUEncryptionParameters getEncryptionParameters() {
        return this.polyType == 0 ? new NTRUEncryptionParameters(this.N, this.f12025q, this.f12023df, this.dm0, this.f12022db, this.f12021c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg)) : new NTRUEncryptionParameters(this.N, this.f12025q, this.df1, this.df2, this.df3, this.dm0, this.f12022db, this.f12021c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, DigestFactory.cloneDigest(this.hashAlg));
    }

    public int getMaxMessageLength() {
        return this.maxMsgLenBytes;
    }

    public int hashCode() {
        int r02 = (((((((((((((((((((((((((((((((this.N + 31) * 31) + this.bufferLenBits) * 31) + this.bufferLenTrits) * 31) + this.f12021c) * 31) + this.f12022db) * 31) + this.f12023df) * 31) + this.df1) * 31) + this.df2) * 31) + this.df3) * 31) + this.f12024dg) * 31) + this.dm0) * 31) + this.dr) * 31) + this.dr1) * 31) + this.dr2) * 31) + this.dr3) * 31) + (this.fastFp ? 1231 : 1237)) * 31;
        Digest digest = this.hashAlg;
        return ((((((((Arrays.hashCode(this.oid) + ((((((((((((r02 + (digest == null ? 0 : digest.getAlgorithmName().hashCode())) * 31) + (this.hashSeed ? 1231 : 1237)) * 31) + this.llen) * 31) + this.maxMsgLenBytes) * 31) + this.minCallsMask) * 31) + this.minCallsR) * 31)) * 31) + this.pkLen) * 31) + this.polyType) * 31) + this.f12025q) * 31) + (this.sparse ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int r22;
        StringBuilder sb3 = new StringBuilder("EncryptionParameters(N=" + this.N + " q=" + this.f12025q);
        if (this.polyType == 0) {
            sb2 = new StringBuilder(" polyType=SIMPLE df=");
            r22 = this.f12023df;
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
        sb3.append(" dm0=" + this.dm0 + " db=" + this.f12022db + " c=" + this.f12021c + " minCallsR=" + this.minCallsR + " minCallsMask=" + this.minCallsMask + " hashSeed=" + this.hashSeed + " hashAlg=" + this.hashAlg + " oid=" + Arrays.toString(this.oid) + " sparse=" + this.sparse + ")");
        return sb3.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.N);
        dataOutputStream.writeInt(this.f12025q);
        dataOutputStream.writeInt(this.f12023df);
        dataOutputStream.writeInt(this.df1);
        dataOutputStream.writeInt(this.df2);
        dataOutputStream.writeInt(this.df3);
        dataOutputStream.writeInt(this.f12022db);
        dataOutputStream.writeInt(this.dm0);
        dataOutputStream.writeInt(this.f12021c);
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
