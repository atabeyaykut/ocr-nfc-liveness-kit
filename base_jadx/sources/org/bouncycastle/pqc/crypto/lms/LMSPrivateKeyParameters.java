package org.bouncycastle.pqc.crypto.lms;

import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
public class LMSPrivateKeyParameters extends LMSKeyParameters implements LMSContextBasedSigner {
    private static CacheKey T1;
    private static CacheKey[] internedKeys;
    private final byte[] I;
    private final byte[] masterSecret;
    private final int maxCacheR;
    private final int maxQ;
    private final LMOtsParameters otsParameters;
    private final LMSigParameters parameters;
    private LMSPublicKeyParameters publicKey;

    /* renamed from: q, reason: collision with root package name */
    private int f11917q;
    private final Map<CacheKey, byte[]> tCache;
    private final Digest tDigest;

    public static class CacheKey {
        private final int index;

        public CacheKey(int r12) {
            this.index = r12;
        }

        public boolean equals(Object obj) {
            return (obj instanceof CacheKey) && ((CacheKey) obj).index == this.index;
        }

        public int hashCode() {
            return this.index;
        }
    }

    static {
        CacheKey cacheKey = new CacheKey(1);
        T1 = cacheKey;
        CacheKey[] cacheKeyArr = new CacheKey[129];
        internedKeys = cacheKeyArr;
        cacheKeyArr[1] = cacheKey;
        int r02 = 2;
        while (true) {
            CacheKey[] cacheKeyArr2 = internedKeys;
            if (r02 >= cacheKeyArr2.length) {
                return;
            }
            cacheKeyArr2[r02] = new CacheKey(r02);
            r02++;
        }
    }

    private LMSPrivateKeyParameters(LMSPrivateKeyParameters lMSPrivateKeyParameters, int r52, int r6) {
        super(true);
        LMSigParameters lMSigParameters = lMSPrivateKeyParameters.parameters;
        this.parameters = lMSigParameters;
        this.otsParameters = lMSPrivateKeyParameters.otsParameters;
        this.f11917q = r52;
        this.I = lMSPrivateKeyParameters.I;
        this.maxQ = r6;
        this.masterSecret = lMSPrivateKeyParameters.masterSecret;
        this.maxCacheR = 1 << lMSigParameters.getH();
        this.tCache = lMSPrivateKeyParameters.tCache;
        this.tDigest = DigestUtil.getDigest(lMSigParameters);
        this.publicKey = lMSPrivateKeyParameters.publicKey;
    }

    public LMSPrivateKeyParameters(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int r42, byte[] bArr, int r6, byte[] bArr2) {
        super(true);
        this.parameters = lMSigParameters;
        this.otsParameters = lMOtsParameters;
        this.f11917q = r42;
        this.I = Arrays.clone(bArr);
        this.maxQ = r6;
        this.masterSecret = Arrays.clone(bArr2);
        this.maxCacheR = 1 << (lMSigParameters.getH() + 1);
        this.tCache = new WeakHashMap();
        this.tDigest = DigestUtil.getDigest(lMSigParameters);
    }

    private byte[] calcT(int r6) {
        int h10 = 1 << getSigParameters().getH();
        if (r6 >= h10) {
            LmsUtils.byteArray(getI(), this.tDigest);
            LmsUtils.u32str(r6, this.tDigest);
            LmsUtils.u16str((short) -32126, this.tDigest);
            LmsUtils.byteArray(LM_OTS.lms_ots_generatePublicKey(getOtsParameters(), getI(), r6 - h10, getMasterSecret()), this.tDigest);
            byte[] bArr = new byte[this.tDigest.getDigestSize()];
            this.tDigest.doFinal(bArr, 0);
            return bArr;
        }
        int r02 = r6 * 2;
        byte[] bArrFindT = findT(r02);
        byte[] bArrFindT2 = findT(r02 + 1);
        LmsUtils.byteArray(getI(), this.tDigest);
        LmsUtils.u32str(r6, this.tDigest);
        LmsUtils.u16str((short) -31869, this.tDigest);
        LmsUtils.byteArray(bArrFindT, this.tDigest);
        LmsUtils.byteArray(bArrFindT2, this.tDigest);
        byte[] bArr2 = new byte[this.tDigest.getDigestSize()];
        this.tDigest.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] findT(CacheKey cacheKey) {
        synchronized (this.tCache) {
            byte[] bArr = this.tCache.get(cacheKey);
            if (bArr != null) {
                return bArr;
            }
            byte[] bArrCalcT = calcT(cacheKey.index);
            this.tCache.put(cacheKey, bArrCalcT);
            return bArrCalcT;
        }
    }

    public static LMSPrivateKeyParameters getInstance(Object obj) throws Throwable {
        if (obj instanceof LMSPrivateKeyParameters) {
            return (LMSPrivateKeyParameters) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("expected version 0 lms private key");
            }
            LMSigParameters parametersForType = LMSigParameters.getParametersForType(dataInputStream.readInt());
            LMOtsParameters parametersForType2 = LMOtsParameters.getParametersForType(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            int r42 = dataInputStream.readInt();
            int r6 = dataInputStream.readInt();
            int r02 = dataInputStream.readInt();
            if (r02 < 0) {
                throw new IllegalStateException("secret length less than zero");
            }
            if (r02 <= dataInputStream.available()) {
                byte[] bArr2 = new byte[r02];
                dataInputStream.readFully(bArr2);
                return new LMSPrivateKeyParameters(parametersForType, parametersForType2, r42, bArr, r6, bArr2);
            }
            throw new IOException("secret length exceeded " + dataInputStream.available());
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                LMSPrivateKeyParameters lMSPrivateKeyParameters = getInstance(dataInputStream3);
                dataInputStream3.close();
                return lMSPrivateKeyParameters;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static LMSPrivateKeyParameters getInstance(byte[] bArr, byte[] bArr2) throws Throwable {
        LMSPrivateKeyParameters lMSPrivateKeyParameters = getInstance(bArr);
        lMSPrivateKeyParameters.publicKey = LMSPublicKeyParameters.getInstance(bArr2);
        return lMSPrivateKeyParameters;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LMSPrivateKeyParameters lMSPrivateKeyParameters = (LMSPrivateKeyParameters) obj;
        if (this.f11917q != lMSPrivateKeyParameters.f11917q || this.maxQ != lMSPrivateKeyParameters.maxQ || !Arrays.areEqual(this.I, lMSPrivateKeyParameters.I)) {
            return false;
        }
        LMSigParameters lMSigParameters = this.parameters;
        if (lMSigParameters == null ? lMSPrivateKeyParameters.parameters != null : !lMSigParameters.equals(lMSPrivateKeyParameters.parameters)) {
            return false;
        }
        LMOtsParameters lMOtsParameters = this.otsParameters;
        if (lMOtsParameters == null ? lMSPrivateKeyParameters.otsParameters == null : lMOtsParameters.equals(lMSPrivateKeyParameters.otsParameters)) {
            return Arrays.areEqual(this.masterSecret, lMSPrivateKeyParameters.masterSecret);
        }
        return false;
    }

    public LMSPrivateKeyParameters extractKeyShard(int r42) {
        LMSPrivateKeyParameters lMSPrivateKeyParameters;
        synchronized (this) {
            int r02 = this.f11917q;
            if (r02 + r42 >= this.maxQ) {
                throw new IllegalArgumentException("usageCount exceeds usages remaining");
            }
            lMSPrivateKeyParameters = new LMSPrivateKeyParameters(this, r02, r02 + r42);
            this.f11917q += r42;
        }
        return lMSPrivateKeyParameters;
    }

    public byte[] findT(int r32) {
        if (r32 >= this.maxCacheR) {
            return calcT(r32);
        }
        CacheKey[] cacheKeyArr = internedKeys;
        return findT(r32 < cacheKeyArr.length ? cacheKeyArr[r32] : new CacheKey(r32));
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public LMSContext generateLMSContext() {
        int h10 = getSigParameters().getH();
        int index = getIndex();
        LMOtsPrivateKey nextOtsPrivateKey = getNextOtsPrivateKey();
        int r42 = (1 << h10) + index;
        byte[][] bArr = new byte[h10][];
        for (int r52 = 0; r52 < h10; r52++) {
            bArr[r52] = findT((r42 / (1 << r52)) ^ 1);
        }
        return nextOtsPrivateKey.getSignatureContext(getSigParameters(), bArr);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public byte[] generateSignature(LMSContext lMSContext) {
        try {
            return LMS.generateSign(lMSContext).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException(a.c(e10, new StringBuilder("unable to encode signature: ")), e10);
        }
    }

    public LMOtsPrivateKey getCurrentOTSKey() {
        LMOtsPrivateKey lMOtsPrivateKey;
        synchronized (this) {
            int r02 = this.f11917q;
            if (r02 >= this.maxQ) {
                throw new ExhaustedPrivateKeyException("ots private keys expired");
            }
            lMOtsPrivateKey = new LMOtsPrivateKey(this.otsParameters, this.I, r02, this.masterSecret);
        }
        return lMOtsPrivateKey;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSKeyParameters, org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(0).u32str(this.parameters.getType()).u32str(this.otsParameters.getType()).bytes(this.I).u32str(this.f11917q).u32str(this.maxQ).u32str(this.masterSecret.length).bytes(this.masterSecret).build();
    }

    public byte[] getI() {
        return Arrays.clone(this.I);
    }

    public synchronized int getIndex() {
        return this.f11917q;
    }

    public byte[] getMasterSecret() {
        return Arrays.clone(this.masterSecret);
    }

    public LMOtsPrivateKey getNextOtsPrivateKey() {
        LMOtsPrivateKey lMOtsPrivateKey;
        synchronized (this) {
            int r02 = this.f11917q;
            if (r02 >= this.maxQ) {
                throw new ExhaustedPrivateKeyException("ots private key exhausted");
            }
            lMOtsPrivateKey = new LMOtsPrivateKey(this.otsParameters, this.I, r02, this.masterSecret);
            incIndex();
        }
        return lMOtsPrivateKey;
    }

    public LMOtsParameters getOtsParameters() {
        return this.otsParameters;
    }

    public LMSPublicKeyParameters getPublicKey() {
        LMSPublicKeyParameters lMSPublicKeyParameters;
        synchronized (this) {
            if (this.publicKey == null) {
                this.publicKey = new LMSPublicKeyParameters(this.parameters, this.otsParameters, findT(T1), this.I);
            }
            lMSPublicKeyParameters = this.publicKey;
        }
        return lMSPublicKeyParameters;
    }

    public LMSigParameters getSigParameters() {
        return this.parameters;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public long getUsagesRemaining() {
        return this.maxQ - getIndex();
    }

    public int hashCode() {
        int r12 = (Arrays.hashCode(this.I) + (this.f11917q * 31)) * 31;
        LMSigParameters lMSigParameters = this.parameters;
        int r13 = (r12 + (lMSigParameters != null ? lMSigParameters.hashCode() : 0)) * 31;
        LMOtsParameters lMOtsParameters = this.otsParameters;
        return Arrays.hashCode(this.masterSecret) + ((((r13 + (lMOtsParameters != null ? lMOtsParameters.hashCode() : 0)) * 31) + this.maxQ) * 31);
    }

    public synchronized void incIndex() {
        this.f11917q++;
    }
}
