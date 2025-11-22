package d6;

import androidx.annotation.GuardedBy;
import androidx.camera.core.impl.p;
import c6.x;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public volatile f6.a f4665a;

    /* renamed from: b, reason: collision with root package name */
    public volatile g6.b f4666b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    public final ArrayList f4667c;

    public a(a7.a<z5.a> aVar) {
        g6.c cVar = new g6.c();
        f6.f fVar = new f6.f();
        this.f4666b = cVar;
        this.f4667c = new ArrayList();
        this.f4665a = fVar;
        ((x) aVar).a(new p(3, this));
    }
}
