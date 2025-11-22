package n3;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
import n3.a.c;
import n3.d;
import o3.z;
import r3.c;

/* loaded from: classes.dex */
public final class a<O extends c> {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0196a f10542a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10543b;

    /* renamed from: n3.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0196a<T extends e, O> extends d<T, O> {
        @NonNull
        @Deprecated
        public e a(@NonNull Context context, @NonNull Looper looper, @NonNull r3.e eVar, @NonNull c cVar, @NonNull d.a aVar, @NonNull d.b bVar) {
            return b(context, looper, eVar, cVar, aVar, bVar);
        }

        @NonNull
        public e b(@NonNull Context context, @NonNull Looper looper, @NonNull r3.e eVar, @NonNull c cVar, @NonNull o3.c cVar2, @NonNull o3.j jVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    public static class b<C> {
    }

    public interface c {

        /* renamed from: c0, reason: collision with root package name */
        @NonNull
        public static final C0198c f10544c0 = new C0198c(0);

        /* renamed from: n3.a$c$a, reason: collision with other inner class name */
        public interface InterfaceC0197a extends c {
            @NonNull
            Account o();
        }

        public interface b extends c {
            @Nullable
            GoogleSignInAccount m();
        }

        /* renamed from: n3.a$c$c, reason: collision with other inner class name */
        public static final class C0198c implements c {
            public C0198c() {
            }

            public /* synthetic */ C0198c(int r12) {
            }
        }
    }

    public static abstract class d<T, O> {
    }

    public interface e {
        @NonNull
        Set<Scope> b();

        void c(@NonNull c.InterfaceC0236c interfaceC0236c);

        void d(@NonNull String str);

        boolean e();

        @NonNull
        String f();

        void g(@NonNull z zVar);

        void h();

        boolean isConnected();

        void j(@Nullable r3.k kVar, @Nullable Set<Scope> set);

        boolean k();

        int l();

        @NonNull
        m3.d[] m();

        @Nullable
        String n();

        boolean o();
    }

    public static final class f<C extends e> extends b<C> {
    }

    public <C extends e> a(@NonNull String str, @NonNull AbstractC0196a<C, O> abstractC0196a, @NonNull f<C> fVar) {
        this.f10543b = str;
        this.f10542a = abstractC0196a;
    }
}
