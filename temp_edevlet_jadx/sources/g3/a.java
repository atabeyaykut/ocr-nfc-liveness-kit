package g3;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.Arrays;
import n3.a;
import r3.p;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    @RecentlyNonNull
    public static final n3.a<GoogleSignInOptions> f5797a;

    @Deprecated
    /* renamed from: g3.a$a, reason: collision with other inner class name */
    public static class C0094a implements a.c {

        /* renamed from: c, reason: collision with root package name */
        @RecentlyNonNull
        public static final C0094a f5798c = new C0094a(new C0095a());

        /* renamed from: a, reason: collision with root package name */
        public final boolean f5799a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final String f5800b;

        @Deprecated
        /* renamed from: g3.a$a$a, reason: collision with other inner class name */
        public static class C0095a {

            /* renamed from: a, reason: collision with root package name */
            @RecentlyNonNull
            public final Boolean f5801a;

            /* renamed from: b, reason: collision with root package name */
            @RecentlyNullable
            public String f5802b;

            public C0095a() {
                this.f5801a = Boolean.FALSE;
            }

            public C0095a(@RecentlyNonNull C0094a c0094a) {
                this.f5801a = Boolean.FALSE;
                C0094a c0094a2 = C0094a.f5798c;
                c0094a.getClass();
                this.f5801a = Boolean.valueOf(c0094a.f5799a);
                this.f5802b = c0094a.f5800b;
            }
        }

        public C0094a(@RecentlyNonNull C0095a c0095a) {
            this.f5799a = c0095a.f5801a.booleanValue();
            this.f5800b = c0095a.f5802b;
        }

        public final boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0094a)) {
                return false;
            }
            C0094a c0094a = (C0094a) obj;
            c0094a.getClass();
            return p.a(null, null) && this.f5799a == c0094a.f5799a && p.a(this.f5800b, c0094a.f5800b);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{null, Boolean.valueOf(this.f5799a), this.f5800b});
        }
    }

    static {
        a.f fVar = new a.f();
        new d();
        e eVar = new e();
        n3.a<c> aVar = b.f5803a;
        f5797a = new n3.a<>("Auth.GOOGLE_SIGN_IN_API", eVar, fVar);
    }
}
