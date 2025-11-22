package org.bouncycastle.asn1;

/* loaded from: classes2.dex */
public class ASN1EncodableVector {
    private static final int DEFAULT_CAPACITY = 10;
    static final ASN1Encodable[] EMPTY_ELEMENTS = new ASN1Encodable[0];
    private boolean copyOnWrite;
    private int elementCount;
    private ASN1Encodable[] elements;

    public ASN1EncodableVector() {
        this(10);
    }

    public ASN1EncodableVector(int r22) {
        if (r22 < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.elements = r22 == 0 ? EMPTY_ELEMENTS : new ASN1Encodable[r22];
        this.elementCount = 0;
        this.copyOnWrite = false;
    }

    public static ASN1Encodable[] cloneElements(ASN1Encodable[] aSN1EncodableArr) {
        return aSN1EncodableArr.length < 1 ? EMPTY_ELEMENTS : (ASN1Encodable[]) aSN1EncodableArr.clone();
    }

    private void doAddAll(ASN1Encodable[] aSN1EncodableArr, String str) {
        int length = aSN1EncodableArr.length;
        if (length < 1) {
            return;
        }
        int length2 = this.elements.length;
        int r32 = this.elementCount + length;
        int r42 = 0;
        if ((r32 > length2) | this.copyOnWrite) {
            reallocate(r32);
        }
        do {
            ASN1Encodable aSN1Encodable = aSN1EncodableArr[r42];
            if (aSN1Encodable == null) {
                throw new NullPointerException(str);
            }
            this.elements[this.elementCount + r42] = aSN1Encodable;
            r42++;
        } while (r42 < length);
        this.elementCount = r32;
    }

    private void reallocate(int r42) {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[Math.max(this.elements.length, r42 + (r42 >> 1))];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, this.elementCount);
        this.elements = aSN1EncodableArr;
        this.copyOnWrite = false;
    }

    public void add(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        int length = this.elements.length;
        int r12 = this.elementCount + 1;
        if (this.copyOnWrite | (r12 > length)) {
            reallocate(r12);
        }
        this.elements[this.elementCount] = aSN1Encodable;
        this.elementCount = r12;
    }

    public void addAll(ASN1EncodableVector aSN1EncodableVector) {
        if (aSN1EncodableVector == null) {
            throw new NullPointerException("'other' cannot be null");
        }
        doAddAll(aSN1EncodableVector.elements, "'other' elements cannot be null");
    }

    public void addAll(ASN1Encodable[] aSN1EncodableArr) {
        if (aSN1EncodableArr == null) {
            throw new NullPointerException("'others' cannot be null");
        }
        doAddAll(aSN1EncodableArr, "'others' elements cannot be null");
    }

    public ASN1Encodable[] copyElements() {
        int r02 = this.elementCount;
        if (r02 == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[r02];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, r02);
        return aSN1EncodableArr;
    }

    public ASN1Encodable get(int r32) {
        if (r32 < this.elementCount) {
            return this.elements[r32];
        }
        throw new ArrayIndexOutOfBoundsException(r32 + " >= " + this.elementCount);
    }

    public int size() {
        return this.elementCount;
    }

    public ASN1Encodable[] takeElements() {
        int r02 = this.elementCount;
        if (r02 == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = this.elements;
        if (aSN1EncodableArr.length == r02) {
            this.copyOnWrite = true;
            return aSN1EncodableArr;
        }
        ASN1Encodable[] aSN1EncodableArr2 = new ASN1Encodable[r02];
        System.arraycopy(aSN1EncodableArr, 0, aSN1EncodableArr2, 0, r02);
        return aSN1EncodableArr2;
    }
}
