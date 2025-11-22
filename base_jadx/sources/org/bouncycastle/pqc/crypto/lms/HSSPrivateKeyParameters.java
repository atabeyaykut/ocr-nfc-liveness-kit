package org.bouncycastle.pqc.crypto.lms;

import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
public class HSSPrivateKeyParameters extends LMSKeyParameters implements LMSContextBasedSigner {
    private long index;
    private final long indexLimit;
    private final boolean isShard;
    private List<LMSPrivateKeyParameters> keys;

    /* renamed from: l, reason: collision with root package name */
    private final int f11910l;
    private HSSPublicKeyParameters publicKey;
    private List<LMSSignature> sig;

    public HSSPrivateKeyParameters(int r32, List<LMSPrivateKeyParameters> list, List<LMSSignature> list2, long j10, long j11) throws IllegalArgumentException {
        super(true);
        this.index = 0L;
        this.f11910l = r32;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j10;
        this.indexLimit = j11;
        this.isShard = false;
        resetKeyToIndex();
    }

    private HSSPrivateKeyParameters(int r32, List<LMSPrivateKeyParameters> list, List<LMSSignature> list2, long j10, long j11, boolean z10) {
        super(true);
        this.index = 0L;
        this.f11910l = r32;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j10;
        this.indexLimit = j11;
        this.isShard = z10;
    }

    public static HSSPrivateKeyParameters getInstance(Object obj) throws Throwable {
        if (obj instanceof HSSPrivateKeyParameters) {
            return (HSSPrivateKeyParameters) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("unknown version for hss private key");
            }
            int r32 = dataInputStream.readInt();
            long j10 = dataInputStream.readLong();
            long j11 = dataInputStream.readLong();
            boolean z10 = dataInputStream.readBoolean();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int r12 = 0; r12 < r32; r12++) {
                arrayList.add(LMSPrivateKeyParameters.getInstance(obj));
            }
            for (int r02 = 0; r02 < r32 - 1; r02++) {
                arrayList2.add(LMSSignature.getInstance(obj));
            }
            return new HSSPrivateKeyParameters(r32, arrayList, arrayList2, j10, j11, z10);
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
                HSSPrivateKeyParameters hSSPrivateKeyParameters = getInstance(dataInputStream3);
                dataInputStream3.close();
                return hSSPrivateKeyParameters;
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

    public static HSSPrivateKeyParameters getInstance(byte[] bArr, byte[] bArr2) throws Throwable {
        HSSPrivateKeyParameters hSSPrivateKeyParameters = getInstance(bArr);
        hSSPrivateKeyParameters.publicKey = HSSPublicKeyParameters.getInstance(bArr2);
        return hSSPrivateKeyParameters;
    }

    private static HSSPrivateKeyParameters makeCopy(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        try {
            return getInstance(hSSPrivateKeyParameters.getEncoded());
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return makeCopy(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HSSPrivateKeyParameters hSSPrivateKeyParameters = (HSSPrivateKeyParameters) obj;
        if (this.f11910l == hSSPrivateKeyParameters.f11910l && this.isShard == hSSPrivateKeyParameters.isShard && this.indexLimit == hSSPrivateKeyParameters.indexLimit && this.index == hSSPrivateKeyParameters.index && this.keys.equals(hSSPrivateKeyParameters.keys)) {
            return this.sig.equals(hSSPrivateKeyParameters.sig);
        }
        return false;
    }

    public HSSPrivateKeyParameters extractKeyShard(int r14) {
        HSSPrivateKeyParameters hSSPrivateKeyParametersMakeCopy;
        synchronized (this) {
            long j10 = r14;
            if (getUsagesRemaining() < j10) {
                throw new IllegalArgumentException("usageCount exceeds usages remaining in current leaf");
            }
            long j11 = this.index;
            this.index = j10 + j11;
            hSSPrivateKeyParametersMakeCopy = makeCopy(new HSSPrivateKeyParameters(this.f11910l, new ArrayList(getKeys()), new ArrayList(getSig()), j11, j11 + j10, true));
            resetKeyToIndex();
        }
        return hSSPrivateKeyParametersMakeCopy;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public LMSContext generateLMSContext() {
        LMSPrivateKeyParameters lMSPrivateKeyParameters;
        LMSSignedPubKey[] lMSSignedPubKeyArr;
        int l5 = getL();
        synchronized (this) {
            HSS.rangeTestKeys(this);
            List<LMSPrivateKeyParameters> keys = getKeys();
            List<LMSSignature> sig = getSig();
            int r02 = l5 - 1;
            lMSPrivateKeyParameters = getKeys().get(r02);
            lMSSignedPubKeyArr = new LMSSignedPubKey[r02];
            int r52 = 0;
            while (r52 < r02) {
                int r82 = r52 + 1;
                lMSSignedPubKeyArr[r52] = new LMSSignedPubKey(sig.get(r52), keys.get(r82).getPublicKey());
                r52 = r82;
            }
            incIndex();
        }
        return lMSPrivateKeyParameters.generateLMSContext().withSignedPublicKeys(lMSSignedPubKeyArr);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public byte[] generateSignature(LMSContext lMSContext) {
        try {
            return HSS.generateSignature(getL(), lMSContext).getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException(a.c(e10, new StringBuilder("unable to encode signature: ")), e10);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSKeyParameters, org.bouncycastle.util.Encodable
    public synchronized byte[] getEncoded() throws IOException {
        Composer composerBool;
        composerBool = Composer.compose().u32str(0).u32str(this.f11910l).u64str(this.index).u64str(this.indexLimit).bool(this.isShard);
        Iterator<LMSPrivateKeyParameters> it = this.keys.iterator();
        while (it.hasNext()) {
            composerBool.bytes(it.next());
        }
        Iterator<LMSSignature> it2 = this.sig.iterator();
        while (it2.hasNext()) {
            composerBool.bytes(it2.next());
        }
        return composerBool.build();
    }

    public synchronized long getIndex() {
        return this.index;
    }

    public long getIndexLimit() {
        return this.indexLimit;
    }

    public synchronized List<LMSPrivateKeyParameters> getKeys() {
        return this.keys;
    }

    public int getL() {
        return this.f11910l;
    }

    public synchronized LMSParameters[] getLMSParameters() {
        LMSParameters[] lMSParametersArr;
        int size = this.keys.size();
        lMSParametersArr = new LMSParameters[size];
        for (int r22 = 0; r22 < size; r22++) {
            LMSPrivateKeyParameters lMSPrivateKeyParameters = this.keys.get(r22);
            lMSParametersArr[r22] = new LMSParameters(lMSPrivateKeyParameters.getSigParameters(), lMSPrivateKeyParameters.getOtsParameters());
        }
        return lMSParametersArr;
    }

    public synchronized HSSPublicKeyParameters getPublicKey() {
        return new HSSPublicKeyParameters(this.f11910l, getRootKey().getPublicKey());
    }

    public LMSPrivateKeyParameters getRootKey() {
        return this.keys.get(0);
    }

    public synchronized List<LMSSignature> getSig() {
        return this.sig;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public long getUsagesRemaining() {
        return this.indexLimit - this.index;
    }

    public int hashCode() {
        int r02 = (this.sig.hashCode() + ((this.keys.hashCode() + (((this.f11910l * 31) + (this.isShard ? 1 : 0)) * 31)) * 31)) * 31;
        long j10 = this.indexLimit;
        int r03 = (r02 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.index;
        return r03 + ((int) (j11 ^ (j11 >>> 32)));
    }

    public synchronized void incIndex() {
        this.index++;
    }

    public boolean isShard() {
        return this.isShard;
    }

    public void replaceConsumedKey(int r82) {
        int r12 = r82 - 1;
        LMOtsPrivateKey currentOTSKey = this.keys.get(r12).getCurrentOTSKey();
        int n10 = currentOTSKey.getParameter().getN();
        SeedDerive derivationFunction = currentOTSKey.getDerivationFunction();
        derivationFunction.setJ(-2);
        byte[] bArr = new byte[n10];
        derivationFunction.deriveSeed(bArr, true);
        byte[] bArr2 = new byte[n10];
        derivationFunction.deriveSeed(bArr2, false);
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr2, 0, bArr3, 0, 16);
        ArrayList arrayList = new ArrayList(this.keys);
        LMSPrivateKeyParameters lMSPrivateKeyParameters = this.keys.get(r82);
        arrayList.set(r82, LMS.generateKeys(lMSPrivateKeyParameters.getSigParameters(), lMSPrivateKeyParameters.getOtsParameters(), 0, bArr3, bArr));
        ArrayList arrayList2 = new ArrayList(this.sig);
        arrayList2.set(r12, LMS.generateSign((LMSPrivateKeyParameters) arrayList.get(r12), ((LMSPrivateKeyParameters) arrayList.get(r82)).getPublicKey().toByteArray()));
        this.keys = Collections.unmodifiableList(arrayList);
        this.sig = Collections.unmodifiableList(arrayList2);
    }

    public void resetKeyToIndex() throws IllegalArgumentException {
        boolean z10;
        List<LMSPrivateKeyParameters> keys = getKeys();
        int size = keys.size();
        long[] jArr = new long[size];
        long index = getIndex();
        for (int size2 = keys.size() - 1; size2 >= 0; size2--) {
            LMSigParameters sigParameters = keys.get(size2).getSigParameters();
            jArr[size2] = ((1 << sigParameters.getH()) - 1) & index;
            index >>>= sigParameters.getH();
        }
        LMSPrivateKeyParameters[] lMSPrivateKeyParametersArr = (LMSPrivateKeyParameters[]) keys.toArray(new LMSPrivateKeyParameters[keys.size()]);
        List<LMSSignature> list = this.sig;
        LMSSignature[] lMSSignatureArr = (LMSSignature[]) list.toArray(new LMSSignature[list.size()]);
        LMSPrivateKeyParameters rootKey = getRootKey();
        if (lMSPrivateKeyParametersArr[0].getIndex() - 1 != jArr[0]) {
            lMSPrivateKeyParametersArr[0] = LMS.generateKeys(rootKey.getSigParameters(), rootKey.getOtsParameters(), (int) jArr[0], rootKey.getI(), rootKey.getMasterSecret());
            z10 = true;
        } else {
            z10 = false;
        }
        int r92 = 1;
        while (r92 < size) {
            int r10 = r92 - 1;
            LMSPrivateKeyParameters lMSPrivateKeyParameters = lMSPrivateKeyParametersArr[r10];
            int n10 = lMSPrivateKeyParameters.getOtsParameters().getN();
            byte[] bArr = new byte[16];
            byte[] bArr2 = new byte[n10];
            SeedDerive seedDerive = new SeedDerive(lMSPrivateKeyParameters.getI(), lMSPrivateKeyParameters.getMasterSecret(), DigestUtil.getDigest(lMSPrivateKeyParameters.getOtsParameters()));
            seedDerive.setQ((int) jArr[r10]);
            seedDerive.setJ(-2);
            seedDerive.deriveSeed(bArr2, true);
            byte[] bArr3 = new byte[n10];
            seedDerive.deriveSeed(bArr3, false);
            System.arraycopy(bArr3, 0, bArr, 0, 16);
            boolean z11 = r92 >= size + (-1) ? jArr[r92] == ((long) lMSPrivateKeyParametersArr[r92].getIndex()) : jArr[r92] == ((long) (lMSPrivateKeyParametersArr[r92].getIndex() - 1));
            if (!(Arrays.areEqual(bArr, lMSPrivateKeyParametersArr[r92].getI()) && Arrays.areEqual(bArr2, lMSPrivateKeyParametersArr[r92].getMasterSecret()))) {
                LMSPrivateKeyParameters lMSPrivateKeyParametersGenerateKeys = LMS.generateKeys(keys.get(r92).getSigParameters(), keys.get(r92).getOtsParameters(), (int) jArr[r92], bArr, bArr2);
                lMSPrivateKeyParametersArr[r92] = lMSPrivateKeyParametersGenerateKeys;
                lMSSignatureArr[r10] = LMS.generateSign(lMSPrivateKeyParametersArr[r10], lMSPrivateKeyParametersGenerateKeys.getPublicKey().toByteArray());
            } else if (z11) {
                r92++;
            } else {
                lMSPrivateKeyParametersArr[r92] = LMS.generateKeys(keys.get(r92).getSigParameters(), keys.get(r92).getOtsParameters(), (int) jArr[r92], bArr, bArr2);
            }
            z10 = true;
            r92++;
        }
        if (z10) {
            updateHierarchy(lMSPrivateKeyParametersArr, lMSSignatureArr);
        }
    }

    public void updateHierarchy(LMSPrivateKeyParameters[] lMSPrivateKeyParametersArr, LMSSignature[] lMSSignatureArr) {
        synchronized (this) {
            this.keys = Collections.unmodifiableList(java.util.Arrays.asList(lMSPrivateKeyParametersArr));
            this.sig = Collections.unmodifiableList(java.util.Arrays.asList(lMSSignatureArr));
        }
    }
}
