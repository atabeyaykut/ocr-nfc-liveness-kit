package na;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m9.e0;
import m9.t;

/* loaded from: classes2.dex */
public enum n {
    CLASS(0),
    ANNOTATION_CLASS(1),
    TYPE_PARAMETER(2),
    PROPERTY(3),
    FIELD(4),
    LOCAL_VARIABLE(5),
    VALUE_PARAMETER(6),
    CONSTRUCTOR(7),
    FUNCTION(8),
    PROPERTY_GETTER(9),
    PROPERTY_SETTER(10),
    TYPE(11),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_PROJECTION(12),
    FILE(13),
    /* JADX INFO: Fake field, exist only in values array */
    PROPERTY_PARAMETER(14),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_PROJECTION(15),
    /* JADX INFO: Fake field, exist only in values array */
    STAR_PROJECTION(16),
    /* JADX INFO: Fake field, exist only in values array */
    PROPERTY_PARAMETER(17),
    CLASS_ONLY(18),
    OBJECT(19),
    STANDALONE_OBJECT(20),
    COMPANION_OBJECT(21),
    INTERFACE(22),
    ENUM_CLASS(23),
    ENUM_ENTRY(24),
    LOCAL_CLASS(25),
    /* JADX INFO: Fake field, exist only in values array */
    LOCAL_FUNCTION(26),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_FUNCTION(27),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_FUNCTION(28),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY(29),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITH_BACKING_FIELD(30),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITH_DELEGATE(31),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE(32),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY(33),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD(34),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITH_DELEGATE(35),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE(36),
    /* JADX INFO: Fake field, exist only in values array */
    BACKING_FIELD(37),
    /* JADX INFO: Fake field, exist only in values array */
    INITIALIZER(38),
    /* JADX INFO: Fake field, exist only in values array */
    DESTRUCTURING_DECLARATION(39),
    /* JADX INFO: Fake field, exist only in values array */
    LAMBDA_EXPRESSION(40),
    /* JADX INFO: Fake field, exist only in values array */
    ANONYMOUS_FUNCTION(41),
    /* JADX INFO: Fake field, exist only in values array */
    OBJECT_LITERAL(42);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap<String, n> f10669b = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public static final List<n> f10670c;

    /* renamed from: d, reason: collision with root package name */
    public static final List<n> f10671d;

    /* renamed from: e, reason: collision with root package name */
    public static final List<n> f10672e;
    public static final List<n> f;

    /* renamed from: g, reason: collision with root package name */
    public static final List<n> f10673g;

    /* renamed from: h, reason: collision with root package name */
    public static final List<n> f10674h;

    /* renamed from: j, reason: collision with root package name */
    public static final List<n> f10675j;

    /* renamed from: k, reason: collision with root package name */
    public static final List<n> f10676k;

    /* renamed from: l, reason: collision with root package name */
    public static final List<n> f10677l;

    /* renamed from: m, reason: collision with root package name */
    public static final List<n> f10678m;

    /* renamed from: n, reason: collision with root package name */
    public static final List<n> f10679n;

    /* renamed from: p, reason: collision with root package name */
    public static final List<n> f10680p;

    /* renamed from: q, reason: collision with root package name */
    public static final Map<e, n> f10681q;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10689a;

    static {
        for (n nVar : values()) {
            f10669b.put(nVar.name(), nVar);
        }
        n[] nVarArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (n nVar2 : nVarArrValues) {
            if (nVar2.f10689a) {
                arrayList.add(nVar2);
            }
        }
        t.y1(arrayList);
        m9.k.C0(values());
        n nVar3 = CLASS;
        f10670c = b8.f.T(ANNOTATION_CLASS, nVar3);
        f10671d = b8.f.T(LOCAL_CLASS, nVar3);
        f10672e = b8.f.T(CLASS_ONLY, nVar3);
        n nVar4 = OBJECT;
        f = b8.f.T(COMPANION_OBJECT, nVar4, nVar3);
        f10673g = b8.f.T(STANDALONE_OBJECT, nVar4, nVar3);
        f10674h = b8.f.T(INTERFACE, nVar3);
        f10675j = b8.f.T(ENUM_CLASS, nVar3);
        n nVar5 = PROPERTY;
        n nVar6 = FIELD;
        f10676k = b8.f.T(ENUM_ENTRY, nVar5, nVar6);
        n nVar7 = PROPERTY_SETTER;
        f10677l = b8.f.S(nVar7);
        n nVar8 = PROPERTY_GETTER;
        f10678m = b8.f.S(nVar8);
        f10679n = b8.f.S(FUNCTION);
        n nVar9 = FILE;
        f10680p = b8.f.S(nVar9);
        e eVar = e.CONSTRUCTOR_PARAMETER;
        n nVar10 = VALUE_PARAMETER;
        f10681q = e0.R0(new l9.g(eVar, nVar10), new l9.g(e.FIELD, nVar6), new l9.g(e.PROPERTY, nVar5), new l9.g(e.FILE, nVar9), new l9.g(e.PROPERTY_GETTER, nVar8), new l9.g(e.PROPERTY_SETTER, nVar7), new l9.g(e.RECEIVER, nVar10), new l9.g(e.SETTER_PARAMETER, nVar10), new l9.g(e.PROPERTY_DELEGATE_FIELD, nVar6));
    }

    n(int r32) {
        this.f10689a = z;
    }
}
