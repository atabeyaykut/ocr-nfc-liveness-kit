package org.bouncycastle.pqc.crypto.sphincs;

/* loaded from: classes2.dex */
class Tree {

    public static class leafaddr {
        int level;
        long subleaf;
        long subtree;

        public leafaddr() {
        }

        public leafaddr(leafaddr leafaddrVar) {
            this.level = leafaddrVar.level;
            this.subtree = leafaddrVar.subtree;
            this.subleaf = leafaddrVar.subleaf;
        }
    }

    public static void gen_leaf_wots(HashFunctions hashFunctions, byte[] bArr, int r15, byte[] bArr2, int r17, byte[] bArr3, leafaddr leafaddrVar) {
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[2144];
        Wots wots = new Wots();
        Seed.get_seed(hashFunctions, bArr4, 0, bArr3, leafaddrVar);
        wots.wots_pkgen(hashFunctions, bArr5, 0, bArr4, 0, bArr2, r17);
        l_tree(hashFunctions, bArr, r15, bArr5, 0, bArr2, r17);
    }

    public static void l_tree(HashFunctions hashFunctions, byte[] bArr, int r16, byte[] bArr2, int r18, byte[] bArr3, int r20) {
        int r02;
        int r10 = 67;
        for (int r11 = 0; r11 < 7; r11++) {
            int r13 = 0;
            while (true) {
                r02 = r10 >>> 1;
                if (r13 >= r02) {
                    break;
                }
                hashFunctions.hash_2n_n_mask(bArr2, (r13 * 32) + r18, bArr2, (r13 * 2 * 32) + r18, bArr3, (r11 * 2 * 32) + r20);
                r13++;
            }
            if ((r10 & 1) != 0) {
                System.arraycopy(bArr2, ((r10 - 1) * 32) + r18, bArr2, (r02 * 32) + r18, 32);
                r02++;
            }
            r10 = r02;
        }
        System.arraycopy(bArr2, r18, bArr, r16, 32);
    }

    public static void treehash(HashFunctions hashFunctions, byte[] bArr, int r19, int r20, byte[] bArr2, leafaddr leafaddrVar, byte[] bArr3, int r24) {
        leafaddr leafaddrVar2 = new leafaddr(leafaddrVar);
        int r02 = r20 + 1;
        byte[] bArr4 = new byte[r02 * 32];
        int[] r14 = new int[r02];
        int r13 = 1;
        int r12 = (int) (leafaddrVar2.subleaf + (1 << r20));
        int r82 = 0;
        while (leafaddrVar2.subleaf < r12) {
            gen_leaf_wots(hashFunctions, bArr4, r82 * 32, bArr3, r24, bArr2, leafaddrVar2);
            r14[r82] = 0;
            int r03 = r82 + r13;
            while (r03 > r13) {
                int r15 = r14[r03 - 1];
                int r22 = r03 - 2;
                if (r15 == r14[r22]) {
                    int r32 = r22 * 32;
                    int[] r6 = r14;
                    hashFunctions.hash_2n_n_mask(bArr4, r32, bArr4, r32, bArr3, r24 + ((r15 + 7) * 2 * 32));
                    r6[r22] = r6[r22] + 1;
                    r03--;
                    r12 = r12;
                    r14 = r6;
                    r13 = 1;
                }
            }
            leafaddrVar2.subleaf++;
            r82 = r03;
            r12 = r12;
            r14 = r14;
            r13 = 1;
        }
        for (int r04 = 0; r04 < 32; r04++) {
            bArr[r19 + r04] = bArr4[r04];
        }
    }
}
