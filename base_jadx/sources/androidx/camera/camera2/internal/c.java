package androidx.camera.camera2.internal;

import android.util.JsonReader;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import b3.r;
import io.realm.g0;
import java.util.List;
import k6.a;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Interpolator, r.a, a.InterfaceC0162a, g0.a {
    public static int a(int r02, int r12, int r22, int r32) {
        return ((r02 * r12) / r22) + r32;
    }

    public static int c(List list, int r12, int r22) {
        return (list.hashCode() + r12) * r22;
    }

    public static Integer e(int r02, v.e eVar, CharSequence charSequence, int r32, int r42) {
        v.e.c(eVar, Integer.valueOf(r02), charSequence, r32);
        return Integer.valueOf(r42);
    }

    public static String f(String str, Class cls, String str2) {
        return str + cls + str2;
    }

    public static String g(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String h(StringBuilder sb2, String str, String str2) {
        sb2.append(str);
        sb2.append(str2);
        return sb2.toString();
    }

    public static StringBuilder i(StringBuilder sb2, String str, String str2, ConfigurableProvider configurableProvider, String str3) {
        sb2.append(str);
        sb2.append(str2);
        configurableProvider.addAlgorithm(str3, sb2.toString());
        return new StringBuilder();
    }

    public static ASN1ObjectIdentifier j(String str) {
        return new ASN1ObjectIdentifier(str).intern();
    }

    public static /* synthetic */ String k(int r12) {
        return r12 == 1 ? "OK" : r12 == 2 ? "BAD_CONFIG" : r12 == 3 ? "AUTH_ERROR" : "null";
    }

    @Override // b3.r.a
    public Object apply(Object obj) {
        r2.b bVar = b3.r.f;
        throw new c3.a("Timed out while trying to open db.", (Throwable) obj);
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) {
        return k6.a.b(jsonReader);
    }

    @Override // io.realm.g0.a
    public void d(io.realm.g0 g0Var) {
        g0Var.r(MyCityListDBModel.class);
        g0Var.r(InfoMessageModelRealm.class);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$6(f);
    }
}
