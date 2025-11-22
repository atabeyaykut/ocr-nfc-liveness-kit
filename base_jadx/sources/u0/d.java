package u0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f17772b;

    /* renamed from: c, reason: collision with root package name */
    public c f17773c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f17771a = new byte[256];

    /* renamed from: d, reason: collision with root package name */
    public int f17774d = 0;

    public final boolean a() {
        return this.f17773c.f17762b != 0;
    }

    @NonNull
    public final c b() {
        byte[] bArr;
        if (this.f17772b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f17773c;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int r22 = 0; r22 < 6; r22++) {
            sb2.append((char) c());
        }
        if (sb2.toString().startsWith("GIF")) {
            this.f17773c.f = f();
            this.f17773c.f17766g = f();
            int r02 = c();
            c cVar = this.f17773c;
            cVar.f17767h = (r02 & 128) != 0;
            cVar.f17768i = (int) Math.pow(2.0d, (r02 & 7) + 1);
            this.f17773c.f17769j = c();
            c cVar2 = this.f17773c;
            c();
            cVar2.getClass();
            if (this.f17773c.f17767h && !a()) {
                c cVar3 = this.f17773c;
                cVar3.f17761a = e(cVar3.f17768i);
                c cVar4 = this.f17773c;
                cVar4.f17770k = cVar4.f17761a[cVar4.f17769j];
            }
        } else {
            this.f17773c.f17762b = 1;
        }
        if (!a()) {
            boolean z10 = false;
            while (!z10 && !a() && this.f17773c.f17763c <= Integer.MAX_VALUE) {
                int r52 = c();
                if (r52 == 33) {
                    int r53 = c();
                    if (r53 != 1) {
                        if (r53 == 249) {
                            this.f17773c.f17764d = new b();
                            c();
                            int r54 = c();
                            b bVar = this.f17773c.f17764d;
                            int r82 = (r54 & 28) >> 2;
                            bVar.f17756g = r82;
                            if (r82 == 0) {
                                bVar.f17756g = 1;
                            }
                            bVar.f = (r54 & 1) != 0;
                            int r55 = f();
                            if (r55 < 2) {
                                r55 = 10;
                            }
                            b bVar2 = this.f17773c.f17764d;
                            bVar2.f17758i = r55 * 10;
                            bVar2.f17757h = c();
                            c();
                        } else if (r53 != 254 && r53 == 255) {
                            d();
                            StringBuilder sb3 = new StringBuilder();
                            int r6 = 0;
                            while (true) {
                                bArr = this.f17771a;
                                if (r6 >= 11) {
                                    break;
                                }
                                sb3.append((char) bArr[r6]);
                                r6++;
                            }
                            if (sb3.toString().equals("NETSCAPE2.0")) {
                                do {
                                    d();
                                    if (bArr[0] == 1) {
                                        byte b10 = bArr[1];
                                        byte b11 = bArr[2];
                                        this.f17773c.getClass();
                                    }
                                    if (this.f17774d > 0) {
                                    }
                                } while (!a());
                            }
                        }
                    }
                    g();
                } else if (r52 == 44) {
                    c cVar5 = this.f17773c;
                    if (cVar5.f17764d == null) {
                        cVar5.f17764d = new b();
                    }
                    this.f17773c.f17764d.f17751a = f();
                    this.f17773c.f17764d.f17752b = f();
                    this.f17773c.f17764d.f17753c = f();
                    this.f17773c.f17764d.f17754d = f();
                    int r56 = c();
                    boolean z11 = (r56 & 128) != 0;
                    int r72 = (int) Math.pow(2.0d, (r56 & 7) + 1);
                    b bVar3 = this.f17773c.f17764d;
                    bVar3.f17755e = (r56 & 64) != 0;
                    if (z11) {
                        bVar3.f17760k = e(r72);
                    } else {
                        bVar3.f17760k = null;
                    }
                    this.f17773c.f17764d.f17759j = this.f17772b.position();
                    c();
                    g();
                    if (!a()) {
                        c cVar6 = this.f17773c;
                        cVar6.f17763c++;
                        cVar6.f17765e.add(cVar6.f17764d);
                    }
                } else if (r52 != 59) {
                    this.f17773c.f17762b = 1;
                } else {
                    z10 = true;
                }
            }
            c cVar7 = this.f17773c;
            if (cVar7.f17763c < 0) {
                cVar7.f17762b = 1;
            }
        }
        return this.f17773c;
    }

    public final int c() {
        try {
            return this.f17772b.get() & 255;
        } catch (Exception unused) {
            this.f17773c.f17762b = 1;
            return 0;
        }
    }

    public final void d() {
        int r02 = c();
        this.f17774d = r02;
        if (r02 <= 0) {
            return;
        }
        int r03 = 0;
        int r12 = 0;
        while (true) {
            try {
                r12 = this.f17774d;
                if (r03 >= r12) {
                    return;
                }
                r12 -= r03;
                this.f17772b.get(this.f17771a, r03, r12);
                r03 += r12;
            } catch (Exception e10) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbF = androidx.constraintlayout.core.a.f("Error Reading Block n: ", r03, " count: ", r12, " blockSize: ");
                    sbF.append(this.f17774d);
                    Log.d("GifHeaderParser", sbF.toString(), e10);
                }
                this.f17773c.f17762b = 1;
                return;
            }
        }
    }

    @Nullable
    public final int[] e(int r10) {
        byte[] bArr = new byte[r10 * 3];
        int[] r12 = null;
        try {
            this.f17772b.get(bArr);
            r12 = new int[256];
            int r22 = 0;
            int r32 = 0;
            while (r22 < r10) {
                int r42 = r32 + 1;
                int r33 = bArr[r32] & 255;
                int r52 = r42 + 1;
                int r43 = bArr[r42] & 255;
                int r6 = r52 + 1;
                int r72 = r22 + 1;
                r12[r22] = (r33 << 16) | ViewCompat.MEASURED_STATE_MASK | (r43 << 8) | (bArr[r52] & 255);
                r32 = r6;
                r22 = r72;
            }
        } catch (BufferUnderflowException e10) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e10);
            }
            this.f17773c.f17762b = 1;
        }
        return r12;
    }

    public final int f() {
        return this.f17772b.getShort();
    }

    public final void g() {
        int r02;
        do {
            r02 = c();
            this.f17772b.position(Math.min(this.f17772b.position() + r02, this.f17772b.limit()));
        } while (r02 > 0);
    }
}
