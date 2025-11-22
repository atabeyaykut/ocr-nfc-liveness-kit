package o6;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.clearcut.z;
import com.google.android.gms.internal.measurement.w5;
import h5.l;
import h6.c0;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p4.m9;

/* loaded from: classes2.dex */
public final class c implements d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11249a;

    /* renamed from: b, reason: collision with root package name */
    public final p6.f f11250b;

    /* renamed from: c, reason: collision with root package name */
    public final e f11251c;

    /* renamed from: d, reason: collision with root package name */
    public final z f11252d;

    /* renamed from: e, reason: collision with root package name */
    public final w5 f11253e;
    public final m9 f;

    /* renamed from: g, reason: collision with root package name */
    public final c0 f11254g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicReference<p6.d> f11255h;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicReference<l<p6.a>> f11256i;

    public c(Context context, p6.f fVar, z zVar, e eVar, w5 w5Var, m9 m9Var, c0 c0Var) {
        AtomicReference<p6.d> atomicReference = new AtomicReference<>();
        this.f11255h = atomicReference;
        this.f11256i = new AtomicReference<>(new l());
        this.f11249a = context;
        this.f11250b = fVar;
        this.f11252d = zVar;
        this.f11251c = eVar;
        this.f11253e = w5Var;
        this.f = m9Var;
        this.f11254g = c0Var;
        JSONObject jSONObject = new JSONObject();
        atomicReference.set(new p6.e(jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : System.currentTimeMillis() + 3600000, null, new p6.c(jSONObject.optInt("max_custom_exception_events", 8)), new p6.b(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false))));
    }

    public static void b(JSONObject jSONObject, String str) throws JSONException {
        StringBuilder sbE = androidx.constraintlayout.core.a.e(str);
        sbE.append(jSONObject.toString());
        String string = sbE.toString();
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", string, null);
        }
    }

    public final p6.e a(int r92) {
        p6.e eVar = null;
        try {
            if (g.d.b(2, r92)) {
                return null;
            }
            JSONObject jSONObjectB = this.f11253e.b();
            if (jSONObjectB == null) {
                if (!Log.isLoggable("FirebaseCrashlytics", 3)) {
                    return null;
                }
                Log.d("FirebaseCrashlytics", "No cached settings data found.", null);
                return null;
            }
            e eVar2 = this.f11251c;
            eVar2.getClass();
            p6.e eVarA = (jSONObjectB.getInt("settings_version") != 3 ? new a() : new g()).a(eVar2.f11257a, jSONObjectB);
            if (eVarA == null) {
                Log.e("FirebaseCrashlytics", "Failed to parse cached settings data.", null);
                return null;
            }
            b(jSONObjectB, "Loaded cached settings: ");
            this.f11252d.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!g.d.b(3, r92)) {
                if (eVarA.f12835d < jCurrentTimeMillis) {
                    if (!Log.isLoggable("FirebaseCrashlytics", 2)) {
                        return null;
                    }
                    Log.v("FirebaseCrashlytics", "Cached settings have expired.", null);
                    return null;
                }
            }
            try {
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Returning cached settings.", null);
                }
                return eVarA;
            } catch (Exception e10) {
                e = e10;
                eVar = eVarA;
                Log.e("FirebaseCrashlytics", "Failed to get cached settings", e);
                return eVar;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }
}
