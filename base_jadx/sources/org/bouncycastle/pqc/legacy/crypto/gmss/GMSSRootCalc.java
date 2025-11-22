package org.bouncycastle.pqc.legacy.crypto.gmss;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import androidx.camera.camera2.internal.c;
import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class GMSSRootCalc {
    private byte[][] AuthPath;
    private int K;
    private GMSSDigestProvider digestProvider;
    private int heightOfNextSeed;
    private Vector heightOfNodes;
    private int heightOfTree;
    private int[] index;
    private int indexForNextSeed;
    private boolean isFinished;
    private boolean isInitialized;
    private int mdLength;
    private Digest messDigestTree;
    private Vector[] retain;
    private byte[] root;
    private Vector tailStack;
    private Treehash[] treehash;

    public GMSSRootCalc(int r32, int r42, GMSSDigestProvider gMSSDigestProvider) {
        this.heightOfTree = r32;
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        int digestSize = digest.getDigestSize();
        this.mdLength = digestSize;
        this.K = r42;
        this.index = new int[r32];
        int[] r02 = {r32, digestSize};
        this.AuthPath = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r02);
        this.root = new byte[this.mdLength];
        this.retain = new Vector[this.K - 1];
        for (int r52 = 0; r52 < r42 - 1; r52++) {
            this.retain[r52] = new Vector();
        }
    }

    public byte[][] getAuthPath() {
        return GMSSUtils.clone(this.AuthPath);
    }

    public Vector[] getRetain() {
        return GMSSUtils.clone(this.retain);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.root);
    }

    public Vector getStack() {
        Vector vector = new Vector();
        Enumeration enumerationElements = this.tailStack.elements();
        while (enumerationElements.hasMoreElements()) {
            vector.addElement(enumerationElements.nextElement());
        }
        return vector;
    }

    public byte[][] getStatByte() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.heightOfTree + 1 + size, 64);
        bArr[0] = this.root;
        int r42 = 0;
        while (r42 < this.heightOfTree) {
            int r52 = r42 + 1;
            bArr[r52] = this.AuthPath[r42];
            r42 = r52;
        }
        for (int r12 = 0; r12 < size; r12++) {
            bArr[this.heightOfTree + 1 + r12] = (byte[]) this.tailStack.elementAt(r12);
        }
        return bArr;
    }

    public int[] getStatInt() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        int r22 = this.heightOfTree;
        int[] r32 = new int[r22 + 8 + size];
        r32[0] = r22;
        r32[1] = this.mdLength;
        r32[2] = this.K;
        r32[3] = this.indexForNextSeed;
        r32[4] = this.heightOfNextSeed;
        if (this.isFinished) {
            r32[5] = 1;
        } else {
            r32[5] = 0;
        }
        if (this.isInitialized) {
            r32[6] = 1;
        } else {
            r32[6] = 0;
        }
        r32[7] = size;
        for (int r23 = 0; r23 < this.heightOfTree; r23++) {
            r32[r23 + 8] = this.index[r23];
        }
        for (int r12 = 0; r12 < size; r12++) {
            r32[this.heightOfTree + 8 + r12] = ((Integer) this.heightOfNodes.elementAt(r12)).intValue();
        }
        return r32;
    }

    public Treehash[] getTreehash() {
        return GMSSUtils.clone(this.treehash);
    }

    public void initialize(Vector vector) {
        int r22;
        this.treehash = new Treehash[this.heightOfTree - this.K];
        int r12 = 0;
        while (true) {
            r22 = this.heightOfTree;
            if (r12 >= r22 - this.K) {
                break;
            }
            this.treehash[r12] = new Treehash(vector, r12, this.digestProvider.get());
            r12++;
        }
        this.index = new int[r22];
        this.AuthPath = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r22, this.mdLength);
        this.root = new byte[this.mdLength];
        this.tailStack = new Vector();
        this.heightOfNodes = new Vector();
        this.isInitialized = true;
        this.isFinished = false;
        for (int r6 = 0; r6 < this.heightOfTree; r6++) {
            this.index[r6] = -1;
        }
        this.retain = new Vector[this.K - 1];
        for (int r62 = 0; r62 < this.K - 1; r62++) {
            this.retain[r62] = new Vector();
        }
        this.indexForNextSeed = 3;
        this.heightOfNextSeed = 0;
    }

    public void initializeTreehashSeed(byte[] bArr, int r32) {
        this.treehash[r32].initializeSeed(bArr);
    }

    public String toString() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        String strH = "";
        for (int r32 = 0; r32 < this.heightOfTree + 8 + size; r32++) {
            strH = a.b(androidx.constraintlayout.core.a.e(strH), getStatInt()[r32], " ");
        }
        for (int r12 = 0; r12 < this.heightOfTree + 1 + size; r12++) {
            strH = c.h(androidx.constraintlayout.core.a.e(strH), new String(Hex.encode(getStatByte()[r12])), " ");
        }
        StringBuilder sbI = b.i(strH, "  ");
        sbI.append(this.digestProvider.get().getDigestSize());
        return sbI.toString();
    }

    public void update(byte[] bArr) {
        if (this.isFinished) {
            System.out.print("Too much updates for Tree!!");
            return;
        }
        if (!this.isInitialized) {
            System.err.println("GMSSRootCalc not initialized!");
            return;
        }
        int[] r02 = this.index;
        int r22 = r02[0] + 1;
        r02[0] = r22;
        if (r22 == 1) {
            System.arraycopy(bArr, 0, this.AuthPath[0], 0, this.mdLength);
        } else if (r22 == 3 && this.heightOfTree > this.K) {
            this.treehash[0].setFirstNode(bArr);
        }
        int r23 = this.index[0];
        if ((r23 - 3) % 2 == 0 && r23 >= 3 && this.heightOfTree == this.K) {
            this.retain[0].insertElementAt(bArr, 0);
        }
        if (this.index[0] == 0) {
            this.tailStack.addElement(bArr);
            this.heightOfNodes.addElement(Integers.valueOf(0));
            return;
        }
        int r24 = this.mdLength;
        byte[] bArr2 = new byte[r24];
        int r52 = r24 << 1;
        byte[] bArr3 = new byte[r52];
        System.arraycopy(bArr, 0, bArr2, 0, r24);
        int r10 = 0;
        while (this.tailStack.size() > 0 && r10 == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
            System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.mdLength);
            Vector vector = this.tailStack;
            vector.removeElementAt(vector.size() - 1);
            Vector vector2 = this.heightOfNodes;
            vector2.removeElementAt(vector2.size() - 1);
            int r25 = this.mdLength;
            System.arraycopy(bArr2, 0, bArr3, r25, r25);
            this.messDigestTree.update(bArr3, 0, r52);
            bArr2 = new byte[this.messDigestTree.getDigestSize()];
            this.messDigestTree.doFinal(bArr2, 0);
            r10++;
            if (r10 < this.heightOfTree) {
                int[] r26 = this.index;
                int r72 = r26[r10] + 1;
                r26[r10] = r72;
                if (r72 == 1) {
                    System.arraycopy(bArr2, 0, this.AuthPath[r10], 0, this.mdLength);
                }
                if (r10 >= this.heightOfTree - this.K) {
                    if (r10 == 0) {
                        System.out.println("M���P");
                    }
                    int r27 = this.index[r10];
                    if ((r27 - 3) % 2 == 0 && r27 >= 3) {
                        this.retain[r10 - (this.heightOfTree - this.K)].insertElementAt(bArr2, 0);
                    }
                } else if (this.index[r10] == 3) {
                    this.treehash[r10].setFirstNode(bArr2);
                }
            }
        }
        this.tailStack.addElement(bArr2);
        this.heightOfNodes.addElement(Integers.valueOf(r10));
        if (r10 == this.heightOfTree) {
            this.isFinished = true;
            this.isInitialized = false;
            this.root = (byte[]) this.tailStack.lastElement();
        }
    }

    public void update(byte[] bArr, byte[] bArr2) {
        int r02 = this.heightOfNextSeed;
        if (r02 < this.heightOfTree - this.K && this.indexForNextSeed - 2 == this.index[0]) {
            initializeTreehashSeed(bArr, r02);
            this.heightOfNextSeed++;
            this.indexForNextSeed *= 2;
        }
        update(bArr2);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
