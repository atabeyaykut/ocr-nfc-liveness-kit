package v6;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import t6.g;

/* loaded from: classes2.dex */
public final class e implements u6.a<e> {

    /* renamed from: e, reason: collision with root package name */
    public static final v6.a f18246e = new t6.d() { // from class: v6.a
        @Override // t6.a
        public final void a(Object obj, t6.e eVar) {
            throw new t6.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    };
    public static final b f = new t6.f() { // from class: v6.b
        @Override // t6.a
        public final void a(Object obj, g gVar) throws IOException {
            gVar.add((String) obj);
        }
    };

    /* renamed from: g, reason: collision with root package name */
    public static final c f18247g = new t6.f() { // from class: v6.c
        @Override // t6.a
        public final void a(Object obj, g gVar) throws IOException {
            gVar.e(((Boolean) obj).booleanValue());
        }
    };

    /* renamed from: h, reason: collision with root package name */
    public static final a f18248h = new a();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f18249a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f18250b;

    /* renamed from: c, reason: collision with root package name */
    public final v6.a f18251c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18252d;

    public static final class a implements t6.f<Date> {

        /* renamed from: a, reason: collision with root package name */
        public static final SimpleDateFormat f18253a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f18253a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        @Override // t6.a
        public final void a(@NonNull Object obj, @NonNull g gVar) throws IOException {
            gVar.add(f18253a.format((Date) obj));
        }
    }

    public e() {
        HashMap map = new HashMap();
        this.f18249a = map;
        HashMap map2 = new HashMap();
        this.f18250b = map2;
        this.f18251c = f18246e;
        this.f18252d = false;
        map2.put(String.class, f);
        map.remove(String.class);
        map2.put(Boolean.class, f18247g);
        map.remove(Boolean.class);
        map2.put(Date.class, f18248h);
        map.remove(Date.class);
    }

    @Override // u6.a
    @NonNull
    public final u6.a a(@NonNull Class cls, @NonNull t6.d dVar) {
        this.f18249a.put(cls, dVar);
        this.f18250b.remove(cls);
        return this;
    }
}
