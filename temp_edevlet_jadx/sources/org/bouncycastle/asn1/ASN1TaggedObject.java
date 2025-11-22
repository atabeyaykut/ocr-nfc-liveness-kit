package org.bouncycastle.asn1;

import ab.b;
import android.support.v4.media.a;
import java.io.IOException;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements ASN1TaggedObjectParser {
    private static final int DECLARED_EXPLICIT = 1;
    private static final int DECLARED_IMPLICIT = 2;
    private static final int PARSED_EXPLICIT = 3;
    private static final int PARSED_IMPLICIT = 4;
    final int explicitness;
    final ASN1Encodable obj;
    final int tagClass;
    final int tagNo;

    public ASN1TaggedObject(int r22, int r32, int r42, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == null) {
            throw new NullPointerException("'obj' cannot be null");
        }
        if (r32 == 0 || (r32 & 192) != r32) {
            throw new IllegalArgumentException(a.d("invalid tag class: ", r32));
        }
        this.explicitness = aSN1Encodable instanceof ASN1Choice ? 1 : r22;
        this.tagClass = r32;
        this.tagNo = r42;
        this.obj = aSN1Encodable;
    }

    public ASN1TaggedObject(boolean z10, int r22, int r32, ASN1Encodable aSN1Encodable) {
        this(z10 ? 1 : 2, r22, r32, aSN1Encodable);
    }

    public ASN1TaggedObject(boolean z10, int r32, ASN1Encodable aSN1Encodable) {
        this(z10, 128, r32, aSN1Encodable);
    }

    private static ASN1TaggedObject checkInstance(Object obj) {
        if (obj != null) {
            return getInstance(obj);
        }
        throw new NullPointerException("'obj' cannot be null");
    }

    private static ASN1TaggedObject checkInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException("this method not valid for implicitly tagged tagged objects");
        }
        if (aSN1TaggedObject != null) {
            return aSN1TaggedObject;
        }
        throw new NullPointerException("'taggedObject' cannot be null");
    }

    private static ASN1TaggedObject checkedCast(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            return (ASN1TaggedObject) aSN1Primitive;
        }
        throw new IllegalStateException("unexpected object: ".concat(aSN1Primitive.getClass().getName()));
    }

    public static ASN1Primitive createConstructedDL(int r32, int r42, ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() == 1 ? new DLTaggedObject(3, r32, r42, aSN1EncodableVector.get(0)) : new DLTaggedObject(4, r32, r42, DLFactory.createSequence(aSN1EncodableVector));
    }

    public static ASN1Primitive createConstructedIL(int r32, int r42, ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() == 1 ? new BERTaggedObject(3, r32, r42, aSN1EncodableVector.get(0)) : new BERTaggedObject(4, r32, r42, BERFactory.createSequence(aSN1EncodableVector));
    }

    public static ASN1Primitive createPrimitive(int r22, int r32, byte[] bArr) {
        return new DLTaggedObject(4, r22, r32, new DEROctetString(bArr));
    }

    public static ASN1TaggedObject getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1TaggedObject) {
                return (ASN1TaggedObject) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return checkedCast(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException(a.c(e10, new StringBuilder("failed to construct tagged object from byte[]: ")));
            }
        }
        throw new IllegalArgumentException(b.f(obj, "unknown object in getInstance: "));
    }

    public static ASN1TaggedObject getInstance(Object obj, int r12) {
        return ASN1Util.checkTagClass(checkInstance(obj), r12);
    }

    public static ASN1TaggedObject getInstance(Object obj, int r12, int r22) {
        return ASN1Util.checkTag(checkInstance(obj), r12, r22);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, int r12, int r22, boolean z10) {
        return ASN1Util.getExplicitBaseTagged(checkInstance(aSN1TaggedObject, z10), r12, r22);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, int r12, boolean z10) {
        return ASN1Util.getExplicitBaseTagged(checkInstance(aSN1TaggedObject, z10), r12);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return ASN1Util.getExplicitContextBaseTagged(checkInstance(aSN1TaggedObject, z10));
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1TaggedObject)) {
            return false;
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
        if (this.tagNo != aSN1TaggedObject.tagNo || this.tagClass != aSN1TaggedObject.tagClass) {
            return false;
        }
        if (this.explicitness != aSN1TaggedObject.explicitness && isExplicit() != aSN1TaggedObject.isExplicit()) {
            return false;
        }
        ASN1Primitive aSN1Primitive2 = this.obj.toASN1Primitive();
        ASN1Primitive aSN1Primitive3 = aSN1TaggedObject.obj.toASN1Primitive();
        if (aSN1Primitive2 == aSN1Primitive3) {
            return true;
        }
        if (isExplicit()) {
            return aSN1Primitive2.asn1Equals(aSN1Primitive3);
        }
        try {
            return Arrays.areEqual(getEncoded(), aSN1TaggedObject.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    public ASN1Object getBaseObject() {
        ASN1Encodable aSN1Encodable = this.obj;
        return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
    }

    public ASN1Primitive getBaseUniversal(boolean z10, int r32) {
        ASN1UniversalType aSN1UniversalType = ASN1UniversalTypes.get(r32);
        if (aSN1UniversalType != null) {
            return getBaseUniversal(z10, aSN1UniversalType);
        }
        throw new IllegalArgumentException(a.d("unsupported UNIVERSAL tag number: ", r32));
    }

    public ASN1Primitive getBaseUniversal(boolean z10, ASN1UniversalType aSN1UniversalType) {
        if (z10) {
            if (isExplicit()) {
                return aSN1UniversalType.checkedCast(this.obj.toASN1Primitive());
            }
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        if (1 == this.explicitness) {
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        int r02 = this.explicitness;
        return r02 != 3 ? r02 != 4 ? aSN1UniversalType.checkedCast(aSN1Primitive) : aSN1Primitive instanceof ASN1Sequence ? aSN1UniversalType.fromImplicitConstructed((ASN1Sequence) aSN1Primitive) : aSN1UniversalType.fromImplicitPrimitive((DEROctetString) aSN1Primitive) : aSN1UniversalType.fromImplicitConstructed(rebuildConstructed(aSN1Primitive));
    }

    public ASN1Object getExplicitBaseObject() {
        if (!isExplicit()) {
            throw new IllegalStateException("object implicit - explicit expected.");
        }
        ASN1Encodable aSN1Encodable = this.obj;
        return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
    }

    public ASN1TaggedObject getExplicitBaseTagged() {
        if (isExplicit()) {
            return checkedCast(this.obj.toASN1Primitive());
        }
        throw new IllegalStateException("object implicit - explicit expected.");
    }

    public ASN1TaggedObject getImplicitBaseTagged(int r32, int r42) {
        if (r32 == 0 || (r32 & 192) != r32) {
            throw new IllegalArgumentException(a.d("invalid base tag class: ", r32));
        }
        int r02 = this.explicitness;
        if (r02 != 1) {
            return r02 != 2 ? replaceTag(r32, r42) : ASN1Util.checkTag(checkedCast(this.obj.toASN1Primitive()), r32, r42);
        }
        throw new IllegalStateException("object explicit - implicit expected.");
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagClass() {
        return this.tagClass;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag() {
        return this.tagClass == 128;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag(int r32) {
        return this.tagClass == 128 && this.tagNo == r32;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTag(int r22, int r32) {
        return this.tagClass == r22 && this.tagNo == r32;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTagClass(int r22) {
        return this.tagClass == r22;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return (((this.tagClass * 7919) ^ this.tagNo) ^ (isExplicit() ? 15 : 240)) ^ this.obj.toASN1Primitive().hashCode();
    }

    public boolean isExplicit() {
        int r02 = this.explicitness;
        return r02 == 1 || r02 == 3;
    }

    public boolean isParsed() {
        int r02 = this.explicitness;
        return r02 == 3 || r02 == 4;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z10, int r32) throws IOException {
        ASN1Primitive baseUniversal = getBaseUniversal(z10, r32);
        return r32 != 3 ? r32 != 4 ? r32 != 16 ? r32 != 17 ? baseUniversal : ((ASN1Set) baseUniversal).parser() : ((ASN1Sequence) baseUniversal).parser() : ((ASN1OctetString) baseUniversal).parser() : ((ASN1BitString) baseUniversal).parser();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return getExplicitBaseObject();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return getExplicitBaseTagged();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int r12, int r22) throws IOException {
        return getImplicitBaseTagged(r12, r22);
    }

    public abstract ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive);

    public abstract ASN1TaggedObject replaceTag(int r12, int r22);

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    public String toString() {
        return ASN1Util.getTagText(this.tagClass, this.tagNo) + this.obj;
    }
}
