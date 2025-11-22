package org.bouncycastle.pqc.crypto.picnic;

/* loaded from: classes2.dex */
class Signature {
    final byte[] challengeBits;
    final Proof[] proofs;
    final byte[] salt = new byte[32];

    public static class Proof {
        final byte[] communicatedBits;
        final int[] inputShare;
        final byte[] seed1;
        final byte[] seed2;
        final byte[] view3Commitment;
        final byte[] view3UnruhG;

        public Proof(PicnicEngine picnicEngine) {
            int r02 = picnicEngine.seedSizeBytes;
            this.seed1 = new byte[r02];
            this.seed2 = new byte[r02];
            this.inputShare = new int[picnicEngine.stateSizeWords];
            this.communicatedBits = new byte[picnicEngine.andSizeBytes];
            this.view3Commitment = new byte[picnicEngine.digestSizeBytes];
            int r32 = picnicEngine.UnruhGWithInputBytes;
            if (r32 > 0) {
                this.view3UnruhG = new byte[r32];
            } else {
                this.view3UnruhG = null;
            }
        }
    }

    public Signature(PicnicEngine picnicEngine) {
        this.challengeBits = new byte[Utils.numBytes(picnicEngine.numMPCRounds * 2)];
        this.proofs = new Proof[picnicEngine.numMPCRounds];
        int r02 = 0;
        while (true) {
            Proof[] proofArr = this.proofs;
            if (r02 >= proofArr.length) {
                return;
            }
            proofArr[r02] = new Proof(picnicEngine);
            r02++;
        }
    }
}
