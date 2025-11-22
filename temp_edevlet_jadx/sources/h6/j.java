package h6;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class j implements Callable<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f6924a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f6925b;

    public j(t tVar, long j10) {
        this.f6925b = tVar;
        this.f6924a = j10;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.f6924a);
        this.f6925b.f6967j.a(bundle);
        return null;
    }
}
