package org.bouncycastle.pqc.legacy.crypto.gmss;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class Treehash {
    private byte[] firstNode;
    private int firstNodeHeight;
    private Vector heightOfNodes;
    private boolean isFinished;
    private boolean isInitialized;
    private int maxHeight;
    private Digest messDigestTree;
    private byte[] seedActive;
    private boolean seedInitialized;
    private byte[] seedNext;
    private int tailLength;
    private Vector tailStack;

    public Treehash(Vector vector, int r22, Digest digest) {
        this.tailStack = vector;
        this.maxHeight = r22;
        this.firstNode = null;
        this.isInitialized = false;
        this.isFinished = false;
        this.seedInitialized = false;
        this.messDigestTree = digest;
        this.seedNext = new byte[digest.getDigestSize()];
        this.seedActive = new byte[this.messDigestTree.getDigestSize()];
    }

    public Treehash(Digest digest, byte[][] bArr, int[] r82) {
        this.messDigestTree = digest;
        this.maxHeight = r82[0];
        this.tailLength = r82[1];
        this.firstNodeHeight = r82[2];
        if (r82[3] == 1) {
            this.isFinished = true;
        } else {
            this.isFinished = false;
        }
        if (r82[4] == 1) {
            this.isInitialized = true;
        } else {
            this.isInitialized = false;
        }
        if (r82[5] == 1) {
            this.seedInitialized = true;
        } else {
            this.seedInitialized = false;
        }
        this.heightOfNodes = new Vector();
        for (int r22 = 0; r22 < this.tailLength; r22++) {
            this.heightOfNodes.addElement(Integers.valueOf(r82[r22 + 6]));
        }
        this.firstNode = bArr[0];
        this.seedActive = bArr[1];
        this.seedNext = bArr[2];
        this.tailStack = new Vector();
        for (int r6 = 0; r6 < this.tailLength; r6++) {
            this.tailStack.addElement(bArr[r6 + 3]);
        }
    }

    public void destroy() {
        this.isInitialized = false;
        this.isFinished = false;
        this.firstNode = null;
        this.tailLength = 0;
        this.firstNodeHeight = -1;
    }

    public byte[] getFirstNode() {
        return this.firstNode;
    }

    public int getFirstNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.firstNodeHeight;
    }

    public int getLowestNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.tailLength == 0 ? this.firstNodeHeight : Math.min(this.firstNodeHeight, ((Integer) this.heightOfNodes.lastElement()).intValue());
    }

    public byte[] getSeedActive() {
        return this.seedActive;
    }

    public byte[][] getStatByte() {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.tailLength + 3, this.messDigestTree.getDigestSize());
        bArr[0] = this.firstNode;
        bArr[1] = this.seedActive;
        bArr[2] = this.seedNext;
        for (int r12 = 0; r12 < this.tailLength; r12++) {
            bArr[r12 + 3] = (byte[]) this.tailStack.elementAt(r12);
        }
        return bArr;
    }

    public int[] getStatInt() {
        int r02 = this.tailLength;
        int[] r12 = new int[r02 + 6];
        r12[0] = this.maxHeight;
        r12[1] = r02;
        r12[2] = this.firstNodeHeight;
        if (this.isFinished) {
            r12[3] = 1;
        } else {
            r12[3] = 0;
        }
        if (this.isInitialized) {
            r12[4] = 1;
        } else {
            r12[4] = 0;
        }
        if (this.seedInitialized) {
            r12[5] = 1;
        } else {
            r12[5] = 0;
        }
        for (int r32 = 0; r32 < this.tailLength; r32++) {
            r12[r32 + 6] = ((Integer) this.heightOfNodes.elementAt(r32)).intValue();
        }
        return r12;
    }

    public Vector getTailStack() {
        return this.tailStack;
    }

    public void initialize() {
        if (!this.seedInitialized) {
            throw new IllegalStateException(a.b(new StringBuilder("Seed "), this.maxHeight, " not initialized"));
        }
        this.heightOfNodes = new Vector();
        this.tailLength = 0;
        this.firstNode = null;
        this.firstNodeHeight = -1;
        this.isInitialized = true;
        System.arraycopy(this.seedNext, 0, this.seedActive, 0, this.messDigestTree.getDigestSize());
    }

    public void initializeSeed(byte[] bArr) {
        System.arraycopy(bArr, 0, this.seedNext, 0, this.messDigestTree.getDigestSize());
        this.seedInitialized = true;
    }

    public void setFirstNode(byte[] bArr) {
        if (!this.isInitialized) {
            initialize();
        }
        this.firstNode = bArr;
        this.firstNodeHeight = this.maxHeight;
        this.isFinished = true;
    }

    public String toString() {
        StringBuilder sbI;
        String string = "Treehash    : ";
        for (int r22 = 0; r22 < this.tailLength + 6; r22++) {
            string = a.b(androidx.constraintlayout.core.a.e(string), getStatInt()[r22], " ");
        }
        for (int r12 = 0; r12 < this.tailLength + 3; r12++) {
            if (getStatByte()[r12] != null) {
                sbI = androidx.constraintlayout.core.a.e(string);
                sbI.append(new String(Hex.encode(getStatByte()[r12])));
                sbI.append(" ");
            } else {
                sbI = b.i(string, "null ");
            }
            string = sbI.toString();
        }
        StringBuilder sbI2 = b.i(string, "  ");
        sbI2.append(this.messDigestTree.getDigestSize());
        return sbI2.toString();
    }

    public void update(GMSSRandom gMSSRandom, byte[] bArr) {
        PrintStream printStream;
        String str;
        if (this.isFinished) {
            printStream = System.err;
            str = "No more update possible for treehash instance!";
        } else {
            if (this.isInitialized) {
                byte[] bArr2 = new byte[this.messDigestTree.getDigestSize()];
                gMSSRandom.nextSeed(this.seedActive);
                if (this.firstNode == null) {
                    this.firstNode = bArr;
                    this.firstNodeHeight = 0;
                } else {
                    int r72 = 0;
                    while (this.tailLength > 0 && r72 == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                        int digestSize = this.messDigestTree.getDigestSize() << 1;
                        byte[] bArr3 = new byte[digestSize];
                        System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.messDigestTree.getDigestSize());
                        Vector vector = this.tailStack;
                        vector.removeElementAt(vector.size() - 1);
                        Vector vector2 = this.heightOfNodes;
                        vector2.removeElementAt(vector2.size() - 1);
                        System.arraycopy(bArr, 0, bArr3, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                        this.messDigestTree.update(bArr3, 0, digestSize);
                        bArr = new byte[this.messDigestTree.getDigestSize()];
                        this.messDigestTree.doFinal(bArr, 0);
                        r72++;
                        this.tailLength--;
                    }
                    this.tailStack.addElement(bArr);
                    this.heightOfNodes.addElement(Integers.valueOf(r72));
                    this.tailLength++;
                    if (((Integer) this.heightOfNodes.lastElement()).intValue() == this.firstNodeHeight) {
                        int digestSize2 = this.messDigestTree.getDigestSize() << 1;
                        byte[] bArr4 = new byte[digestSize2];
                        System.arraycopy(this.firstNode, 0, bArr4, 0, this.messDigestTree.getDigestSize());
                        System.arraycopy(this.tailStack.lastElement(), 0, bArr4, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                        Vector vector3 = this.tailStack;
                        vector3.removeElementAt(vector3.size() - 1);
                        Vector vector4 = this.heightOfNodes;
                        vector4.removeElementAt(vector4.size() - 1);
                        this.messDigestTree.update(bArr4, 0, digestSize2);
                        byte[] bArr5 = new byte[this.messDigestTree.getDigestSize()];
                        this.firstNode = bArr5;
                        this.messDigestTree.doFinal(bArr5, 0);
                        this.firstNodeHeight++;
                        this.tailLength = 0;
                    }
                }
                if (this.firstNodeHeight == this.maxHeight) {
                    this.isFinished = true;
                    return;
                }
                return;
            }
            printStream = System.err;
            str = "Treehash instance not initialized before update";
        }
        printStream.println(str);
    }

    public void updateNextSeed(GMSSRandom gMSSRandom) {
        gMSSRandom.nextSeed(this.seedNext);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
