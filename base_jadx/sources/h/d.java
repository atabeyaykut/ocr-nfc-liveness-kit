package h;

import java.io.IOException;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes.dex */
public final class d extends j implements l<IOException, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f6770a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(b bVar) {
        super(1);
        this.f6770a = bVar;
    }

    @Override // x9.l
    public final m invoke(IOException iOException) {
        this.f6770a.f6748l = true;
        return m.f9594a;
    }
}
