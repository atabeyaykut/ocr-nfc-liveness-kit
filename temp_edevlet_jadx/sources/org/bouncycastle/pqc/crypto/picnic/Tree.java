package org.bouncycastle.pqc.crypto.picnic;

import java.lang.reflect.Array;
import java.util.logging.Logger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Tree {
    private static final Logger LOG = Logger.getLogger(Tree.class.getName());
    private static final int MAX_SEED_SIZE_BYTES = 32;
    private int dataSize;
    private int depth;
    private PicnicEngine engine;
    private boolean[] exists;
    private boolean[] haveNode;
    byte[][] nodes;
    private int numLeaves;
    private int numNodes;

    public Tree(PicnicEngine picnicEngine, int r52, int r6) {
        int r12;
        this.engine = picnicEngine;
        int r42 = Utils.ceil_log2(r52) + 1;
        this.depth = r42;
        int r13 = ((1 << r42) - 1) - ((1 << (r42 - 1)) - r52);
        this.numNodes = r13;
        this.numLeaves = r52;
        this.dataSize = r6;
        this.nodes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r13, r6);
        int r43 = 0;
        while (true) {
            r12 = this.numNodes;
            if (r43 >= r12) {
                break;
            }
            this.nodes[r43] = new byte[r6];
            r43++;
        }
        this.haveNode = new boolean[r12];
        boolean[] zArr = new boolean[r12];
        this.exists = zArr;
        Arrays.fill(zArr, r12 - this.numLeaves, r12, true);
        for (int r44 = this.numNodes - this.numLeaves; r44 > 0; r44--) {
            int r62 = r44 * 2;
            if (exists(r62 + 1) || exists(r62 + 2)) {
                this.exists[r44] = true;
            }
        }
        this.exists[0] = true;
    }

    private void computeParentHash(int r72, byte[] bArr) {
        if (exists(r72)) {
            int parent = getParent(r72);
            boolean[] zArr = this.haveNode;
            if (zArr[parent]) {
                return;
            }
            int r12 = parent * 2;
            int r22 = r12 + 1;
            if (zArr[r22]) {
                int r13 = r12 + 2;
                if (!exists(r13) || this.haveNode[r13]) {
                    this.engine.digest.update((byte) 3);
                    PicnicEngine picnicEngine = this.engine;
                    picnicEngine.digest.update(this.nodes[r22], 0, picnicEngine.digestSizeBytes);
                    if (hasRightChild(parent)) {
                        PicnicEngine picnicEngine2 = this.engine;
                        picnicEngine2.digest.update(this.nodes[r13], 0, picnicEngine2.digestSizeBytes);
                    }
                    this.engine.digest.update(bArr, 0, 32);
                    this.engine.digest.update(Pack.intToLittleEndian(parent), 0, 2);
                    PicnicEngine picnicEngine3 = this.engine;
                    picnicEngine3.digest.doFinal(this.nodes[parent], 0, picnicEngine3.digestSizeBytes);
                    this.haveNode[parent] = true;
                }
            }
        }
    }

    private boolean contains(int[] r42, int r52, int r6) {
        for (int r12 = 0; r12 < r52; r12++) {
            if (r42[r12] == r6) {
                return true;
            }
        }
        return false;
    }

    private boolean exists(int r22) {
        if (r22 >= this.numNodes) {
            return false;
        }
        return this.exists[r22];
    }

    private void expandSeeds(byte[] bArr, int r14) {
        byte[] bArr2 = new byte[64];
        int parent = getParent(this.numNodes - 1);
        for (int r11 = 0; r11 <= parent; r11++) {
            if (this.haveNode[r11]) {
                hashSeed(bArr2, this.nodes[r11], bArr, (byte) 1, r14, r11);
                int r22 = r11 * 2;
                int r32 = r22 + 1;
                if (!this.haveNode[r32]) {
                    System.arraycopy(bArr2, 0, this.nodes[r32], 0, this.engine.seedSizeBytes);
                    this.haveNode[r32] = true;
                }
                int r23 = r22 + 2;
                if (exists(r23) && !this.haveNode[r23]) {
                    int r12 = this.engine.seedSizeBytes;
                    System.arraycopy(bArr2, r12, this.nodes[r23], 0, r12);
                    this.haveNode[r23] = true;
                }
            }
        }
    }

    private int getParent(int r22) {
        return (isLeftChild(r22) ? r22 - 1 : r22 - 2) / 2;
    }

    private int[] getRevealedMerkleNodes(int[] r92, int r10, int[] r11) {
        int r02 = this.numNodes;
        int r12 = r02 - this.numLeaves;
        boolean[] zArr = new boolean[r02];
        for (int r32 = 0; r32 < r10; r32++) {
            zArr[r92[r32] + r12] = true;
        }
        for (int parent = getParent(this.numNodes - 1); parent > 0; parent--) {
            if (exists(parent)) {
                int r52 = parent * 2;
                int r6 = r52 + 2;
                int r53 = r52 + 1;
                if (exists(r6)) {
                    if (zArr[r53] && zArr[r6]) {
                        zArr[parent] = true;
                    }
                } else if (zArr[r53]) {
                    zArr[parent] = true;
                }
            }
        }
        int[] r33 = new int[this.numLeaves];
        int r54 = 0;
        for (int r42 = 0; r42 < r10; r42++) {
            int parent2 = r92[r42] + r12;
            while (true) {
                if (zArr[getParent(parent2)]) {
                    parent2 = getParent(parent2);
                    if (parent2 == 0) {
                        break;
                    }
                } else if (!contains(r33, r54, parent2)) {
                    r33[r54] = parent2;
                    r54++;
                }
            }
        }
        r11[0] = r54;
        return r33;
    }

    private int[] getRevealedNodes(int[] r10, int r11, int[] r12) {
        int r02 = this.depth - 1;
        int[][] r22 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r02, r11);
        for (int r42 = 0; r42 < r11; r42++) {
            int parent = (this.numNodes - this.numLeaves) + r10[r42];
            r22[0][r42] = parent;
            int r52 = 1;
            while (true) {
                parent = getParent(parent);
                if (parent != 0) {
                    r22[r52][r42] = parent;
                    r52++;
                }
            }
        }
        int[] r102 = new int[this.numLeaves];
        int r53 = 0;
        for (int r43 = 0; r43 < r02; r43++) {
            for (int r6 = 0; r6 < r11; r6++) {
                if (hasSibling(r22[r43][r6])) {
                    int sibling = getSibling(r22[r43][r6]);
                    if (!contains(r22[r43], r11, sibling)) {
                        while (!hasRightChild(sibling) && !isLeafNode(sibling)) {
                            sibling = (sibling * 2) + 1;
                        }
                        if (!contains(r102, r53, sibling)) {
                            r102[r53] = sibling;
                            r53++;
                        }
                    }
                }
            }
        }
        r12[0] = r53;
        return r102;
    }

    private int getSibling(int r22) {
        if (!isLeftChild(r22)) {
            return r22 - 1;
        }
        int r23 = r22 + 1;
        if (r23 < this.numNodes) {
            return r23;
        }
        LOG.fine("getSibling: request for node with not sibling");
        return 0;
    }

    private boolean hasRightChild(int r32) {
        return (r32 * 2) + 2 < this.numNodes && exists(r32);
    }

    private boolean hasSibling(int r42) {
        if (exists(r42)) {
            return !isLeftChild(r42) || exists(r42 + 1);
        }
        return false;
    }

    private void hashSeed(byte[] bArr, byte[] bArr2, byte[] bArr3, byte b10, int r72, int r82) {
        this.engine.digest.update(b10);
        PicnicEngine picnicEngine = this.engine;
        picnicEngine.digest.update(bArr2, 0, picnicEngine.seedSizeBytes);
        this.engine.digest.update(bArr3, 0, 32);
        this.engine.digest.update(Pack.shortToLittleEndian((short) (r72 & 65535)), 0, 2);
        this.engine.digest.update(Pack.shortToLittleEndian((short) (65535 & r82)), 0, 2);
        PicnicEngine picnicEngine2 = this.engine;
        picnicEngine2.digest.doFinal(bArr, 0, picnicEngine2.seedSizeBytes * 2);
    }

    private boolean isLeafNode(int r32) {
        return (r32 * 2) + 1 >= this.numNodes;
    }

    private boolean isLeftChild(int r22) {
        return r22 % 2 == 1;
    }

    public int addMerkleNodes(int[] r82, int r92, byte[] bArr, int r11) {
        int[] r12 = {0};
        int[] revealedMerkleNodes = getRevealedMerkleNodes(r82, r92, r12);
        for (int r93 = 0; r93 < r12[0]; r93++) {
            int r32 = this.dataSize;
            r11 -= r32;
            if (r11 < 0) {
                return -1;
            }
            System.arraycopy(bArr, r93 * r32, this.nodes[revealedMerkleNodes[r93]], 0, r32);
            this.haveNode[revealedMerkleNodes[r93]] = true;
        }
        return r11 != 0 ? -1 : 0;
    }

    public void buildMerkleTree(byte[][] bArr, byte[] bArr2) {
        int r02 = this.numNodes - this.numLeaves;
        for (int r22 = 0; r22 < this.numLeaves; r22++) {
            byte[] bArr3 = bArr[r22];
            if (bArr3 != null) {
                int r52 = r02 + r22;
                System.arraycopy(bArr3, 0, this.nodes[r52], 0, this.dataSize);
                this.haveNode[r52] = true;
            }
        }
        for (int r82 = this.numNodes; r82 > 0; r82--) {
            computeParentHash(r82, bArr2);
        }
    }

    public void generateSeeds(byte[] bArr, byte[] bArr2, int r52) {
        this.nodes[0] = bArr;
        this.haveNode[0] = true;
        expandSeeds(bArr2, r52);
    }

    public byte[] getLeaf(int r32) {
        return this.nodes[(this.numNodes - this.numLeaves) + r32];
    }

    public byte[][] getLeaves() {
        return this.nodes;
    }

    public int getLeavesOffset() {
        return this.numNodes - this.numLeaves;
    }

    public boolean hasLeftChild(Tree tree, int r32) {
        return (r32 * 2) + 1 < this.numNodes;
    }

    public byte[] openMerkleTree(int[] r6, int r72, int[] r82) {
        int[] r02 = new int[1];
        int[] revealedMerkleNodes = getRevealedMerkleNodes(r6, r72, r02);
        int r12 = r02[0] * this.dataSize;
        r82[0] = r12;
        byte[] bArr = new byte[r12];
        for (int r13 = 0; r13 < r02[0]; r13++) {
            byte[] bArr2 = this.nodes[revealedMerkleNodes[r13]];
            int r32 = this.dataSize;
            System.arraycopy(bArr2, 0, bArr, r13 * r32, r32);
        }
        return bArr;
    }

    public int openMerkleTreeSize(int[] r22, int r32) {
        int[] r02 = new int[1];
        getRevealedMerkleNodes(r22, r32, r02);
        return r02[0] * this.engine.digestSizeBytes;
    }

    public int reconstructSeeds(int[] r82, int r92, byte[] bArr, int r11, byte[] bArr2, int r13) {
        int[] r12 = {0};
        int[] revealedNodes = getRevealedNodes(r82, r92, r12);
        for (int r93 = 0; r93 < r12[0]; r93++) {
            int r32 = this.engine.seedSizeBytes;
            r11 -= r32;
            if (r11 < 0) {
                return -1;
            }
            System.arraycopy(bArr, r93 * r32, this.nodes[revealedNodes[r93]], 0, r32);
            this.haveNode[revealedNodes[r93]] = true;
        }
        expandSeeds(bArr2, r13);
        return 0;
    }

    public int revealSeeds(int[] r6, int r72, byte[] bArr, int r92) {
        int[] r02 = {0};
        int[] revealedNodes = getRevealedNodes(r6, r72, r02);
        for (int r73 = 0; r73 < r02[0]; r73++) {
            int r22 = this.engine.seedSizeBytes;
            r92 -= r22;
            if (r92 < 0) {
                LOG.fine("Insufficient sized buffer provided to revealSeeds");
                return 0;
            }
            System.arraycopy(this.nodes[revealedNodes[r73]], 0, bArr, r73 * r22, r22);
        }
        return bArr.length - r92;
    }

    public int revealSeedsSize(int[] r32, int r42) {
        int[] r02 = {0};
        getRevealedNodes(r32, r42, r02);
        return r02[0] * this.engine.seedSizeBytes;
    }

    public int verifyMerkleTree(byte[][] bArr, byte[] bArr2) {
        int r02 = this.numNodes - this.numLeaves;
        for (int r22 = 0; r22 < this.numLeaves; r22++) {
            byte[] bArr3 = bArr[r22];
            if (bArr3 != null) {
                int r6 = r02 + r22;
                if (this.haveNode[r6]) {
                    return -1;
                }
                if (bArr3 != null) {
                    System.arraycopy(bArr3, 0, this.nodes[r6], 0, this.dataSize);
                    this.haveNode[r6] = true;
                }
            }
        }
        for (int r82 = this.numNodes; r82 > 0; r82--) {
            computeParentHash(r82, bArr2);
        }
        return !this.haveNode[0] ? -1 : 0;
    }
}
