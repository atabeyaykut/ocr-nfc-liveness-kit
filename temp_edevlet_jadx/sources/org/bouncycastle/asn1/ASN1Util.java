package org.bouncycastle.asn1;

import androidx.browser.browseractions.a;
import androidx.camera.camera2.internal.c;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class ASN1Util {
    public static ASN1TaggedObject checkContextTag(ASN1TaggedObject aSN1TaggedObject, int r22) {
        return checkTag(aSN1TaggedObject, 128, r22);
    }

    public static ASN1TaggedObjectParser checkContextTag(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22) {
        return checkTag(aSN1TaggedObjectParser, 128, r22);
    }

    public static ASN1TaggedObject checkContextTagClass(ASN1TaggedObject aSN1TaggedObject) {
        return checkTagClass(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObjectParser checkContextTagClass(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return checkTagClass(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObject checkTag(ASN1TaggedObject aSN1TaggedObject, int r32, int r42) {
        if (aSN1TaggedObject.hasTag(r32, r42)) {
            return aSN1TaggedObject;
        }
        throw new IllegalStateException(c.g("Expected ", getTagText(r32, r42), " tag but found ", getTagText(aSN1TaggedObject)));
    }

    public static ASN1TaggedObject checkTagClass(ASN1TaggedObject aSN1TaggedObject, int r42) {
        if (aSN1TaggedObject.hasTagClass(r42)) {
            return aSN1TaggedObject;
        }
        throw new IllegalStateException(c.g("Expected ", getTagClassText(r42), " tag but found ", getTagClassText(aSN1TaggedObject)));
    }

    public static ASN1Primitive getBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int r12, int r22, boolean z10, int r42) {
        return checkTag(aSN1TaggedObject, r12, r22).getBaseUniversal(z10, r42);
    }

    public static ASN1Primitive getContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int r22, boolean z10, int r42) {
        return getBaseUniversal(aSN1TaggedObject, 128, r22, z10, r42);
    }

    public static ASN1Object getExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int r12, int r22) {
        return checkTag(aSN1TaggedObject, r12, r22).getExplicitBaseObject();
    }

    public static ASN1TaggedObject getExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12) {
        return checkTagClass(aSN1TaggedObject, r12).getExplicitBaseTagged();
    }

    public static ASN1TaggedObject getExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12, int r22) {
        return checkTag(aSN1TaggedObject, r12, r22).getExplicitBaseTagged();
    }

    public static ASN1Object getExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int r22) {
        return getExplicitBaseObject(aSN1TaggedObject, 128, r22);
    }

    public static ASN1TaggedObject getExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject) {
        return getExplicitBaseTagged(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObject getExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r22) {
        return getExplicitBaseTagged(aSN1TaggedObject, 128, r22);
    }

    public static ASN1TaggedObject getImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12, int r22, int r32, int r42) {
        return checkTag(aSN1TaggedObject, r12, r22).getImplicitBaseTagged(r32, r42);
    }

    public static ASN1TaggedObject getImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r22, int r32, int r42) {
        return getImplicitBaseTagged(aSN1TaggedObject, 128, r22, r32, r42);
    }

    public static String getTagClassText(int r12) {
        return r12 != 64 ? r12 != 128 ? r12 != 192 ? "UNIVERSAL" : "PRIVATE" : "CONTEXT" : "APPLICATION";
    }

    public static String getTagClassText(ASN1Tag aSN1Tag) {
        return getTagClassText(aSN1Tag.getTagClass());
    }

    public static String getTagClassText(ASN1TaggedObject aSN1TaggedObject) {
        return getTagClassText(aSN1TaggedObject.getTagClass());
    }

    public static String getTagClassText(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return getTagClassText(aSN1TaggedObjectParser.getTagClass());
    }

    public static String getTagText(int r22, int r32) {
        return a.b(r22 != 64 ? r22 != 128 ? r22 != 192 ? new StringBuilder("[UNIVERSAL ") : new StringBuilder("[PRIVATE ") : new StringBuilder("[CONTEXT ") : new StringBuilder("[APPLICATION "), r32, "]");
    }

    public static String getTagText(ASN1Tag aSN1Tag) {
        return getTagText(aSN1Tag.getTagClass(), aSN1Tag.getTagNumber());
    }

    public static String getTagText(ASN1TaggedObject aSN1TaggedObject) {
        return getTagText(aSN1TaggedObject.getTagClass(), aSN1TaggedObject.getTagNo());
    }

    public static String getTagText(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return getTagText(aSN1TaggedObjectParser.getTagClass(), aSN1TaggedObjectParser.getTagNo());
    }

    public static ASN1Encodable parseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22, boolean z10, int r42) throws IOException {
        return checkTag(aSN1TaggedObjectParser, r12, r22).parseBaseUniversal(z10, r42);
    }

    public static ASN1Encodable parseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22, boolean z10, int r42) throws IOException {
        return parseBaseUniversal(aSN1TaggedObjectParser, 128, r22, z10, r42);
    }

    public static ASN1Encodable parseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22) throws IOException {
        return checkTag(aSN1TaggedObjectParser, r12, r22).parseExplicitBaseObject();
    }

    public static ASN1TaggedObjectParser parseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12) throws IOException {
        return checkTagClass(aSN1TaggedObjectParser, r12).parseExplicitBaseTagged();
    }

    public static ASN1TaggedObjectParser parseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22) throws IOException {
        return checkTag(aSN1TaggedObjectParser, r12, r22).parseExplicitBaseTagged();
    }

    public static ASN1Encodable parseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22) throws IOException {
        return parseExplicitBaseObject(aSN1TaggedObjectParser, 128, r22);
    }

    public static ASN1TaggedObjectParser parseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser) throws IOException {
        return parseExplicitBaseTagged(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObjectParser parseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22) throws IOException {
        return parseExplicitBaseTagged(aSN1TaggedObjectParser, 128, r22);
    }

    public static ASN1TaggedObjectParser parseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22, int r32, int r42) throws IOException {
        return checkTag(aSN1TaggedObjectParser, r12, r22).parseImplicitBaseTagged(r32, r42);
    }

    public static ASN1TaggedObjectParser parseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22, int r32, int r42) throws IOException {
        return parseImplicitBaseTagged(aSN1TaggedObjectParser, 128, r22, r32, r42);
    }

    public static ASN1Primitive tryGetBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int r12, int r22, boolean z10, int r42) {
        if (aSN1TaggedObject.hasTag(r12, r22)) {
            return aSN1TaggedObject.getBaseUniversal(z10, r42);
        }
        return null;
    }

    public static ASN1Primitive tryGetContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int r22, boolean z10, int r42) {
        return tryGetBaseUniversal(aSN1TaggedObject, 128, r22, z10, r42);
    }

    public static ASN1Object tryGetExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int r12, int r22) {
        if (aSN1TaggedObject.hasTag(r12, r22)) {
            return aSN1TaggedObject.getExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObject tryGetExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12) {
        if (aSN1TaggedObject.hasTagClass(r12)) {
            return aSN1TaggedObject.getExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1TaggedObject tryGetExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12, int r22) {
        if (aSN1TaggedObject.hasTag(r12, r22)) {
            return aSN1TaggedObject.getExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Object tryGetExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int r22) {
        return tryGetExplicitBaseObject(aSN1TaggedObject, 128, r22);
    }

    public static ASN1TaggedObject tryGetExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject) {
        return tryGetExplicitBaseTagged(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObject tryGetExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r22) {
        return tryGetExplicitBaseTagged(aSN1TaggedObject, 128, r22);
    }

    public static ASN1TaggedObject tryGetImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r12, int r22, int r32, int r42) {
        if (aSN1TaggedObject.hasTag(r12, r22)) {
            return aSN1TaggedObject.getImplicitBaseTagged(r32, r42);
        }
        return null;
    }

    public static ASN1TaggedObject tryGetImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int r22, int r32, int r42) {
        return tryGetImplicitBaseTagged(aSN1TaggedObject, 128, r22, r32, r42);
    }

    public static ASN1Encodable tryParseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22, boolean z10, int r42) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(r12, r22)) {
            return aSN1TaggedObjectParser.parseBaseUniversal(z10, r42);
        }
        return null;
    }

    public static ASN1Encodable tryParseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22, boolean z10, int r42) throws IOException {
        return tryParseBaseUniversal(aSN1TaggedObjectParser, 128, r22, z10, r42);
    }

    public static ASN1Encodable tryParseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(r12, r22)) {
            return aSN1TaggedObjectParser.parseExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12) throws IOException {
        if (aSN1TaggedObjectParser.hasTagClass(r12)) {
            return aSN1TaggedObjectParser.parseExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(r12, r22)) {
            return aSN1TaggedObjectParser.parseExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Encodable tryParseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22) throws IOException {
        return tryParseExplicitBaseObject(aSN1TaggedObjectParser, 128, r22);
    }

    public static ASN1TaggedObjectParser tryParseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser) throws IOException {
        return tryParseExplicitBaseTagged(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObjectParser tryParseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22) throws IOException {
        return tryParseExplicitBaseTagged(aSN1TaggedObjectParser, 128, r22);
    }

    public static ASN1TaggedObjectParser tryParseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r12, int r22, int r32, int r42) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(r12, r22)) {
            return aSN1TaggedObjectParser.parseImplicitBaseTagged(r32, r42);
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r22, int r32, int r42) throws IOException {
        return tryParseImplicitBaseTagged(aSN1TaggedObjectParser, 128, r22, r32, r42);
    }

    public static ASN1TaggedObjectParser checkTag(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r32, int r42) {
        if (aSN1TaggedObjectParser.hasTag(r32, r42)) {
            return aSN1TaggedObjectParser;
        }
        throw new IllegalStateException(c.g("Expected ", getTagText(r32, r42), " tag but found ", getTagText(aSN1TaggedObjectParser)));
    }

    public static ASN1TaggedObjectParser checkTagClass(ASN1TaggedObjectParser aSN1TaggedObjectParser, int r42) {
        if (aSN1TaggedObjectParser.hasTagClass(r42)) {
            return aSN1TaggedObjectParser;
        }
        throw new IllegalStateException(c.g("Expected ", getTagClassText(r42), " tag but found ", getTagClassText(aSN1TaggedObjectParser)));
    }
}
