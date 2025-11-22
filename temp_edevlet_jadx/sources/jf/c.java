package jf;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f8500e = new c();

    /* renamed from: a, reason: collision with root package name */
    public final char[] f8501a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8502b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8503c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap<Character, Integer> f8504d;

    public c() {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".toCharArray();
        this.f8501a = charArray;
        this.f8502b = charArray.length - 1;
        this.f8503c = Integer.numberOfTrailingZeros(charArray.length);
        this.f8504d = new HashMap<>();
        int r02 = 0;
        while (true) {
            char[] cArr = this.f8501a;
            if (r02 >= cArr.length) {
                return;
            }
            this.f8504d.put(Character.valueOf(cArr[r02]), Integer.valueOf(r02));
            r02++;
        }
    }
}
