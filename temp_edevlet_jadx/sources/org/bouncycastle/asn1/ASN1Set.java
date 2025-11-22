package org.bouncycastle.asn1;

import ab.b;
import android.support.v4.media.a;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Iterable;

/* loaded from: classes2.dex */
public abstract class ASN1Set extends ASN1Primitive implements Iterable<ASN1Encodable> {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Set.class, 17) { // from class: org.bouncycastle.asn1.ASN1Set.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1Set();
        }
    };
    protected final ASN1Encodable[] elements;
    protected ASN1Encodable[] sortedElements;

    public ASN1Set() {
        ASN1Encodable[] aSN1EncodableArr = ASN1EncodableVector.EMPTY_ELEMENTS;
        this.elements = aSN1EncodableArr;
        this.sortedElements = aSN1EncodableArr;
    }

    public ASN1Set(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        ASN1Encodable[] aSN1EncodableArr = {aSN1Encodable};
        this.elements = aSN1EncodableArr;
        this.sortedElements = aSN1EncodableArr;
    }

    public ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z10) {
        ASN1Encodable[] aSN1EncodableArrTakeElements;
        if (aSN1EncodableVector == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        if (!z10 || aSN1EncodableVector.size() < 2) {
            aSN1EncodableArrTakeElements = aSN1EncodableVector.takeElements();
        } else {
            aSN1EncodableArrTakeElements = aSN1EncodableVector.copyElements();
            sort(aSN1EncodableArrTakeElements);
        }
        this.elements = aSN1EncodableArrTakeElements;
        if (!z10 && aSN1EncodableArrTakeElements.length >= 2) {
            aSN1EncodableArrTakeElements = null;
        }
        this.sortedElements = aSN1EncodableArrTakeElements;
    }

    public ASN1Set(boolean z10, ASN1Encodable[] aSN1EncodableArr) {
        this.elements = aSN1EncodableArr;
        if (!z10 && aSN1EncodableArr.length >= 2) {
            aSN1EncodableArr = null;
        }
        this.sortedElements = aSN1EncodableArr;
    }

    public ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z10) {
        if (Arrays.isNullOrContainsNull(aSN1EncodableArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        ASN1Encodable[] aSN1EncodableArrCloneElements = ASN1EncodableVector.cloneElements(aSN1EncodableArr);
        if (z10 && aSN1EncodableArrCloneElements.length >= 2) {
            sort(aSN1EncodableArrCloneElements);
        }
        this.elements = aSN1EncodableArrCloneElements;
        if (!z10 && aSN1EncodableArrCloneElements.length >= 2) {
            aSN1EncodableArr = null;
        }
        this.sortedElements = aSN1EncodableArr;
    }

    public ASN1Set(ASN1Encodable[] aSN1EncodableArr, ASN1Encodable[] aSN1EncodableArr2) {
        this.elements = aSN1EncodableArr;
        this.sortedElements = aSN1EncodableArr2;
    }

    private static byte[] getDEREncoded(ASN1Encodable aSN1Encodable) {
        try {
            return aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static ASN1Set getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Set)) {
            return (ASN1Set) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Set) {
                return (ASN1Set) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1Set) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException(a.c(e10, new StringBuilder("failed to construct set from byte[]: ")));
            }
        }
        throw new IllegalArgumentException(b.f(obj, "unknown object in getInstance: "));
    }

    public static ASN1Set getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1Set) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    private static boolean lessThanOrEqual(byte[] bArr, byte[] bArr2) {
        int r12 = bArr[0] & 223;
        int r22 = bArr2[0] & 223;
        if (r12 != r22) {
            return r12 < r22;
        }
        int r13 = Math.min(bArr.length, bArr2.length) - 1;
        for (int r23 = 1; r23 < r13; r23++) {
            byte b10 = bArr[r23];
            byte b11 = bArr2[r23];
            if (b10 != b11) {
                return (b10 & 255) < (b11 & 255);
            }
        }
        return (bArr[r13] & 255) <= (bArr2[r13] & 255);
    }

    private static void sort(ASN1Encodable[] aSN1EncodableArr) {
        int length = aSN1EncodableArr.length;
        if (length < 2) {
            return;
        }
        ASN1Encodable aSN1Encodable = aSN1EncodableArr[0];
        ASN1Encodable aSN1Encodable2 = aSN1EncodableArr[1];
        byte[] dEREncoded = getDEREncoded(aSN1Encodable);
        byte[] dEREncoded2 = getDEREncoded(aSN1Encodable2);
        if (lessThanOrEqual(dEREncoded2, dEREncoded)) {
            aSN1Encodable2 = aSN1Encodable;
            aSN1Encodable = aSN1Encodable2;
            dEREncoded2 = dEREncoded;
            dEREncoded = dEREncoded2;
        }
        for (int r12 = 2; r12 < length; r12++) {
            ASN1Encodable aSN1Encodable3 = aSN1EncodableArr[r12];
            byte[] dEREncoded3 = getDEREncoded(aSN1Encodable3);
            if (lessThanOrEqual(dEREncoded2, dEREncoded3)) {
                aSN1EncodableArr[r12 - 2] = aSN1Encodable;
                aSN1Encodable = aSN1Encodable2;
                dEREncoded = dEREncoded2;
                aSN1Encodable2 = aSN1Encodable3;
                dEREncoded2 = dEREncoded3;
            } else if (lessThanOrEqual(dEREncoded, dEREncoded3)) {
                aSN1EncodableArr[r12 - 2] = aSN1Encodable;
                aSN1Encodable = aSN1Encodable3;
                dEREncoded = dEREncoded3;
            } else {
                int r92 = r12 - 1;
                while (true) {
                    r92--;
                    if (r92 <= 0) {
                        break;
                    }
                    ASN1Encodable aSN1Encodable4 = aSN1EncodableArr[r92 - 1];
                    if (lessThanOrEqual(getDEREncoded(aSN1Encodable4), dEREncoded3)) {
                        break;
                    } else {
                        aSN1EncodableArr[r92] = aSN1Encodable4;
                    }
                }
                aSN1EncodableArr[r92] = aSN1Encodable3;
            }
        }
        aSN1EncodableArr[length - 2] = aSN1Encodable;
        aSN1EncodableArr[length - 1] = aSN1Encodable2;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Set)) {
            return false;
        }
        ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
        int size = size();
        if (aSN1Set.size() != size) {
            return false;
        }
        DERSet dERSet = (DERSet) toDERObject();
        DERSet dERSet2 = (DERSet) aSN1Set.toDERObject();
        for (int r32 = 0; r32 < size; r32++) {
            ASN1Primitive aSN1Primitive2 = dERSet.elements[r32].toASN1Primitive();
            ASN1Primitive aSN1Primitive3 = dERSet2.elements[r32].toASN1Primitive();
            if (aSN1Primitive2 != aSN1Primitive3 && !aSN1Primitive2.asn1Equals(aSN1Primitive3)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return true;
    }

    public ASN1Encodable getObjectAt(int r22) {
        return this.elements[r22];
    }

    public Enumeration getObjects() {
        return new Enumeration() { // from class: org.bouncycastle.asn1.ASN1Set.2
            private int pos = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.pos < ASN1Set.this.elements.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int r02 = this.pos;
                ASN1Encodable[] aSN1EncodableArr = ASN1Set.this.elements;
                if (r02 >= aSN1EncodableArr.length) {
                    throw new NoSuchElementException();
                }
                this.pos = r02 + 1;
                return aSN1EncodableArr[r02];
            }
        };
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        int length = this.elements.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 += this.elements[length].toASN1Primitive().hashCode();
        }
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(toArray());
    }

    public ASN1SetParser parser() {
        final int size = size();
        return new ASN1SetParser() { // from class: org.bouncycastle.asn1.ASN1Set.3
            private int pos = 0;

            @Override // org.bouncycastle.asn1.InMemoryRepresentable
            public ASN1Primitive getLoadedObject() {
                return ASN1Set.this;
            }

            @Override // org.bouncycastle.asn1.ASN1SetParser
            public ASN1Encodable readObject() throws IOException {
                int r02 = size;
                int r12 = this.pos;
                if (r02 == r12) {
                    return null;
                }
                ASN1Encodable[] aSN1EncodableArr = ASN1Set.this.elements;
                this.pos = r12 + 1;
                ASN1Encodable aSN1Encodable = aSN1EncodableArr[r12];
                return aSN1Encodable instanceof ASN1Sequence ? ((ASN1Sequence) aSN1Encodable).parser() : aSN1Encodable instanceof ASN1Set ? ((ASN1Set) aSN1Encodable).parser() : aSN1Encodable;
            }

            @Override // org.bouncycastle.asn1.ASN1Encodable
            public ASN1Primitive toASN1Primitive() {
                return ASN1Set.this;
            }
        };
    }

    public int size() {
        return this.elements.length;
    }

    public ASN1Encodable[] toArray() {
        return ASN1EncodableVector.cloneElements(this.elements);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        if (this.sortedElements == null) {
            ASN1Encodable[] aSN1EncodableArr = (ASN1Encodable[]) this.elements.clone();
            this.sortedElements = aSN1EncodableArr;
            sort(aSN1EncodableArr);
        }
        return new DERSet(true, this.sortedElements);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLSet(this.elements, this.sortedElements);
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return "[]";
        }
        StringBuffer stringBuffer = new StringBuffer("[");
        int r22 = 0;
        while (true) {
            stringBuffer.append(this.elements[r22]);
            r22++;
            if (r22 >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }
}
