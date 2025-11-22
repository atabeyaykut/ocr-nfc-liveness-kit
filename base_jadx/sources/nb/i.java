package nb;

import java.util.ArrayList;
import java.util.Set;
import m9.t;

/* loaded from: classes2.dex */
public enum i {
    VISIBILITY(true),
    MODALITY(true),
    OVERRIDE(true),
    ANNOTATIONS(false),
    INNER(true),
    MEMBER_KIND(true),
    DATA(true),
    INLINE(true),
    EXPECT(true),
    ACTUAL(true),
    CONST(true),
    LATEINIT(true),
    FUN(true),
    VALUE(true);


    /* renamed from: b, reason: collision with root package name */
    public static final Set<i> f10720b;

    /* renamed from: c, reason: collision with root package name */
    public static final Set<i> f10721c;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10736a;

    static {
        i[] iVarArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (i iVar : iVarArrValues) {
            if (iVar.f10736a) {
                arrayList.add(iVar);
            }
        }
        f10720b = t.y1(arrayList);
        f10721c = m9.k.C0(values());
    }

    i(boolean z10) {
        this.f10736a = z10;
    }
}
