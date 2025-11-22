package m9;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class j implements Iterable<Object>, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object[] f10167a;

    public j(Object[] objArr) {
        this.f10167a = objArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return b8.f.R(this.f10167a);
    }
}
