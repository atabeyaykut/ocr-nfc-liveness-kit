package c4;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class d implements Callable<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f1383a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1384b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1385c;

    public d(SharedPreferences sharedPreferences, String str, String str2) {
        this.f1383a = sharedPreferences;
        this.f1384b = str;
        this.f1385c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.f1383a.getString(this.f1384b, this.f1385c);
    }
}
