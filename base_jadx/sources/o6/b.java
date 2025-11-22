package o6;

import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c5.y;
import com.google.android.gms.internal.measurement.w5;
import h5.j;
import h5.k;
import h5.l;
import h5.n;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p4.m9;

/* loaded from: classes2.dex */
public final class b implements j<Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f11248a;

    public b(c cVar) {
        this.f11248a = cVar;
    }

    @Override // h5.j
    @NonNull
    public final k<Void> c(@Nullable Void r12) throws Exception {
        JSONObject jSONObjectD;
        FileWriter fileWriter;
        c cVar = this.f11248a;
        m9 m9Var = cVar.f;
        p6.f fVar = cVar.f11250b;
        m9Var.getClass();
        FileWriter fileWriter2 = null;
        try {
            HashMap mapC = m9.c(fVar);
            b0.a aVar = (b0.a) m9Var.f12509b;
            String str = (String) m9Var.f12508a;
            aVar.getClass();
            l6.a aVar2 = new l6.a(str, mapC);
            HashMap map = aVar2.f9393c;
            map.put("User-Agent", "Crashlytics Android SDK/18.2.6");
            map.put("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
            m9.a(aVar2, fVar);
            ((y) m9Var.f12510c).l("Requesting settings from " + ((String) m9Var.f12508a));
            ((y) m9Var.f12510c).E("Settings query params were: " + mapC);
            jSONObjectD = m9Var.d(aVar2.b());
        } catch (IOException e10) {
            if (((y) m9Var.f12510c).f(6)) {
                Log.e("FirebaseCrashlytics", "Settings request failed.", e10);
            }
            jSONObjectD = null;
        }
        if (jSONObjectD != null) {
            e eVar = cVar.f11251c;
            eVar.getClass();
            p6.e eVarA = (jSONObjectD.getInt("settings_version") != 3 ? new a() : new g()).a(eVar.f11257a, jSONObjectD);
            long j10 = eVarA.f12835d;
            w5 w5Var = cVar.f11253e;
            w5Var.getClass();
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Writing settings to cache file...", null);
            }
            try {
                jSONObjectD.put("expires_at", j10);
                fileWriter = new FileWriter((File) w5Var.f3816a);
                try {
                    try {
                        fileWriter.write(jSONObjectD.toString());
                        fileWriter.flush();
                    } catch (Exception e11) {
                        e = e11;
                        Log.e("FirebaseCrashlytics", "Failed to cache settings", e);
                        h6.e.a(fileWriter, "Failed to close settings writer.");
                        c.b(jSONObjectD, "Loaded settings: ");
                        String str2 = fVar.f;
                        SharedPreferences.Editor editorEdit = cVar.f11249a.getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
                        editorEdit.putString("existing_instance_identifier", str2);
                        editorEdit.apply();
                        cVar.f11255h.set(eVarA);
                        AtomicReference<l<p6.a>> atomicReference = cVar.f11256i;
                        l<p6.a> lVar = atomicReference.get();
                        p6.a aVar3 = eVarA.f12832a;
                        lVar.d(aVar3);
                        l<p6.a> lVar2 = new l<>();
                        lVar2.d(aVar3);
                        atomicReference.set(lVar2);
                        return n.e(null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter2 = fileWriter;
                    h6.e.a(fileWriter2, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                fileWriter = null;
            } catch (Throwable th3) {
                th = th3;
                h6.e.a(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
            h6.e.a(fileWriter, "Failed to close settings writer.");
            c.b(jSONObjectD, "Loaded settings: ");
            String str22 = fVar.f;
            SharedPreferences.Editor editorEdit2 = cVar.f11249a.getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
            editorEdit2.putString("existing_instance_identifier", str22);
            editorEdit2.apply();
            cVar.f11255h.set(eVarA);
            AtomicReference<l<p6.a>> atomicReference2 = cVar.f11256i;
            l<p6.a> lVar3 = atomicReference2.get();
            p6.a aVar32 = eVarA.f12832a;
            lVar3.d(aVar32);
            l<p6.a> lVar22 = new l<>();
            lVar22.d(aVar32);
            atomicReference2.set(lVar22);
        }
        return n.e(null);
    }
}
