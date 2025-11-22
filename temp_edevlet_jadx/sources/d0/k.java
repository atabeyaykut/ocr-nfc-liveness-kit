package d0;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class k implements Callable<r<f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InputStream f4549a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4550b = null;

    public k(ByteArrayInputStream byteArrayInputStream) {
        this.f4549a = byteArrayInputStream;
    }

    @Override // java.util.concurrent.Callable
    public final r<f> call() throws Exception {
        return g.c(this.f4549a, this.f4550b);
    }
}
