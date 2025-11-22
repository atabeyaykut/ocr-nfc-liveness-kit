package eb;

import androidx.exifinterface.media.ExifInterface;
import eb.o;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final p f5233a = new p();

    public static o a(String representation) {
        tb.c cVar;
        o bVar;
        kotlin.jvm.internal.h.f(representation, "representation");
        char cCharAt = representation.charAt(0);
        tb.c[] cVarArrValues = tb.c.values();
        int length = cVarArrValues.length;
        int r42 = 0;
        while (true) {
            if (r42 >= length) {
                cVar = null;
                break;
            }
            cVar = cVarArrValues[r42];
            if (cVar.q().charAt(0) == cCharAt) {
                break;
            }
            r42++;
        }
        if (cVar != null) {
            return new o.c(cVar);
        }
        if (cCharAt == 'V') {
            return new o.c(null);
        }
        if (cCharAt == '[') {
            String strSubstring = representation.substring(1);
            kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
            bVar = new o.a(a(strSubstring));
        } else {
            if (cCharAt == 'L') {
                mc.n.I(representation, ';');
            }
            String strSubstring2 = representation.substring(1, representation.length() - 1);
            kotlin.jvm.internal.h.e(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            bVar = new o.b(strSubstring2);
        }
        return bVar;
    }

    public static String e(o type) {
        StringBuilder sb2;
        String strQ;
        kotlin.jvm.internal.h.f(type, "type");
        if (type instanceof o.a) {
            sb2 = new StringBuilder("[");
            sb2.append(e(((o.a) type).f5230i));
        } else {
            if (type instanceof o.c) {
                tb.c cVar = ((o.c) type).f5232i;
                return (cVar == null || (strQ = cVar.q()) == null) ? ExifInterface.GPS_MEASUREMENT_INTERRUPTED : strQ;
            }
            if (!(type instanceof o.b)) {
                throw new j7.p();
            }
            sb2 = new StringBuilder("L");
            sb2.append(((o.b) type).f5231i);
            sb2.append(';');
        }
        return sb2.toString();
    }

    public final o.b b(String internalName) {
        kotlin.jvm.internal.h.f(internalName, "internalName");
        return new o.b(internalName);
    }

    public final o.c c(ja.l lVar) {
        switch (lVar) {
            case BOOLEAN:
                return o.f5223a;
            case CHAR:
                return o.f5224b;
            case BYTE:
                return o.f5225c;
            case SHORT:
                return o.f5226d;
            case INT:
                return o.f5227e;
            case FLOAT:
                return o.f;
            case LONG:
                return o.f5228g;
            case DOUBLE:
                return o.f5229h;
            default:
                throw new j7.p();
        }
    }

    public final o.b d() {
        return new o.b("java/lang/Class");
    }

    public final /* bridge */ /* synthetic */ String f(Object obj) {
        return e((o) obj);
    }
}
