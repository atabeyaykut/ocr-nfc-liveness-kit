package k4;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements t6.d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ n f8752a = new n();

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        t6.e eVar2 = eVar;
        Charset charset = o.f;
        eVar2.a(o.f8753g, entry.getKey());
        eVar2.a(o.f8754h, entry.getValue());
    }
}
