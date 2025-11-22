package eb;

/* loaded from: classes2.dex */
public final class y extends kotlin.jvm.internal.j implements x9.l<String, CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public static final y f5239a = new y();

    public y() {
        super(1);
    }

    @Override // x9.l
    public final CharSequence invoke(String str) {
        String it = str;
        kotlin.jvm.internal.h.f(it, "it");
        if (it.length() <= 1) {
            return it;
        }
        return "L" + it + ';';
    }
}
