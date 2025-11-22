package r4;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class f7 implements t6.d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ f7 f14129a = new f7();

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        t6.e eVar2 = eVar;
        Charset charset = g7.f;
        eVar2.a(g7.f14141g, entry.getKey());
        eVar2.a(g7.f14142h, entry.getValue());
    }
}
