package p4;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class m9 {

    /* renamed from: a, reason: collision with root package name */
    public Object f12508a;

    /* renamed from: b, reason: collision with root package name */
    public Object f12509b;

    /* renamed from: c, reason: collision with root package name */
    public Object f12510c;

    public m9() {
    }

    public /* synthetic */ m9(String str, b0.a aVar) {
        c5.y yVar = c5.y.f2129g;
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f12510c = yVar;
        this.f12509b = aVar;
        this.f12508a = str;
    }

    public /* synthetic */ m9(ma.h classifierDescriptor, List arguments, m9 m9Var) {
        kotlin.jvm.internal.h.f(classifierDescriptor, "classifierDescriptor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        this.f12508a = classifierDescriptor;
        this.f12509b = arguments;
        this.f12510c = m9Var;
    }

    public static void a(l6.a aVar, p6.f fVar) {
        b(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", fVar.f12836a);
        b(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        b(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", "18.2.6");
        b(aVar, "Accept", "application/json");
        b(aVar, "X-CRASHLYTICS-DEVICE-MODEL", fVar.f12837b);
        b(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", fVar.f12838c);
        b(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", fVar.f12839d);
        b(aVar, "X-CRASHLYTICS-INSTALLATION-ID", ((h6.g0) fVar.f12840e).c());
    }

    public static void b(l6.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.f9393c.put(str, str2);
        }
    }

    public static HashMap c(p6.f fVar) {
        HashMap map = new HashMap();
        map.put("build_version", fVar.f12842h);
        map.put("display_version", fVar.f12841g);
        map.put("source", Integer.toString(fVar.f12843i));
        String str = fVar.f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    public final JSONObject d(i1 i1Var) {
        int r02 = i1Var.f12397a;
        ((c5.y) this.f12510c).E("Settings response code was: " + r02);
        if (!(r02 == 200 || r02 == 201 || r02 == 202 || r02 == 203)) {
            c5.y yVar = (c5.y) this.f12510c;
            StringBuilder sbE = androidx.appcompat.widget.v.e("Settings request failed; (status: ", r02, ") from ");
            sbE.append((String) this.f12508a);
            String string = sbE.toString();
            if (!yVar.f(6)) {
                return null;
            }
            Log.e("FirebaseCrashlytics", string, null);
            return null;
        }
        String str = (String) i1Var.f12398b;
        try {
            return new JSONObject(str);
        } catch (Exception e10) {
            ((c5.y) this.f12510c).F("Failed to parse settings JSON from " + ((String) this.f12508a), e10);
            ((c5.y) this.f12510c).F("Settings response " + str, null);
            return null;
        }
    }

    public final n9 e() {
        Boolean bool;
        String str = (String) this.f12508a;
        if (str != null && (bool = (Boolean) this.f12509b) != null && ((Integer) this.f12510c) != null) {
            return new n9(str, bool.booleanValue(), ((Integer) this.f12510c).intValue());
        }
        StringBuilder sb2 = new StringBuilder();
        if (((String) this.f12508a) == null) {
            sb2.append(" libraryName");
        }
        if (((Boolean) this.f12509b) == null) {
            sb2.append(" enableFirelog");
        }
        if (((Integer) this.f12510c) == null) {
            sb2.append(" firelogEventType");
        }
        String strValueOf = String.valueOf(sb2);
        throw new IllegalStateException(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 28), "Missing required properties:", strValueOf));
    }
}
