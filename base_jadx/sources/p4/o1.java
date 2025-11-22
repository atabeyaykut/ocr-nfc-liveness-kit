package p4;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class o1 implements t6.d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ o1 f12538a = new o1();

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        t6.e eVar2 = eVar;
        Charset charset = p1.f;
        eVar2.a(p1.f12585g, entry.getKey());
        eVar2.a(p1.f12586h, entry.getValue());
    }
}
