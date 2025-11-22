package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.engines.ChaChaEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.pqc.crypto.sphincs.Tree;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Seed {
    public static void get_seed(HashFunctions hashFunctions, byte[] bArr, int r10, byte[] bArr2, Tree.leafaddr leafaddrVar) {
        byte[] bArr3 = new byte[40];
        for (int r22 = 0; r22 < 32; r22++) {
            bArr3[r22] = bArr2[r22];
        }
        Pack.longToLittleEndian((leafaddrVar.subleaf << 59) | leafaddrVar.level | (leafaddrVar.subtree << 4), bArr3, 32);
        hashFunctions.varlen_hash(bArr, r10, bArr3, 40);
    }

    public static void prg(byte[] bArr, int r82, long j10, byte[] bArr2, int r12) throws DataLengthException, IllegalArgumentException {
        ChaChaEngine chaChaEngine = new ChaChaEngine(12);
        chaChaEngine.init(true, new ParametersWithIV(new KeyParameter(bArr2, r12, 32), new byte[8]));
        chaChaEngine.processBytes(bArr, r82, (int) j10, bArr, r82);
    }
}
