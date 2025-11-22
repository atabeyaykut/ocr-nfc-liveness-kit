package io.realm;

import io.realm.a;
import io.realm.a2;
import io.realm.annotations.RealmModule;
import io.realm.c2;
import io.realm.e1;
import io.realm.e2;
import io.realm.exceptions.RealmException;
import io.realm.g1;
import io.realm.g2;
import io.realm.i1;
import io.realm.i2;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.k1;
import io.realm.k2;
import io.realm.m1;
import io.realm.m2;
import io.realm.o1;
import io.realm.o2;
import io.realm.q1;
import io.realm.q2;
import io.realm.s1;
import io.realm.s2;
import io.realm.u1;
import io.realm.u2;
import io.realm.w1;
import io.realm.w2;
import io.realm.y1;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.BarcodeServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.EBYSDocumentServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.MostUsedServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm;

@RealmModule
/* loaded from: classes2.dex */
class DefaultRealmModuleMediator extends io.realm.internal.o {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<Class<? extends s0>> f7444a;

    static {
        HashSet hashSet = new HashSet(23);
        hashSet.add(WonderServiceModelRealm.class);
        hashSet.add(ServiceModelRealm.class);
        hashSet.add(NewestServiceModelRealm.class);
        hashSet.add(MostUsedServiceModelRealm.class);
        hashSet.add(EditorChoiceServiceModelRealm.class);
        hashSet.add(EBYSDocumentServiceModelRealm.class);
        hashSet.add(ConceptServiceModelRealm.class);
        hashSet.add(BarcodeServiceModelRealm.class);
        hashSet.add(SectionListModelRealm.class);
        hashSet.add(MKTAccidentReport.class);
        hashSet.add(AccidentReportVehicle.class);
        hashSet.add(AccidentReportPolicy.class);
        hashSet.add(AccidentReportParticipant.class);
        hashSet.add(AccidentReportMedia.class);
        hashSet.add(AccidentReportLocation.class);
        hashSet.add(AccidentReportDriver.class);
        hashSet.add(AccidentMergedReport.class);
        hashSet.add(InstitutionModelRealm.class);
        hashSet.add(InstitutionContactModelRealm.class);
        hashSet.add(InfoMessageModelRealm.class);
        hashSet.add(MyCityListDBModel.class);
        hashSet.add(CityModelRealm.class);
        hashSet.add(AboutPageModelRealm.class);
        f7444a = Collections.unmodifiableSet(hashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x085d  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0996  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0a60  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0b7d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0240  */
    @Override // io.realm.internal.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.realm.s0 a(io.realm.g0 r18, io.realm.s0 r19, boolean r20, java.util.HashMap r21, java.util.Set r22) {
        /*
            Method dump skipped, instructions count: 3370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.DefaultRealmModuleMediator.a(io.realm.g0, io.realm.s0, boolean, java.util.HashMap, java.util.Set):io.realm.s0");
    }

    @Override // io.realm.internal.o
    public final io.realm.internal.c b(Class<? extends s0> cls, OsSchemaInfo osSchemaInfo) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        }
        if (cls.equals(WonderServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo = w2.f7883c;
            return new w2.a(osSchemaInfo);
        }
        if (cls.equals(ServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo2 = u2.f7860c;
            return new u2.a(osSchemaInfo);
        }
        if (cls.equals(NewestServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo3 = s2.f7842c;
            return new s2.a(osSchemaInfo);
        }
        if (cls.equals(MostUsedServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo4 = q2.f7823c;
            return new q2.a(osSchemaInfo);
        }
        if (cls.equals(EditorChoiceServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo5 = o2.f7785c;
            return new o2.a(osSchemaInfo);
        }
        if (cls.equals(EBYSDocumentServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo6 = m2.f7735c;
            return new m2.a(osSchemaInfo);
        }
        if (cls.equals(ConceptServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo7 = k2.f7695c;
            return new k2.a(osSchemaInfo);
        }
        if (cls.equals(BarcodeServiceModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo8 = i2.f7570c;
            return new i2.a(osSchemaInfo);
        }
        if (cls.equals(SectionListModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo9 = g2.f7546c;
            return new g2.a(osSchemaInfo);
        }
        if (cls.equals(MKTAccidentReport.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo10 = e2.f7509d;
            return new e2.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportVehicle.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo11 = c2.f7478d;
            return new c2.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportPolicy.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo12 = a2.f7466c;
            return new a2.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportParticipant.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo13 = y1.f7898c;
            return new y1.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportMedia.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo14 = w1.f7875c;
            return new w1.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportLocation.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo15 = u1.f7849c;
            return new u1.a(osSchemaInfo);
        }
        if (cls.equals(AccidentReportDriver.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo16 = s1.f7831c;
            return new s1.a(osSchemaInfo);
        }
        if (cls.equals(AccidentMergedReport.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo17 = q1.f7801d;
            return new q1.a(osSchemaInfo);
        }
        if (cls.equals(InstitutionModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo18 = o1.f7770e;
            return new o1.a(osSchemaInfo);
        }
        if (cls.equals(InstitutionContactModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo19 = m1.f7723c;
            return new m1.a(osSchemaInfo);
        }
        if (cls.equals(InfoMessageModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo20 = k1.f7682c;
            return new k1.a(osSchemaInfo);
        }
        if (cls.equals(MyCityListDBModel.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo21 = i1.f7566c;
            return new i1.a(osSchemaInfo);
        }
        if (cls.equals(CityModelRealm.class)) {
            OsObjectSchemaInfo osObjectSchemaInfo22 = g1.f7540c;
            return new g1.a(osSchemaInfo);
        }
        if (!cls.equals(AboutPageModelRealm.class)) {
            throw io.realm.internal.o.e(cls);
        }
        OsObjectSchemaInfo osObjectSchemaInfo23 = e1.f7503c;
        return new e1.a(osSchemaInfo);
    }

    @Override // io.realm.internal.o
    public final Class<? extends s0> c(String str) {
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        }
        if (str.equals("WonderServiceModelRealm")) {
            return WonderServiceModelRealm.class;
        }
        if (str.equals("ServiceModelRealm")) {
            return ServiceModelRealm.class;
        }
        if (str.equals("NewestServiceModelRealm")) {
            return NewestServiceModelRealm.class;
        }
        if (str.equals("MostUsedServiceModelRealm")) {
            return MostUsedServiceModelRealm.class;
        }
        if (str.equals("EditorChoiceServiceModelRealm")) {
            return EditorChoiceServiceModelRealm.class;
        }
        if (str.equals("EBYSDocumentServiceModelRealm")) {
            return EBYSDocumentServiceModelRealm.class;
        }
        if (str.equals("ConceptServiceModelRealm")) {
            return ConceptServiceModelRealm.class;
        }
        if (str.equals("BarcodeServiceModelRealm")) {
            return BarcodeServiceModelRealm.class;
        }
        if (str.equals("SectionListModelRealm")) {
            return SectionListModelRealm.class;
        }
        if (str.equals("MKTAccidentReport")) {
            return MKTAccidentReport.class;
        }
        if (str.equals("AccidentReportVehicle")) {
            return AccidentReportVehicle.class;
        }
        if (str.equals("AccidentReportPolicy")) {
            return AccidentReportPolicy.class;
        }
        if (str.equals("AccidentReportParticipant")) {
            return AccidentReportParticipant.class;
        }
        if (str.equals("AccidentReportMedia")) {
            return AccidentReportMedia.class;
        }
        if (str.equals("AccidentReportLocation")) {
            return AccidentReportLocation.class;
        }
        if (str.equals("AccidentReportDriver")) {
            return AccidentReportDriver.class;
        }
        if (str.equals("AccidentMergedReport")) {
            return AccidentMergedReport.class;
        }
        if (str.equals("InstitutionModelRealm")) {
            return InstitutionModelRealm.class;
        }
        if (str.equals("InstitutionContactModelRealm")) {
            return InstitutionContactModelRealm.class;
        }
        if (str.equals("InfoMessageModelRealm")) {
            return InfoMessageModelRealm.class;
        }
        if (str.equals("MyCityListDBModel")) {
            return MyCityListDBModel.class;
        }
        if (str.equals("CityModelRealm")) {
            return CityModelRealm.class;
        }
        if (str.equals("AboutPageModelRealm")) {
            return AboutPageModelRealm.class;
        }
        throw new RealmException(String.format("'%s' is not part of the schema for this Realm.", str));
    }

    @Override // io.realm.internal.o
    public final HashMap d() {
        HashMap map = new HashMap(23);
        map.put(WonderServiceModelRealm.class, w2.f7883c);
        map.put(ServiceModelRealm.class, u2.f7860c);
        map.put(NewestServiceModelRealm.class, s2.f7842c);
        map.put(MostUsedServiceModelRealm.class, q2.f7823c);
        map.put(EditorChoiceServiceModelRealm.class, o2.f7785c);
        map.put(EBYSDocumentServiceModelRealm.class, m2.f7735c);
        map.put(ConceptServiceModelRealm.class, k2.f7695c);
        map.put(BarcodeServiceModelRealm.class, i2.f7570c);
        map.put(SectionListModelRealm.class, g2.f7546c);
        map.put(MKTAccidentReport.class, e2.f7509d);
        map.put(AccidentReportVehicle.class, c2.f7478d);
        map.put(AccidentReportPolicy.class, a2.f7466c);
        map.put(AccidentReportParticipant.class, y1.f7898c);
        map.put(AccidentReportMedia.class, w1.f7875c);
        map.put(AccidentReportLocation.class, u1.f7849c);
        map.put(AccidentReportDriver.class, s1.f7831c);
        map.put(AccidentMergedReport.class, q1.f7801d);
        map.put(InstitutionModelRealm.class, o1.f7770e);
        map.put(InstitutionContactModelRealm.class, m1.f7723c);
        map.put(InfoMessageModelRealm.class, k1.f7682c);
        map.put(MyCityListDBModel.class, i1.f7566c);
        map.put(CityModelRealm.class, g1.f7540c);
        map.put(AboutPageModelRealm.class, e1.f7503c);
        return map;
    }

    @Override // io.realm.internal.o
    public final Set<Class<? extends s0>> f() {
        return f7444a;
    }

    @Override // io.realm.internal.o
    public final String i(Class<? extends s0> cls) {
        if (cls.equals(WonderServiceModelRealm.class)) {
            return "WonderServiceModelRealm";
        }
        if (cls.equals(ServiceModelRealm.class)) {
            return "ServiceModelRealm";
        }
        if (cls.equals(NewestServiceModelRealm.class)) {
            return "NewestServiceModelRealm";
        }
        if (cls.equals(MostUsedServiceModelRealm.class)) {
            return "MostUsedServiceModelRealm";
        }
        if (cls.equals(EditorChoiceServiceModelRealm.class)) {
            return "EditorChoiceServiceModelRealm";
        }
        if (cls.equals(EBYSDocumentServiceModelRealm.class)) {
            return "EBYSDocumentServiceModelRealm";
        }
        if (cls.equals(ConceptServiceModelRealm.class)) {
            return "ConceptServiceModelRealm";
        }
        if (cls.equals(BarcodeServiceModelRealm.class)) {
            return "BarcodeServiceModelRealm";
        }
        if (cls.equals(SectionListModelRealm.class)) {
            return "SectionListModelRealm";
        }
        if (cls.equals(MKTAccidentReport.class)) {
            return "MKTAccidentReport";
        }
        if (cls.equals(AccidentReportVehicle.class)) {
            return "AccidentReportVehicle";
        }
        if (cls.equals(AccidentReportPolicy.class)) {
            return "AccidentReportPolicy";
        }
        if (cls.equals(AccidentReportParticipant.class)) {
            return "AccidentReportParticipant";
        }
        if (cls.equals(AccidentReportMedia.class)) {
            return "AccidentReportMedia";
        }
        if (cls.equals(AccidentReportLocation.class)) {
            return "AccidentReportLocation";
        }
        if (cls.equals(AccidentReportDriver.class)) {
            return "AccidentReportDriver";
        }
        if (cls.equals(AccidentMergedReport.class)) {
            return "AccidentMergedReport";
        }
        if (cls.equals(InstitutionModelRealm.class)) {
            return "InstitutionModelRealm";
        }
        if (cls.equals(InstitutionContactModelRealm.class)) {
            return "InstitutionContactModelRealm";
        }
        if (cls.equals(InfoMessageModelRealm.class)) {
            return "InfoMessageModelRealm";
        }
        if (cls.equals(MyCityListDBModel.class)) {
            return "MyCityListDBModel";
        }
        if (cls.equals(CityModelRealm.class)) {
            return "CityModelRealm";
        }
        if (cls.equals(AboutPageModelRealm.class)) {
            return "AboutPageModelRealm";
        }
        throw io.realm.internal.o.e(cls);
    }

    @Override // io.realm.internal.o
    public final boolean j(Class<? extends s0> cls) {
        return WonderServiceModelRealm.class.isAssignableFrom(cls) || ServiceModelRealm.class.isAssignableFrom(cls) || NewestServiceModelRealm.class.isAssignableFrom(cls) || MostUsedServiceModelRealm.class.isAssignableFrom(cls) || EditorChoiceServiceModelRealm.class.isAssignableFrom(cls) || EBYSDocumentServiceModelRealm.class.isAssignableFrom(cls) || ConceptServiceModelRealm.class.isAssignableFrom(cls) || BarcodeServiceModelRealm.class.isAssignableFrom(cls) || SectionListModelRealm.class.isAssignableFrom(cls) || MKTAccidentReport.class.isAssignableFrom(cls) || InstitutionModelRealm.class.isAssignableFrom(cls) || InstitutionContactModelRealm.class.isAssignableFrom(cls) || InfoMessageModelRealm.class.isAssignableFrom(cls) || MyCityListDBModel.class.isAssignableFrom(cls) || CityModelRealm.class.isAssignableFrom(cls) || AboutPageModelRealm.class.isAssignableFrom(cls);
    }

    @Override // io.realm.internal.o
    public final long k(g0 g0Var, s0 s0Var, HashMap map) {
        Class<?> superclass = s0Var instanceof io.realm.internal.n ? s0Var.getClass().getSuperclass() : s0Var.getClass();
        if (superclass.equals(WonderServiceModelRealm.class)) {
            return w2.c(g0Var, (WonderServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(ServiceModelRealm.class)) {
            return u2.d(g0Var, (ServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(NewestServiceModelRealm.class)) {
            return s2.c(g0Var, (NewestServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(MostUsedServiceModelRealm.class)) {
            return q2.c(g0Var, (MostUsedServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(EditorChoiceServiceModelRealm.class)) {
            return o2.c(g0Var, (EditorChoiceServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(EBYSDocumentServiceModelRealm.class)) {
            return m2.c(g0Var, (EBYSDocumentServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(ConceptServiceModelRealm.class)) {
            return k2.c(g0Var, (ConceptServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(BarcodeServiceModelRealm.class)) {
            return i2.c(g0Var, (BarcodeServiceModelRealm) s0Var, map);
        }
        if (superclass.equals(SectionListModelRealm.class)) {
            return g2.c(g0Var, (SectionListModelRealm) s0Var, map);
        }
        if (superclass.equals(MKTAccidentReport.class)) {
            return e2.d(g0Var, (MKTAccidentReport) s0Var, map);
        }
        if (superclass.equals(AccidentReportVehicle.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentReportPolicy.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentReportParticipant.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentReportMedia.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentReportLocation.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentReportDriver.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(AccidentMergedReport.class)) {
            throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
        }
        if (superclass.equals(InstitutionModelRealm.class)) {
            return o1.d(g0Var, (InstitutionModelRealm) s0Var, map);
        }
        if (superclass.equals(InstitutionContactModelRealm.class)) {
            return m1.d(g0Var, (InstitutionContactModelRealm) s0Var, map);
        }
        if (superclass.equals(InfoMessageModelRealm.class)) {
            return k1.d(g0Var, (InfoMessageModelRealm) s0Var, map);
        }
        if (superclass.equals(MyCityListDBModel.class)) {
            return i1.d(g0Var, (MyCityListDBModel) s0Var, map);
        }
        if (superclass.equals(CityModelRealm.class)) {
            return g1.d(g0Var, (CityModelRealm) s0Var, map);
        }
        if (superclass.equals(AboutPageModelRealm.class)) {
            return e1.d(g0Var, (AboutPageModelRealm) s0Var, map);
        }
        throw io.realm.internal.o.e(superclass);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:754:? A[RETURN, SYNTHETIC] */
    @Override // io.realm.internal.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(io.realm.g0 r32, java.util.Collection<? extends io.realm.s0> r33) {
        /*
            Method dump skipped, instructions count: 3887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.DefaultRealmModuleMediator.l(io.realm.g0, java.util.Collection):void");
    }

    @Override // io.realm.internal.o
    public final <E extends s0> boolean m(Class<E> cls) {
        if (cls.equals(WonderServiceModelRealm.class) || cls.equals(ServiceModelRealm.class) || cls.equals(NewestServiceModelRealm.class) || cls.equals(MostUsedServiceModelRealm.class) || cls.equals(EditorChoiceServiceModelRealm.class) || cls.equals(EBYSDocumentServiceModelRealm.class) || cls.equals(ConceptServiceModelRealm.class) || cls.equals(BarcodeServiceModelRealm.class) || cls.equals(SectionListModelRealm.class) || cls.equals(MKTAccidentReport.class)) {
            return false;
        }
        if (cls.equals(AccidentReportVehicle.class) || cls.equals(AccidentReportPolicy.class) || cls.equals(AccidentReportParticipant.class) || cls.equals(AccidentReportMedia.class) || cls.equals(AccidentReportLocation.class) || cls.equals(AccidentReportDriver.class) || cls.equals(AccidentMergedReport.class)) {
            return true;
        }
        if (cls.equals(InstitutionModelRealm.class) || cls.equals(InstitutionContactModelRealm.class) || cls.equals(InfoMessageModelRealm.class) || cls.equals(MyCityListDBModel.class) || cls.equals(CityModelRealm.class) || cls.equals(AboutPageModelRealm.class)) {
            return false;
        }
        throw io.realm.internal.o.e(cls);
    }

    @Override // io.realm.internal.o
    public final <E extends s0> E n(Class<E> cls, Object obj, io.realm.internal.p pVar, io.realm.internal.c cVar, boolean z10, List<String> list) {
        a.b bVar = a.f7452h.get();
        try {
            bVar.b((a) obj, pVar, cVar, z10, list);
            if (cls == null) {
                throw new NullPointerException("A class extending RealmObject must be provided");
            }
            if (cls.equals(WonderServiceModelRealm.class)) {
                return cls.cast(new w2());
            }
            if (cls.equals(ServiceModelRealm.class)) {
                return cls.cast(new u2());
            }
            if (cls.equals(NewestServiceModelRealm.class)) {
                return cls.cast(new s2());
            }
            if (cls.equals(MostUsedServiceModelRealm.class)) {
                return cls.cast(new q2());
            }
            if (cls.equals(EditorChoiceServiceModelRealm.class)) {
                return cls.cast(new o2());
            }
            if (cls.equals(EBYSDocumentServiceModelRealm.class)) {
                return cls.cast(new m2());
            }
            if (cls.equals(ConceptServiceModelRealm.class)) {
                return cls.cast(new k2());
            }
            if (cls.equals(BarcodeServiceModelRealm.class)) {
                return cls.cast(new i2());
            }
            if (cls.equals(SectionListModelRealm.class)) {
                return cls.cast(new g2());
            }
            if (cls.equals(MKTAccidentReport.class)) {
                return cls.cast(new e2());
            }
            if (cls.equals(AccidentReportVehicle.class)) {
                return cls.cast(new c2());
            }
            if (cls.equals(AccidentReportPolicy.class)) {
                return cls.cast(new a2());
            }
            if (cls.equals(AccidentReportParticipant.class)) {
                return cls.cast(new y1());
            }
            if (cls.equals(AccidentReportMedia.class)) {
                return cls.cast(new w1());
            }
            if (cls.equals(AccidentReportLocation.class)) {
                return cls.cast(new u1());
            }
            if (cls.equals(AccidentReportDriver.class)) {
                return cls.cast(new s1());
            }
            if (cls.equals(AccidentMergedReport.class)) {
                return cls.cast(new q1());
            }
            if (cls.equals(InstitutionModelRealm.class)) {
                return cls.cast(new o1());
            }
            if (cls.equals(InstitutionContactModelRealm.class)) {
                return cls.cast(new m1());
            }
            if (cls.equals(InfoMessageModelRealm.class)) {
                return cls.cast(new k1());
            }
            if (cls.equals(MyCityListDBModel.class)) {
                return cls.cast(new i1());
            }
            if (cls.equals(CityModelRealm.class)) {
                return cls.cast(new g1());
            }
            if (cls.equals(AboutPageModelRealm.class)) {
                return cls.cast(new e1());
            }
            throw io.realm.internal.o.e(cls);
        } finally {
            bVar.a();
        }
    }

    @Override // io.realm.internal.o
    public final boolean o() {
        return true;
    }

    @Override // io.realm.internal.o
    public final void p(g0 g0Var, s0 s0Var, s0 s0Var2, HashMap map, Set set) {
        Class<? super Object> superclass = s0Var2.getClass().getSuperclass();
        if (superclass.equals(WonderServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm");
        }
        if (superclass.equals(ServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm");
        }
        if (superclass.equals(NewestServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm");
        }
        if (superclass.equals(MostUsedServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.MostUsedServiceModelRealm");
        }
        if (superclass.equals(EditorChoiceServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm");
        }
        if (superclass.equals(EBYSDocumentServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.EBYSDocumentServiceModelRealm");
        }
        if (superclass.equals(ConceptServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm");
        }
        if (superclass.equals(BarcodeServiceModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.service.BarcodeServiceModelRealm");
        }
        if (superclass.equals(SectionListModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm");
        }
        if (superclass.equals(MKTAccidentReport.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport");
        }
        if (superclass.equals(AccidentReportVehicle.class)) {
            c2.e(g0Var, (AccidentReportVehicle) s0Var, (AccidentReportVehicle) s0Var2, map, set);
            return;
        }
        if (superclass.equals(AccidentReportPolicy.class)) {
            a2.d(g0Var, (AccidentReportPolicy) s0Var, (AccidentReportPolicy) s0Var2, set);
            return;
        }
        if (superclass.equals(AccidentReportParticipant.class)) {
            y1.e(g0Var, (AccidentReportParticipant) s0Var, (AccidentReportParticipant) s0Var2, set);
            return;
        }
        if (superclass.equals(AccidentReportMedia.class)) {
            w1.f(g0Var, (AccidentReportMedia) s0Var, (AccidentReportMedia) s0Var2, set);
            return;
        }
        if (superclass.equals(AccidentReportLocation.class)) {
            u1.f(g0Var, (AccidentReportLocation) s0Var, (AccidentReportLocation) s0Var2, set);
            return;
        }
        if (superclass.equals(AccidentReportDriver.class)) {
            s1.f(g0Var, (AccidentReportDriver) s0Var, (AccidentReportDriver) s0Var2, set);
            return;
        }
        if (superclass.equals(AccidentMergedReport.class)) {
            q1.f(g0Var, (AccidentMergedReport) s0Var, (AccidentMergedReport) s0Var2, map, set);
            return;
        }
        if (superclass.equals(InstitutionModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm");
        }
        if (superclass.equals(InstitutionContactModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm");
        }
        if (superclass.equals(InfoMessageModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm");
        }
        if (superclass.equals(MyCityListDBModel.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel");
        }
        if (superclass.equals(CityModelRealm.class)) {
            throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm");
        }
        if (!superclass.equals(AboutPageModelRealm.class)) {
            throw io.realm.internal.o.e(superclass);
        }
        throw io.realm.internal.o.g("tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm");
    }
}
