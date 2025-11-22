package i1;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.n;
import com.bumptech.glide.o;
import java.util.ArrayList;
import q1.m;
import v0.l;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final u0.a f7255a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f7256b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7257c;

    /* renamed from: d, reason: collision with root package name */
    public final o f7258d;

    /* renamed from: e, reason: collision with root package name */
    public final y0.c f7259e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7260g;

    /* renamed from: h, reason: collision with root package name */
    public n<Bitmap> f7261h;

    /* renamed from: i, reason: collision with root package name */
    public a f7262i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7263j;

    /* renamed from: k, reason: collision with root package name */
    public a f7264k;

    /* renamed from: l, reason: collision with root package name */
    public Bitmap f7265l;

    /* renamed from: m, reason: collision with root package name */
    public l<Bitmap> f7266m;

    /* renamed from: n, reason: collision with root package name */
    public a f7267n;

    /* renamed from: o, reason: collision with root package name */
    public int f7268o;

    /* renamed from: p, reason: collision with root package name */
    public int f7269p;

    /* renamed from: q, reason: collision with root package name */
    public int f7270q;

    @VisibleForTesting
    public static class a extends n1.c<Bitmap> {

        /* renamed from: d, reason: collision with root package name */
        public final Handler f7271d;

        /* renamed from: e, reason: collision with root package name */
        public final int f7272e;
        public final long f;

        /* renamed from: g, reason: collision with root package name */
        public Bitmap f7273g;

        public a(Handler handler, int r22, long j10) {
            this.f7271d = handler;
            this.f7272e = r22;
            this.f = j10;
        }

        @Override // n1.g
        public final void c(@NonNull Object obj, @Nullable o1.d dVar) {
            this.f7273g = (Bitmap) obj;
            Handler handler = this.f7271d;
            handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f);
        }

        @Override // n1.g
        public final void h(@Nullable Drawable drawable) {
            this.f7273g = null;
        }
    }

    public interface b {
        void a();
    }

    public class c implements Handler.Callback {
        public c() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int r02 = message.what;
            g gVar = g.this;
            if (r02 == 1) {
                gVar.b((a) message.obj);
                return true;
            }
            if (r02 != 2) {
                return false;
            }
            gVar.f7258d.k((a) message.obj);
            return false;
        }
    }

    public g(com.bumptech.glide.b bVar, u0.e eVar, int r92, int r10, d1.b bVar2, Bitmap bitmap) {
        y0.c cVar = bVar.f2706a;
        com.bumptech.glide.h hVar = bVar.f2708c;
        o oVarE = com.bumptech.glide.b.e(hVar.getBaseContext());
        o oVarE2 = com.bumptech.glide.b.e(hVar.getBaseContext());
        oVarE2.getClass();
        n<Bitmap> nVarV = new n(oVarE2.f2833a, oVarE2, Bitmap.class, oVarE2.f2834b).v(o.f2832l).v(((m1.g) ((m1.g) new m1.g().e(x0.l.f19012a).t()).q()).i(r92, r10));
        this.f7257c = new ArrayList();
        this.f7258d = oVarE;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.f7259e = cVar;
        this.f7256b = handler;
        this.f7261h = nVarV;
        this.f7255a = eVar;
        c(bVar2, bitmap);
    }

    public final void a() {
        if (!this.f || this.f7260g) {
            return;
        }
        a aVar = this.f7267n;
        if (aVar != null) {
            this.f7267n = null;
            b(aVar);
            return;
        }
        this.f7260g = true;
        u0.a aVar2 = this.f7255a;
        long jUptimeMillis = SystemClock.uptimeMillis() + aVar2.d();
        aVar2.b();
        this.f7264k = new a(this.f7256b, aVar2.e(), jUptimeMillis);
        n<Bitmap> nVarA = this.f7261h.v((m1.g) new m1.g().p(new p1.b(Double.valueOf(Math.random())))).A(aVar2);
        nVarA.z(this.f7264k, nVarA);
    }

    @VisibleForTesting
    public final void b(a aVar) {
        this.f7260g = false;
        boolean z10 = this.f7263j;
        Handler handler = this.f7256b;
        if (z10) {
            handler.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f) {
            this.f7267n = aVar;
            return;
        }
        if (aVar.f7273g != null) {
            Bitmap bitmap = this.f7265l;
            if (bitmap != null) {
                this.f7259e.d(bitmap);
                this.f7265l = null;
            }
            a aVar2 = this.f7262i;
            this.f7262i = aVar;
            ArrayList arrayList = this.f7257c;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((b) arrayList.get(size)).a();
                }
            }
            if (aVar2 != null) {
                handler.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(l<Bitmap> lVar, Bitmap bitmap) {
        q1.l.b(lVar);
        this.f7266m = lVar;
        q1.l.b(bitmap);
        this.f7265l = bitmap;
        this.f7261h = this.f7261h.v(new m1.g().s(lVar, true));
        this.f7268o = m.c(bitmap);
        this.f7269p = bitmap.getWidth();
        this.f7270q = bitmap.getHeight();
    }
}
