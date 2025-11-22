package af;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.h;
import rc.v;
import ud.d0;
import vd.g;

/* loaded from: classes3.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public final bf.a f273a;

    /* renamed from: b, reason: collision with root package name */
    public final bf.c f274b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f275c;

    public b(bf.a aVar, bf.c cVar, Context context) {
        this.f273a = aVar;
        this.f274b = cVar;
        this.f275c = context;
    }

    public final String a() {
        SharedPreferences sharedPreferencesE = e();
        this.f274b.getClass();
        return String.valueOf(sharedPreferencesE.getString("language", "tr"));
    }

    public final v b() {
        this.f273a.getClass();
        dd.b bVar = new dd.b(0);
        v.a aVar = new v.a();
        TimeUnit unit = TimeUnit.MINUTES;
        h.f(unit, "unit");
        aVar.f14587r = sc.c.b(unit);
        aVar.f14588s = sc.c.b(unit);
        aVar.f14573c.add(bVar);
        return new v(aVar);
    }

    public final v c() {
        this.f273a.getClass();
        dd.b bVar = new dd.b(0);
        SharedPreferences sharedPreferencesE = e();
        v.a aVar = new v.a();
        TimeUnit unit = TimeUnit.MINUTES;
        h.f(unit, "unit");
        aVar.f14587r = sc.c.b(unit);
        aVar.f14588s = sc.c.b(unit);
        aVar.f14589t = sc.c.b(unit);
        ArrayList arrayList = aVar.f14573c;
        arrayList.add(bVar);
        arrayList.add(new hf.b(sharedPreferencesE));
        arrayList.add(new hf.a(sharedPreferencesE));
        return new v(aVar);
    }

    public final d0 d() {
        this.f273a.getClass();
        v vVarC = c();
        d0.b bVar = new d0.b();
        bVar.c("https://api.turkiye.gov.tr/");
        bVar.f18004b = vVarC;
        bVar.a(new g());
        bVar.b(wd.a.c());
        return bVar.d();
    }

    public final SharedPreferences e() {
        this.f274b.getClass();
        Context context = this.f275c;
        h.f(context, "context");
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("MainActivity", 0);
        h.e(sharedPreferences, "context.applicationConte…y\", Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    public final SharedPreferences.Editor f() {
        SharedPreferences sharedPreferencesE = e();
        this.f274b.getClass();
        SharedPreferences.Editor editorEdit = sharedPreferencesE.edit();
        h.e(editorEdit, "sharedPreferences.edit()");
        return editorEdit;
    }
}
