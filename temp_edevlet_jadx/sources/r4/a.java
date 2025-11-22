package r4;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements t6.d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ a f14066a = new a();

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) {
        String strValueOf = String.valueOf(obj.getClass().getCanonicalName());
        throw new t6.b(strValueOf.length() != 0 ? "Couldn't find encoder for type ".concat(strValueOf) : new String("Couldn't find encoder for type "));
    }
}
