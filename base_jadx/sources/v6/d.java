package v6;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f18245a;

    public d(e eVar) {
        this.f18245a = eVar;
    }

    public final void a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
        e eVar = this.f18245a;
        f fVar = new f(writer, eVar.f18249a, eVar.f18250b, eVar.f18251c, eVar.f18252d);
        fVar.f(obj);
        fVar.h();
        fVar.f18255b.flush();
    }
}
