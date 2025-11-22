package h6;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o6.d f6976a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f6977b;

    public w(x xVar, o6.c cVar) {
        this.f6977b = xVar;
        this.f6976a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        x.a(this.f6977b, this.f6976a);
    }
}
