package androidx.appcompat.graphics.drawable;

import android.util.JsonReader;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import k6.a;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import r2.h;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Interpolator, h, a.InterfaceC0162a {
    public static /* synthetic */ String c(int r12) {
        if (r12 == 1) {
            return "No member resolution should be done on captured type, it used only during constraint system resolution";
        }
        if (r12 == 2) {
            return "Scope for integer literal type (%s)";
        }
        if (r12 == 3) {
            return "Error scope for erased receiver type";
        }
        if (r12 == 4) {
            return "Scope for abbreviation %s";
        }
        if (r12 == 5) {
            return "Scope for stub type %s";
        }
        if (r12 == 6) {
            return "A scope for common supertype which is not a normal classifier";
        }
        if (r12 == 7) {
            return "Scope for error type %s";
        }
        if (r12 == 8) {
            return "Scope for unsupported type %s";
        }
        if (r12 == 9) {
            return "Error scope for class %s with arguments: %s";
        }
        if (r12 == 10) {
            return "Error resolution candidate for call %s";
        }
        throw null;
    }

    public static float d(float f, float f10, float f11, float f12) {
        return ((f - f10) * f11) + f12;
    }

    public static String e(int r12, String str, int r32, String str2, int r52) {
        StringBuilder sb2 = new StringBuilder(r12);
        sb2.append(str);
        sb2.append(r32);
        sb2.append(str2);
        sb2.append(r52);
        return sb2.toString();
    }

    public static String f(String str, int r22, String str2) {
        return str + r22 + str2;
    }

    public static String g(String str, Class cls) {
        return str + cls;
    }

    public static StringBuilder h(StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider, String str, String str2) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        return sb3;
    }

    public static Map i(HashMap map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }

    public static /* synthetic */ void j(int r02, String str) {
        if (r02 != 0) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(kotlin.jvm.internal.h.i(str));
        kotlin.jvm.internal.h.j(kotlin.jvm.internal.h.class.getName(), illegalArgumentException);
        throw illegalArgumentException;
    }

    public static byte[] k(ASN1Sequence aSN1Sequence, int r12) {
        return ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(r12)).getOctets();
    }

    public static /* synthetic */ String l(int r12) {
        return r12 == 1 ? "OK" : r12 == 2 ? "BAD_CONFIG" : "null";
    }

    public static /* synthetic */ String m(int r12) {
        return r12 == 1 ? "MERGE" : r12 == 2 ? "ADD" : r12 == 3 ? "SUBTRACT" : r12 == 4 ? "INTERSECT" : r12 == 5 ? "EXCLUDE_INTERSECTIONS" : "null";
    }

    @Override // r2.h
    public void a(Exception exc) {
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) {
        return k6.a.b(jsonReader);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$5(f);
    }
}
