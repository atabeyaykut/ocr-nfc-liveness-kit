package fd;

import ed.d0;
import java.io.IOException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u;
import l9.m;
import org.bouncycastle.asn1.cmc.BodyPartID;
import x9.p;

/* loaded from: classes2.dex */
public final class h extends kotlin.jvm.internal.j implements p<Integer, Long, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f5603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f5604b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f5605c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ed.g f5606d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u f5607e;
    public final /* synthetic */ u f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(t tVar, long j10, u uVar, d0 d0Var, u uVar2, u uVar3) {
        super(2);
        this.f5603a = tVar;
        this.f5604b = j10;
        this.f5605c = uVar;
        this.f5606d = d0Var;
        this.f5607e = uVar2;
        this.f = uVar3;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final m mo7invoke(Integer num, Long l5) throws IOException {
        int r82 = num.intValue();
        long jLongValue = l5.longValue();
        if (r82 == 1) {
            t tVar = this.f5603a;
            if (tVar.f8973a) {
                throw new IOException("bad zip: zip64 extra repeated");
            }
            tVar.f8973a = true;
            if (jLongValue < this.f5604b) {
                throw new IOException("bad zip: zip64 extra too short");
            }
            u uVar = this.f5605c;
            long jG0 = uVar.f8974a;
            ed.g gVar = this.f5606d;
            if (jG0 == BodyPartID.bodyIdMax) {
                jG0 = gVar.g0();
            }
            uVar.f8974a = jG0;
            u uVar2 = this.f5607e;
            uVar2.f8974a = uVar2.f8974a == BodyPartID.bodyIdMax ? gVar.g0() : 0L;
            u uVar3 = this.f;
            uVar3.f8974a = uVar3.f8974a == BodyPartID.bodyIdMax ? gVar.g0() : 0L;
        }
        return m.f9594a;
    }
}
