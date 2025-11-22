package mc;

import x9.p;

/* loaded from: classes2.dex */
public final class k extends kotlin.jvm.internal.j implements p<CharSequence, Integer, l9.g<? extends Integer, ? extends Integer>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ char[] f10372a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f10373b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(char[] cArr, boolean z10) {
        super(2);
        this.f10372a = cArr;
        this.f10373b = z10;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final l9.g<? extends Integer, ? extends Integer> mo7invoke(CharSequence charSequence, Integer num) {
        CharSequence $receiver = charSequence;
        int r42 = num.intValue();
        kotlin.jvm.internal.h.f($receiver, "$this$$receiver");
        int r32 = n.O(r42, $receiver, this.f10373b, this.f10372a);
        if (r32 < 0) {
            return null;
        }
        return new l9.g<>(Integer.valueOf(r32), 1);
    }
}
