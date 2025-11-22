package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;

/* loaded from: classes2.dex */
public final class k1 extends InfoMessageModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7682c;

    /* renamed from: a, reason: collision with root package name */
    public a f7683a;

    /* renamed from: b, reason: collision with root package name */
    public f0<InfoMessageModelRealm> f7684b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7685e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7686g;

        /* renamed from: h, reason: collision with root package name */
        public long f7687h;

        /* renamed from: i, reason: collision with root package name */
        public long f7688i;

        /* renamed from: j, reason: collision with root package name */
        public long f7689j;

        /* renamed from: k, reason: collision with root package name */
        public long f7690k;

        /* renamed from: l, reason: collision with root package name */
        public long f7691l;

        /* renamed from: m, reason: collision with root package name */
        public long f7692m;

        /* renamed from: n, reason: collision with root package name */
        public long f7693n;

        /* renamed from: o, reason: collision with root package name */
        public long f7694o;

        public a(OsSchemaInfo osSchemaInfo) {
            super(11, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("InfoMessageModelRealm");
            this.f7685e = a("messageId", "messageId", osObjectSchemaInfoA);
            this.f = a("messageType", "messageType", osObjectSchemaInfoA);
            this.f7686g = a("messageTitle", "messageTitle", osObjectSchemaInfoA);
            this.f7687h = a("messageContent", "messageContent", osObjectSchemaInfoA);
            this.f7688i = a("messageServiceCode", "messageServiceCode", osObjectSchemaInfoA);
            this.f7689j = a("messageLink", "messageLink", osObjectSchemaInfoA);
            this.f7690k = a("messageIconLink", "messageIconLink", osObjectSchemaInfoA);
            this.f7691l = a("messageFolder", "messageFolder", osObjectSchemaInfoA);
            this.f7692m = a("messageFolderTitle", "messageFolderTitle", osObjectSchemaInfoA);
            this.f7693n = a("messageButtonText", "messageButtonText", osObjectSchemaInfoA);
            this.f7694o = a("isMessageShown", "isMessageShown", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7685e = aVar.f7685e;
            aVar2.f = aVar.f;
            aVar2.f7686g = aVar.f7686g;
            aVar2.f7687h = aVar.f7687h;
            aVar2.f7688i = aVar.f7688i;
            aVar2.f7689j = aVar.f7689j;
            aVar2.f7690k = aVar.f7690k;
            aVar2.f7691l = aVar.f7691l;
            aVar2.f7692m = aVar.f7692m;
            aVar2.f7693n = aVar.f7693n;
            aVar2.f7694o = aVar.f7694o;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("InfoMessageModelRealm", false, 11);
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        aVar.b("messageId", realmFieldType, true, false, false);
        aVar.b("messageType", realmFieldType, false, false, false);
        RealmFieldType realmFieldType2 = RealmFieldType.STRING;
        aVar.b("messageTitle", realmFieldType2, false, false, false);
        aVar.b("messageContent", realmFieldType2, false, false, false);
        aVar.b("messageServiceCode", realmFieldType, false, false, false);
        aVar.b("messageLink", realmFieldType2, false, false, false);
        aVar.b("messageIconLink", realmFieldType2, false, false, false);
        aVar.b("messageFolder", realmFieldType2, false, false, false);
        aVar.b("messageFolderTitle", realmFieldType2, false, false, false);
        aVar.b("messageButtonText", realmFieldType2, false, false, false);
        aVar.b("isMessageShown", RealmFieldType.BOOLEAN, false, false, true);
        f7682c = aVar.c();
    }

    public k1() {
        this.f7684b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static InfoMessageModelRealm c(g0 g0Var, a aVar, InfoMessageModelRealm infoMessageModelRealm, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((infoMessageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(infoMessageModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) infoMessageModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return infoMessageModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(infoMessageModelRealm);
        if (s0Var != null) {
            return (InfoMessageModelRealm) s0Var;
        }
        k1 k1Var = null;
        if (z10) {
            Table tableV = g0Var.v(InfoMessageModelRealm.class);
            long j10 = aVar.f7685e;
            Integer messageId = infoMessageModelRealm.getMessageId();
            long jD = messageId == null ? tableV.d(j10) : tableV.c(j10, messageId.longValue());
            if (jD == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jD), aVar, false, Collections.emptyList());
                    k1Var = new k1();
                    map.put(infoMessageModelRealm, k1Var);
                    bVar.a();
                    z11 = z10;
                } catch (Throwable th2) {
                    bVar.a();
                    throw th2;
                }
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(InfoMessageModelRealm.class), set);
            osObjectBuilder.c(aVar.f7685e, infoMessageModelRealm.getMessageId());
            osObjectBuilder.c(aVar.f, infoMessageModelRealm.getMessageType());
            osObjectBuilder.f(aVar.f7686g, infoMessageModelRealm.getMessageTitle());
            osObjectBuilder.f(aVar.f7687h, infoMessageModelRealm.getMessageContent());
            osObjectBuilder.c(aVar.f7688i, infoMessageModelRealm.getMessageServiceCode());
            osObjectBuilder.f(aVar.f7689j, infoMessageModelRealm.getMessageLink());
            osObjectBuilder.f(aVar.f7690k, infoMessageModelRealm.getMessageIconLink());
            osObjectBuilder.f(aVar.f7691l, infoMessageModelRealm.getMessageFolder());
            osObjectBuilder.f(aVar.f7692m, infoMessageModelRealm.getMessageFolderTitle());
            osObjectBuilder.f(aVar.f7693n, infoMessageModelRealm.getMessageButtonText());
            osObjectBuilder.a(aVar.f7694o, Boolean.valueOf(infoMessageModelRealm.getIsMessageShown()));
            osObjectBuilder.j();
            return k1Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(infoMessageModelRealm);
        if (s0Var2 != null) {
            return (InfoMessageModelRealm) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(InfoMessageModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7685e, infoMessageModelRealm.getMessageId());
        osObjectBuilder2.c(aVar.f, infoMessageModelRealm.getMessageType());
        osObjectBuilder2.f(aVar.f7686g, infoMessageModelRealm.getMessageTitle());
        osObjectBuilder2.f(aVar.f7687h, infoMessageModelRealm.getMessageContent());
        osObjectBuilder2.c(aVar.f7688i, infoMessageModelRealm.getMessageServiceCode());
        osObjectBuilder2.f(aVar.f7689j, infoMessageModelRealm.getMessageLink());
        osObjectBuilder2.f(aVar.f7690k, infoMessageModelRealm.getMessageIconLink());
        osObjectBuilder2.f(aVar.f7691l, infoMessageModelRealm.getMessageFolder());
        osObjectBuilder2.f(aVar.f7692m, infoMessageModelRealm.getMessageFolderTitle());
        osObjectBuilder2.f(aVar.f7693n, infoMessageModelRealm.getMessageButtonText());
        osObjectBuilder2.a(aVar.f7694o, Boolean.valueOf(infoMessageModelRealm.getIsMessageShown()));
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(InfoMessageModelRealm.class), false, Collections.emptyList());
        k1 k1Var2 = new k1();
        bVar2.a();
        map.put(infoMessageModelRealm, k1Var2);
        return k1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, InfoMessageModelRealm infoMessageModelRealm, HashMap map) {
        if ((infoMessageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(infoMessageModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) infoMessageModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(InfoMessageModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InfoMessageModelRealm.class);
        long j11 = aVar.f7685e;
        long jNativeFindFirstNull = infoMessageModelRealm.getMessageId() == null ? Table.nativeFindFirstNull(j10, j11) : Table.nativeFindFirstInt(j10, j11, infoMessageModelRealm.getMessageId().intValue());
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j11, infoMessageModelRealm.getMessageId());
        }
        long j12 = jNativeFindFirstNull;
        map.put(infoMessageModelRealm, Long.valueOf(j12));
        Integer messageType = infoMessageModelRealm.getMessageType();
        long j13 = aVar.f;
        if (messageType != null) {
            Table.nativeSetLong(j10, j13, j12, messageType.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        String messageTitle = infoMessageModelRealm.getMessageTitle();
        long j14 = aVar.f7686g;
        if (messageTitle != null) {
            Table.nativeSetString(j10, j14, j12, messageTitle, false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        String messageContent = infoMessageModelRealm.getMessageContent();
        long j15 = aVar.f7687h;
        if (messageContent != null) {
            Table.nativeSetString(j10, j15, j12, messageContent, false);
        } else {
            Table.nativeSetNull(j10, j15, j12, false);
        }
        Integer messageServiceCode = infoMessageModelRealm.getMessageServiceCode();
        long j16 = aVar.f7688i;
        if (messageServiceCode != null) {
            Table.nativeSetLong(j10, j16, j12, messageServiceCode.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j16, j12, false);
        }
        String messageLink = infoMessageModelRealm.getMessageLink();
        long j17 = aVar.f7689j;
        if (messageLink != null) {
            Table.nativeSetString(j10, j17, j12, messageLink, false);
        } else {
            Table.nativeSetNull(j10, j17, j12, false);
        }
        String messageIconLink = infoMessageModelRealm.getMessageIconLink();
        long j18 = aVar.f7690k;
        if (messageIconLink != null) {
            Table.nativeSetString(j10, j18, j12, messageIconLink, false);
        } else {
            Table.nativeSetNull(j10, j18, j12, false);
        }
        String messageFolder = infoMessageModelRealm.getMessageFolder();
        long j19 = aVar.f7691l;
        if (messageFolder != null) {
            Table.nativeSetString(j10, j19, j12, messageFolder, false);
        } else {
            Table.nativeSetNull(j10, j19, j12, false);
        }
        String messageFolderTitle = infoMessageModelRealm.getMessageFolderTitle();
        long j20 = aVar.f7692m;
        if (messageFolderTitle != null) {
            Table.nativeSetString(j10, j20, j12, messageFolderTitle, false);
        } else {
            Table.nativeSetNull(j10, j20, j12, false);
        }
        String messageButtonText = infoMessageModelRealm.getMessageButtonText();
        long j21 = aVar.f7693n;
        if (messageButtonText != null) {
            Table.nativeSetString(j10, j21, j12, messageButtonText, false);
        } else {
            Table.nativeSetNull(j10, j21, j12, false);
        }
        Table.nativeSetBoolean(j10, aVar.f7694o, j12, infoMessageModelRealm.getIsMessageShown(), false);
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, Iterator it, HashMap map) {
        long jNativeFindFirstInt;
        long j10;
        Table tableV = g0Var.v(InfoMessageModelRealm.class);
        long j11 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InfoMessageModelRealm.class);
        long j12 = aVar.f7685e;
        while (it.hasNext()) {
            InfoMessageModelRealm infoMessageModelRealm = (InfoMessageModelRealm) it.next();
            if (!map.containsKey(infoMessageModelRealm)) {
                if ((infoMessageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(infoMessageModelRealm)) {
                    io.realm.internal.n nVar = (io.realm.internal.n) infoMessageModelRealm;
                    if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        map.put(infoMessageModelRealm, Long.valueOf(nVar.b().f7531c.Y()));
                    }
                }
                if (infoMessageModelRealm.getMessageId() == null) {
                    jNativeFindFirstInt = Table.nativeFindFirstNull(j11, j12);
                } else {
                    jNativeFindFirstInt = Table.nativeFindFirstInt(j11, j12, infoMessageModelRealm.getMessageId().intValue());
                }
                if (jNativeFindFirstInt == -1) {
                    jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j12, infoMessageModelRealm.getMessageId());
                }
                long j13 = jNativeFindFirstInt;
                map.put(infoMessageModelRealm, Long.valueOf(j13));
                Integer messageType = infoMessageModelRealm.getMessageType();
                if (messageType != null) {
                    j10 = j12;
                    Table.nativeSetLong(j11, aVar.f, j13, messageType.longValue(), false);
                } else {
                    j10 = j12;
                    Table.nativeSetNull(j11, aVar.f, j13, false);
                }
                String messageTitle = infoMessageModelRealm.getMessageTitle();
                long j14 = aVar.f7686g;
                if (messageTitle != null) {
                    Table.nativeSetString(j11, j14, j13, messageTitle, false);
                } else {
                    Table.nativeSetNull(j11, j14, j13, false);
                }
                String messageContent = infoMessageModelRealm.getMessageContent();
                long j15 = aVar.f7687h;
                if (messageContent != null) {
                    Table.nativeSetString(j11, j15, j13, messageContent, false);
                } else {
                    Table.nativeSetNull(j11, j15, j13, false);
                }
                Integer messageServiceCode = infoMessageModelRealm.getMessageServiceCode();
                long j16 = aVar.f7688i;
                if (messageServiceCode != null) {
                    Table.nativeSetLong(j11, j16, j13, messageServiceCode.longValue(), false);
                } else {
                    Table.nativeSetNull(j11, j16, j13, false);
                }
                String messageLink = infoMessageModelRealm.getMessageLink();
                long j17 = aVar.f7689j;
                if (messageLink != null) {
                    Table.nativeSetString(j11, j17, j13, messageLink, false);
                } else {
                    Table.nativeSetNull(j11, j17, j13, false);
                }
                String messageIconLink = infoMessageModelRealm.getMessageIconLink();
                long j18 = aVar.f7690k;
                if (messageIconLink != null) {
                    Table.nativeSetString(j11, j18, j13, messageIconLink, false);
                } else {
                    Table.nativeSetNull(j11, j18, j13, false);
                }
                String messageFolder = infoMessageModelRealm.getMessageFolder();
                long j19 = aVar.f7691l;
                if (messageFolder != null) {
                    Table.nativeSetString(j11, j19, j13, messageFolder, false);
                } else {
                    Table.nativeSetNull(j11, j19, j13, false);
                }
                String messageFolderTitle = infoMessageModelRealm.getMessageFolderTitle();
                long j20 = aVar.f7692m;
                if (messageFolderTitle != null) {
                    Table.nativeSetString(j11, j20, j13, messageFolderTitle, false);
                } else {
                    Table.nativeSetNull(j11, j20, j13, false);
                }
                String messageButtonText = infoMessageModelRealm.getMessageButtonText();
                long j21 = aVar.f7693n;
                if (messageButtonText != null) {
                    Table.nativeSetString(j11, j21, j13, messageButtonText, false);
                } else {
                    Table.nativeSetNull(j11, j21, j13, false);
                }
                Table.nativeSetBoolean(j11, aVar.f7694o, j13, infoMessageModelRealm.getIsMessageShown(), false);
                j12 = j10;
            }
        }
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7684b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7683a = (a) bVar.f7461c;
        f0<InfoMessageModelRealm> f0Var = new f0<>(this);
        this.f7684b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7684b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k1.class != obj.getClass()) {
            return false;
        }
        k1 k1Var = (k1) obj;
        io.realm.a aVar = this.f7684b.f7533e;
        io.realm.a aVar2 = k1Var.f7684b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7684b.f7531c.q().m();
        String strM2 = k1Var.f7684b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7684b.f7531c.Y() == k1Var.f7684b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7684b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$isMessageShown */
    public final boolean getIsMessageShown() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.x(this.f7683a.f7694o);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageButtonText */
    public final String getMessageButtonText() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7693n);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageContent */
    public final String getMessageContent() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7687h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageFolder */
    public final String getMessageFolder() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7691l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageFolderTitle */
    public final String getMessageFolderTitle() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7692m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageIconLink */
    public final String getMessageIconLink() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7690k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageId */
    public final Integer getMessageId() {
        this.f7684b.f7533e.b();
        if (this.f7684b.f7531c.C(this.f7683a.f7685e)) {
            return null;
        }
        return Integer.valueOf((int) this.f7684b.f7531c.y(this.f7683a.f7685e));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageLink */
    public final String getMessageLink() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7689j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageServiceCode */
    public final Integer getMessageServiceCode() {
        this.f7684b.f7533e.b();
        if (this.f7684b.f7531c.C(this.f7683a.f7688i)) {
            return null;
        }
        return Integer.valueOf((int) this.f7684b.f7531c.y(this.f7683a.f7688i));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageTitle */
    public final String getMessageTitle() {
        this.f7684b.f7533e.b();
        return this.f7684b.f7531c.R(this.f7683a.f7686g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm, io.realm.l1
    /* renamed from: realmGet$messageType */
    public final Integer getMessageType() {
        this.f7684b.f7533e.b();
        if (this.f7684b.f7531c.C(this.f7683a.f)) {
            return null;
        }
        return Integer.valueOf((int) this.f7684b.f7531c.y(this.f7683a.f));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$isMessageShown(boolean z10) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7684b.f7531c.t(this.f7683a.f7694o, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7683a.f7694o, pVar.Y(), z10);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageButtonText(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7693n);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7693n, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7693n, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7693n, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageContent(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7687h);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7687h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7687h, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7687h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageFolder(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7691l);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7691l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7691l, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7691l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageFolderTitle(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7692m);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7692m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7692m, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7692m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageIconLink(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7690k);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7690k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7690k, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7690k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageId(Integer num) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'messageId' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageLink(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7689j);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7689j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7689j, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7689j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageServiceCode(Integer num) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<InfoMessageModelRealm> f0Var2 = this.f7684b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7683a.f7688i);
                return;
            } else {
                f0Var2.f7531c.A(this.f7683a.f7688i, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7683a.f7688i, pVar.Y());
            } else {
                pVar.q().v(this.f7683a.f7688i, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageTitle(String str) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7684b.f7531c.M(this.f7683a.f7686g);
                return;
            } else {
                this.f7684b.f7531c.o(this.f7683a.f7686g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7683a.f7686g, pVar.Y());
            } else {
                pVar.q().x(this.f7683a.f7686g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm
    public final void realmSet$messageType(Integer num) {
        f0<InfoMessageModelRealm> f0Var = this.f7684b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<InfoMessageModelRealm> f0Var2 = this.f7684b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7683a.f);
                return;
            } else {
                f0Var2.f7531c.A(this.f7683a.f, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7683a.f, pVar.Y());
            } else {
                pVar.q().v(this.f7683a.f, pVar.Y(), num.intValue());
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("InfoMessageModelRealm = proxy[{messageId:");
        sb2.append(getMessageId() != null ? getMessageId() : "null");
        sb2.append("},{messageType:");
        sb2.append(getMessageType() != null ? getMessageType() : "null");
        sb2.append("},{messageTitle:");
        sb2.append(getMessageTitle() != null ? getMessageTitle() : "null");
        sb2.append("},{messageContent:");
        sb2.append(getMessageContent() != null ? getMessageContent() : "null");
        sb2.append("},{messageServiceCode:");
        sb2.append(getMessageServiceCode() != null ? getMessageServiceCode() : "null");
        sb2.append("},{messageLink:");
        sb2.append(getMessageLink() != null ? getMessageLink() : "null");
        sb2.append("},{messageIconLink:");
        sb2.append(getMessageIconLink() != null ? getMessageIconLink() : "null");
        sb2.append("},{messageFolder:");
        sb2.append(getMessageFolder() != null ? getMessageFolder() : "null");
        sb2.append("},{messageFolderTitle:");
        sb2.append(getMessageFolderTitle() != null ? getMessageFolderTitle() : "null");
        sb2.append("},{messageButtonText:");
        sb2.append(getMessageButtonText() != null ? getMessageButtonText() : "null");
        sb2.append("},{isMessageShown:");
        sb2.append(getIsMessageShown());
        sb2.append("}]");
        return sb2.toString();
    }
}
