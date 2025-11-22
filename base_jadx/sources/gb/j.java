package gb;

import mb.i;

/* loaded from: classes2.dex */
public enum j implements i.a {
    /* JADX INFO: Fake field, exist only in values array */
    FINAL(0),
    /* JADX INFO: Fake field, exist only in values array */
    OPEN(1),
    /* JADX INFO: Fake field, exist only in values array */
    ABSTRACT(2),
    /* JADX INFO: Fake field, exist only in values array */
    SEALED(3);


    /* renamed from: a, reason: collision with root package name */
    public final int f6361a;

    j(int r32) {
        this.f6361a = r32;
    }

    @Override // mb.i.a
    public final int f() {
        return this.f6361a;
    }
}
