package u0;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import u0.a;

/* loaded from: classes.dex */
public final class e implements a {

    /* renamed from: a, reason: collision with root package name */
    @ColorInt
    public int[] f17775a;

    /* renamed from: c, reason: collision with root package name */
    public final a.InterfaceC0274a f17777c;

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer f17778d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f17779e;
    public short[] f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f17780g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f17781h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f17782i;

    /* renamed from: j, reason: collision with root package name */
    @ColorInt
    public int[] f17783j;

    /* renamed from: k, reason: collision with root package name */
    public int f17784k;

    /* renamed from: l, reason: collision with root package name */
    public c f17785l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f17786m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f17787n;

    /* renamed from: o, reason: collision with root package name */
    public int f17788o;

    /* renamed from: p, reason: collision with root package name */
    public int f17789p;

    /* renamed from: q, reason: collision with root package name */
    public int f17790q;

    /* renamed from: r, reason: collision with root package name */
    public int f17791r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public Boolean f17792s;

    /* renamed from: b, reason: collision with root package name */
    @ColorInt
    public final int[] f17776b = new int[256];

    /* renamed from: t, reason: collision with root package name */
    @NonNull
    public Bitmap.Config f17793t = Bitmap.Config.ARGB_8888;

    public e(@NonNull i1.b bVar, c cVar, ByteBuffer byteBuffer, int r52) {
        this.f17777c = bVar;
        this.f17785l = new c();
        synchronized (this) {
            if (r52 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + r52);
            }
            int r22 = Integer.highestOneBit(r52);
            this.f17788o = 0;
            this.f17785l = cVar;
            this.f17784k = -1;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f17778d = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.f17778d.order(ByteOrder.LITTLE_ENDIAN);
            this.f17787n = false;
            Iterator it = cVar.f17765e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((b) it.next()).f17756g == 3) {
                    this.f17787n = true;
                    break;
                }
            }
            this.f17789p = r22;
            int r42 = cVar.f;
            this.f17791r = r42 / r22;
            int r32 = cVar.f17766g;
            this.f17790q = r32 / r22;
            int r43 = r42 * r32;
            y0.b bVar2 = ((i1.b) this.f17777c).f7242b;
            this.f17782i = bVar2 == null ? new byte[r43] : (byte[]) bVar2.c(byte[].class, r43);
            a.InterfaceC0274a interfaceC0274a = this.f17777c;
            int r33 = this.f17791r * this.f17790q;
            y0.b bVar3 = ((i1.b) interfaceC0274a).f7242b;
            this.f17783j = bVar3 == null ? new int[r33] : (int[]) bVar3.c(int[].class, r33);
        }
    }

    @Override // u0.a
    @Nullable
    public final synchronized Bitmap a() {
        if (this.f17785l.f17763c <= 0 || this.f17784k < 0) {
            if (Log.isLoggable("e", 3)) {
                Log.d("e", "Unable to decode frame, frameCount=" + this.f17785l.f17763c + ", framePointer=" + this.f17784k);
            }
            this.f17788o = 1;
        }
        int r22 = this.f17788o;
        if (r22 != 1 && r22 != 2) {
            this.f17788o = 0;
            if (this.f17779e == null) {
                y0.b bVar = ((i1.b) this.f17777c).f7242b;
                this.f17779e = bVar == null ? new byte[255] : (byte[]) bVar.c(byte[].class, 255);
            }
            b bVar2 = (b) this.f17785l.f17765e.get(this.f17784k);
            int r72 = this.f17784k - 1;
            b bVar3 = r72 >= 0 ? (b) this.f17785l.f17765e.get(r72) : null;
            int[] r82 = bVar2.f17760k;
            if (r82 == null) {
                r82 = this.f17785l.f17761a;
            }
            this.f17775a = r82;
            if (r82 == null) {
                if (Log.isLoggable("e", 3)) {
                    Log.d("e", "No valid color table found for frame #" + this.f17784k);
                }
                this.f17788o = 1;
                return null;
            }
            if (bVar2.f) {
                System.arraycopy(r82, 0, this.f17776b, 0, r82.length);
                int[] r02 = this.f17776b;
                this.f17775a = r02;
                r02[bVar2.f17757h] = 0;
                if (bVar2.f17756g == 2 && this.f17784k == 0) {
                    this.f17792s = Boolean.TRUE;
                }
            }
            return i(bVar2, bVar3);
        }
        if (Log.isLoggable("e", 3)) {
            Log.d("e", "Unable to decode frame, status=" + this.f17788o);
        }
        return null;
    }

    @Override // u0.a
    public final void b() {
        this.f17784k = (this.f17784k + 1) % this.f17785l.f17763c;
    }

    @Override // u0.a
    public final int c() {
        return this.f17785l.f17763c;
    }

    @Override // u0.a
    public final void clear() {
        y0.b bVar;
        y0.b bVar2;
        y0.b bVar3;
        this.f17785l = null;
        byte[] bArr = this.f17782i;
        a.InterfaceC0274a interfaceC0274a = this.f17777c;
        if (bArr != null && (bVar3 = ((i1.b) interfaceC0274a).f7242b) != null) {
            bVar3.put(bArr);
        }
        int[] r12 = this.f17783j;
        if (r12 != null && (bVar2 = ((i1.b) interfaceC0274a).f7242b) != null) {
            bVar2.put(r12);
        }
        Bitmap bitmap = this.f17786m;
        if (bitmap != null) {
            ((i1.b) interfaceC0274a).f7241a.d(bitmap);
        }
        this.f17786m = null;
        this.f17778d = null;
        this.f17792s = null;
        byte[] bArr2 = this.f17779e;
        if (bArr2 == null || (bVar = ((i1.b) interfaceC0274a).f7242b) == null) {
            return;
        }
        bVar.put(bArr2);
    }

    @Override // u0.a
    public final int d() {
        int r22;
        c cVar = this.f17785l;
        int r12 = cVar.f17763c;
        if (r12 <= 0 || (r22 = this.f17784k) < 0) {
            return 0;
        }
        if (r22 < 0 || r22 >= r12) {
            return -1;
        }
        return ((b) cVar.f17765e.get(r22)).f17758i;
    }

    @Override // u0.a
    public final int e() {
        return this.f17784k;
    }

    @Override // u0.a
    public final int f() {
        return (this.f17783j.length * 4) + this.f17778d.limit() + this.f17782i.length;
    }

    public final Bitmap g() {
        Boolean bool = this.f17792s;
        Bitmap bitmapC = ((i1.b) this.f17777c).f7241a.c(this.f17791r, this.f17790q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f17793t);
        bitmapC.setHasAlpha(true);
        return bitmapC;
    }

    public final void h(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f17793t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap i(u0.b r36, u0.b r37) {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u0.e.i(u0.b, u0.b):android.graphics.Bitmap");
    }

    @Override // u0.a
    @NonNull
    public final ByteBuffer l() {
        return this.f17778d;
    }
}
