package c4;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class b implements Callable<Integer> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f1377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1378b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Integer f1379c;

    public b(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f1377a = sharedPreferences;
        this.f1378b = str;
        this.f1379c = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Integer call() throws Exception {
        return Integer.valueOf(this.f1377a.getInt(this.f1378b, this.f1379c.intValue()));
    }
}
