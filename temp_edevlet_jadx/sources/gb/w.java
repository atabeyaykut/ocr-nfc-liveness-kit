package gb;

import mb.i;

/* loaded from: classes2.dex */
public enum w implements i.a {
    /* JADX INFO: Fake field, exist only in values array */
    INTERNAL(0),
    /* JADX INFO: Fake field, exist only in values array */
    PRIVATE(1),
    /* JADX INFO: Fake field, exist only in values array */
    PROTECTED(2),
    /* JADX INFO: Fake field, exist only in values array */
    PUBLIC(3),
    /* JADX INFO: Fake field, exist only in values array */
    PRIVATE_TO_THIS(4),
    /* JADX INFO: Fake field, exist only in values array */
    LOCAL(5);


    /* renamed from: a, reason: collision with root package name */
    public final int f6611a;

    w(int r32) {
        this.f6611a = r32;
    }

    @Override // mb.i.a
    public final int f() {
        return this.f6611a;
    }
}
