package c4;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class f implements Callable<SharedPreferences> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f1387a;

    public f(Context context) {
        this.f1387a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ SharedPreferences call() throws Exception {
        return this.f1387a.getSharedPreferences("google_sdk_flags", 0);
    }
}
