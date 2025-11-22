package d0;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class i implements Callable<r<f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f4542a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4543b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4544c;

    public i(Context context, String str, String str2) {
        this.f4542a = context;
        this.f4543b = str;
        this.f4544c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final r<f> call() throws Exception {
        return g.b(this.f4542a, this.f4543b, this.f4544c);
    }
}
