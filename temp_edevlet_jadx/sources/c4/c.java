package c4;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class c implements Callable<Long> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f1380a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1381b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Long f1382c;

    public c(SharedPreferences sharedPreferences, String str, Long l5) {
        this.f1380a = sharedPreferences;
        this.f1381b = str;
        this.f1382c = l5;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Long call() throws Exception {
        return Long.valueOf(this.f1380a.getLong(this.f1381b, this.f1382c.longValue()));
    }
}
