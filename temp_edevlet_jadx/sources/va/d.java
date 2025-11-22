package va;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import m9.e0;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final lb.c f18335a = new lb.c("javax.annotation.meta.TypeQualifierNickname");

    /* renamed from: b, reason: collision with root package name */
    public static final lb.c f18336b = new lb.c("javax.annotation.meta.TypeQualifier");

    /* renamed from: c, reason: collision with root package name */
    public static final lb.c f18337c = new lb.c("javax.annotation.meta.TypeQualifierDefault");

    /* renamed from: d, reason: collision with root package name */
    public static final lb.c f18338d = new lb.c("kotlin.annotations.jvm.UnderMigration");

    /* renamed from: e, reason: collision with root package name */
    public static final List<c> f18339e;
    public static final Map<lb.c, n> f;

    /* renamed from: g, reason: collision with root package name */
    public static final LinkedHashMap f18340g;

    /* renamed from: h, reason: collision with root package name */
    public static final Set<lb.c> f18341h;

    static {
        c cVar = c.VALUE_PARAMETER;
        List<c> listT = b8.f.T(c.FIELD, c.METHOD_RETURN_TYPE, cVar, c.TYPE_PARAMETER_BOUNDS, c.TYPE_USE);
        f18339e = listT;
        lb.c cVar2 = y.f18401c;
        db.k kVar = db.k.NOT_NULL;
        Map<lb.c, n> mapW = b8.f.W(new l9.g(cVar2, new n(new db.l(kVar, false), listT, false)));
        f = mapW;
        LinkedHashMap linkedHashMap = new LinkedHashMap(e0.R0(new l9.g(new lb.c("javax.annotation.ParametersAreNullableByDefault"), new n(new db.l(db.k.NULLABLE, false), b8.f.S(cVar))), new l9.g(new lb.c("javax.annotation.ParametersAreNonnullByDefault"), new n(new db.l(kVar, false), b8.f.S(cVar)))));
        linkedHashMap.putAll(mapW);
        f18340g = linkedHashMap;
        f18341h = x5.a.s(y.f18403e, y.f);
    }
}
