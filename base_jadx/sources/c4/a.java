package c4;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class a implements Callable<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f1374a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1375b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Boolean f1376c;

    public a(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f1374a = sharedPreferences;
        this.f1375b = str;
        this.f1376c = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf(this.f1374a.getBoolean(this.f1375b, this.f1376c.booleanValue()));
    }
}
