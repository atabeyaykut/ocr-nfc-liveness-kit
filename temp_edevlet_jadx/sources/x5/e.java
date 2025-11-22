package x5;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import r3.p;
import r3.r;
import r3.u;
import w3.f;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f19176a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19177b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19178c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19179d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19180e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f19181g;

    public e(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        r.k("ApplicationId must be set.", !f.a(str));
        this.f19177b = str;
        this.f19176a = str2;
        this.f19178c = str3;
        this.f19179d = str4;
        this.f19180e = str5;
        this.f = str6;
        this.f19181g = str7;
    }

    @Nullable
    public static e a(@NonNull Context context) {
        u uVar = new u(context);
        String strA = uVar.a("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new e(strA, uVar.a("google_api_key"), uVar.a("firebase_database_url"), uVar.a("ga_trackingId"), uVar.a("gcm_defaultSenderId"), uVar.a("google_storage_bucket"), uVar.a("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return p.a(this.f19177b, eVar.f19177b) && p.a(this.f19176a, eVar.f19176a) && p.a(this.f19178c, eVar.f19178c) && p.a(this.f19179d, eVar.f19179d) && p.a(this.f19180e, eVar.f19180e) && p.a(this.f, eVar.f) && p.a(this.f19181g, eVar.f19181g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19177b, this.f19176a, this.f19178c, this.f19179d, this.f19180e, this.f, this.f19181g});
    }

    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f19177b, "applicationId");
        aVar.a(this.f19176a, "apiKey");
        aVar.a(this.f19178c, "databaseUrl");
        aVar.a(this.f19180e, "gcmSenderId");
        aVar.a(this.f, "storageBucket");
        aVar.a(this.f19181g, "projectId");
        return aVar.toString();
    }
}
