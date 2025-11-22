.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/o;
.source "SourceFile"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/realm/internal/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/g0;Lio/realm/s0;ZLjava/util/HashMap;Ljava/util/Set;)Lio/realm/s0;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    instance-of v2, v1, Lio/realm/internal/n;

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    move-object v9, v2

    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    if-eqz v2, :cond_9

    .line 1
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 2
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/w2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    sget-object v1, Lio/realm/w2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 3
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_2

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 7
    iget-wide v14, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v16, v14, v5

    if-nez v16, :cond_1

    .line 8
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v5, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v5, v5, Lio/realm/o0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1b

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_3

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    goto/16 :goto_1b

    :cond_3
    if-eqz p3, :cond_6

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v5, v12, Lio/realm/w2$a;->e:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v15

    if-nez v15, :cond_4

    invoke-virtual {v1, v5, v6}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v5

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v5, v6, v2, v3}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v5

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v15, v5, v2

    if-nez v15, :cond_5

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-virtual {v1, v5, v6}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/w2;

    invoke-direct {v6}, Lio/realm/w2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_6
    const/4 v6, 0x0

    :goto_2
    move/from16 v4, p3

    :goto_3
    if-eqz v4, :cond_7

    .line 10
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/w2$a;->e:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/w2$a;->f:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/w2$a;->g:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$question()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    :goto_4
    move-object v13, v6

    goto/16 :goto_1b

    .line 11
    :cond_7
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_8

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    :goto_5
    move-object v13, v1

    goto/16 :goto_1b

    :cond_8
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/w2$a;->e:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/w2$a;->f:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/w2$a;->g:J

    invoke-interface {v13}, Lio/realm/x2;->realmGet$question()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 12
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/w2;

    invoke-direct {v0}, Lio/realm/w2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 13
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v13, v0

    goto/16 :goto_1b

    .line 14
    :cond_9
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 15
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 16
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/u2$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/u2;->c(Lio/realm/g0;Lio/realm/u2$a;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object v0

    goto/16 :goto_1e

    :cond_a
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 17
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 18
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/s2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    sget-object v1, Lio/realm/s2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 19
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_c

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_c

    .line 21
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_b

    .line 24
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_1b

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_d

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    goto/16 :goto_1b

    :cond_d
    if-eqz p3, :cond_10

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/s2$a;->e:J

    invoke-interface {v13}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_7

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_7
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_f

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/s2;

    invoke-direct {v6}, Lio/realm/s2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_10
    const/4 v6, 0x0

    :goto_8
    move/from16 v4, p3

    :goto_9
    if-eqz v4, :cond_11

    .line 26
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/s2$a;->e:J

    invoke-interface {v13}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/s2$a;->f:J

    invoke-interface {v13}, Lio/realm/t2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 27
    :cond_11
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_12

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/s2$a;->e:J

    invoke-interface {v13}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/s2$a;->f:J

    invoke-interface {v13}, Lio/realm/t2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 28
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/s2;

    invoke-direct {v0}, Lio/realm/s2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 29
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 30
    :cond_13
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 31
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 32
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/q2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    sget-object v1, Lio/realm/q2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 33
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_15

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_15

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_15

    .line 35
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 36
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 37
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_14

    .line 38
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_1b

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_16

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    goto/16 :goto_1b

    :cond_16
    if-eqz p3, :cond_19

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/q2$a;->e:J

    invoke-interface {v13}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_17

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_a

    :cond_17
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_a
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_18

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_c

    :cond_18
    :try_start_2
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/q2;

    invoke-direct {v6}, Lio/realm/q2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_b

    :catchall_2
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_19
    const/4 v6, 0x0

    :goto_b
    move/from16 v4, p3

    :goto_c
    if-eqz v4, :cond_1a

    .line 40
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/q2$a;->e:J

    invoke-interface {v13}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/q2$a;->f:J

    invoke-interface {v13}, Lio/realm/r2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 41
    :cond_1a
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_1b

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    goto/16 :goto_5

    :cond_1b
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/q2$a;->e:J

    invoke-interface {v13}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/q2$a;->f:J

    invoke-interface {v13}, Lio/realm/r2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 42
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/q2;

    invoke-direct {v0}, Lio/realm/q2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 43
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 44
    :cond_1c
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 45
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 46
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/o2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    sget-object v1, Lio/realm/o2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 47
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_1e

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_1e

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 48
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_1e

    .line 49
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 50
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 51
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_1d

    .line 52
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_1b

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_1f

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    goto/16 :goto_1b

    :cond_1f
    if-eqz p3, :cond_22

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/o2$a;->e:J

    invoke-interface {v13}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_20

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_d

    :cond_20
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_d
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_21

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_f

    :cond_21
    :try_start_3
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/o2;

    invoke-direct {v6}, Lio/realm/o2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_e

    :catchall_3
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_22
    const/4 v6, 0x0

    :goto_e
    move/from16 v4, p3

    :goto_f
    if-eqz v4, :cond_23

    .line 54
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/o2$a;->e:J

    invoke-interface {v13}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/o2$a;->f:J

    invoke-interface {v13}, Lio/realm/p2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 55
    :cond_23
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_24

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    goto/16 :goto_5

    :cond_24
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/o2$a;->e:J

    invoke-interface {v13}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/o2$a;->f:J

    invoke-interface {v13}, Lio/realm/p2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 56
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/o2;

    invoke-direct {v0}, Lio/realm/o2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 57
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 58
    :cond_25
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 59
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 60
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/m2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    sget-object v1, Lio/realm/m2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 61
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_27

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_27

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 62
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_27

    .line 63
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 64
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 65
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_26

    .line 66
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_1b

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_28

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    goto/16 :goto_1b

    :cond_28
    if-eqz p3, :cond_2b

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/m2$a;->e:J

    invoke-interface {v13}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_29

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_10

    :cond_29
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_10
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_2a

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_12

    :cond_2a
    :try_start_4
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/m2;

    invoke-direct {v6}, Lio/realm/m2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_11

    :catchall_4
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_2b
    const/4 v6, 0x0

    :goto_11
    move/from16 v4, p3

    :goto_12
    if-eqz v4, :cond_2c

    .line 68
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/m2$a;->e:J

    invoke-interface {v13}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/m2$a;->f:J

    invoke-interface {v13}, Lio/realm/n2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 69
    :cond_2c
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_2d

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    goto/16 :goto_5

    :cond_2d
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/m2$a;->e:J

    invoke-interface {v13}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/m2$a;->f:J

    invoke-interface {v13}, Lio/realm/n2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 70
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/m2;

    invoke-direct {v0}, Lio/realm/m2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 71
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 72
    :cond_2e
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 73
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 74
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/k2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    sget-object v1, Lio/realm/k2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 75
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_30

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_30

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 76
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_30

    .line 77
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 78
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 79
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_2f

    .line 80
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_1b

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_31

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    goto/16 :goto_1b

    :cond_31
    if-eqz p3, :cond_34

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/k2$a;->e:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_32

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_13

    :cond_32
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_13
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_33

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_15

    :cond_33
    :try_start_5
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/k2;

    invoke-direct {v6}, Lio/realm/k2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_14

    :catchall_5
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_34
    const/4 v6, 0x0

    :goto_14
    move/from16 v4, p3

    :goto_15
    if-eqz v4, :cond_35

    .line 82
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/k2$a;->e:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/k2$a;->f:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->g:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$institutionCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/k2$a;->h:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$institutionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->i:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$configPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->j:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$link()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->k:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$explanation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->l:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$iconName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->m:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$baseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v12, Lio/realm/k2$a;->n:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$baseUrlCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/k2$a;->o:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 83
    :cond_35
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_36

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    goto/16 :goto_5

    :cond_36
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/k2$a;->e:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/k2$a;->f:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->g:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$institutionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/k2$a;->h:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$institutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->i:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$configPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->j:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->k:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$explanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->l:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$iconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->m:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v3, v12, Lio/realm/k2$a;->n:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$baseUrlCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/k2$a;->o:J

    invoke-interface {v13}, Lio/realm/l2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 84
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/k2;

    invoke-direct {v0}, Lio/realm/k2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 85
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 86
    :cond_37
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 87
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 88
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/i2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    sget-object v1, Lio/realm/i2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 89
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_39

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_39

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 90
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_39

    .line 91
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 92
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 93
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_38

    .line 94
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto/16 :goto_1b

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_3a

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    goto/16 :goto_1b

    :cond_3a
    if-eqz p3, :cond_3d

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/i2$a;->e:J

    invoke-interface {v13}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3b

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    move-result-wide v2

    goto :goto_16

    :cond_3b
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    :goto_16
    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_3c

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_18

    :cond_3c
    :try_start_6
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/i2;

    invoke-direct {v6}, Lio/realm/i2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_17

    :catchall_6
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_3d
    const/4 v6, 0x0

    :goto_17
    move/from16 v4, p3

    :goto_18
    if-eqz v4, :cond_3e

    .line 96
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/i2$a;->e:J

    invoke-interface {v13}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/i2$a;->f:J

    invoke-interface {v13}, Lio/realm/j2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 97
    :cond_3e
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_3f

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    goto/16 :goto_5

    :cond_3f
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/i2$a;->e:J

    invoke-interface {v13}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/i2$a;->f:J

    invoke-interface {v13}, Lio/realm/j2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 98
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/i2;

    invoke-direct {v0}, Lio/realm/i2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 99
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 100
    :cond_40
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 101
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 102
    invoke-virtual {v2, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lio/realm/g2$a;

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    sget-object v1, Lio/realm/g2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 103
    instance-of v1, v13, Lio/realm/internal/n;

    if-eqz v1, :cond_42

    invoke-static {v13}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_42

    move-object v1, v13

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 104
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_42

    .line 105
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 106
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 107
    iget-wide v2, v1, Lio/realm/a;->b:J

    iget-wide v5, v0, Lio/realm/a;->b:J

    cmp-long v14, v2, v5

    if-nez v14, :cond_41

    .line 108
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto/16 :goto_1b

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/realm/a$b;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_43

    move-object v13, v1

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    goto/16 :goto_1b

    :cond_43
    if-eqz p3, :cond_45

    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v12, Lio/realm/g2$a;->e:J

    invoke-interface {v13}, Lio/realm/h2;->realmGet$code()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v15, v2, v5

    if-nez v15, :cond_44

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_1a

    :cond_44
    :try_start_7
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v6, Lio/realm/g2;

    invoke-direct {v6}, Lio/realm/g2;-><init>()V

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    goto :goto_19

    :catchall_7
    move-exception v0

    invoke-virtual {v14}, Lio/realm/a$b;->a()V

    throw v0

    :cond_45
    const/4 v6, 0x0

    :goto_19
    move/from16 v4, p3

    :goto_1a
    if-eqz v4, :cond_46

    .line 110
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v2, v12, Lio/realm/g2$a;->e:J

    invoke-interface {v13}, Lio/realm/h2;->realmGet$code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v2, v12, Lio/realm/g2$a;->f:J

    invoke-interface {v13}, Lio/realm/h2;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    goto/16 :goto_4

    .line 111
    :cond_46
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/n;

    if-eqz v1, :cond_47

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    goto/16 :goto_5

    :cond_47
    invoke-virtual {v0, v10}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v2, v1, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v3, v12, Lio/realm/g2$a;->e:J

    invoke-interface {v13}, Lio/realm/h2;->realmGet$code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    iget-wide v3, v12, Lio/realm/g2$a;->f:J

    invoke-interface {v13}, Lio/realm/h2;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 112
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/realm/a$b;

    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v10}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance v0, Lio/realm/g2;

    invoke-direct {v0}, Lio/realm/g2;-><init>()V

    invoke-virtual {v8}, Lio/realm/a$b;->a()V

    .line 113
    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 114
    :goto_1b
    invoke-virtual {v9, v13}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1f

    :cond_48
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 115
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 116
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/e2$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/e2;->c(Lio/realm/g0;Lio/realm/e2$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    goto/16 :goto_1e

    :cond_49
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    if-eqz v3, :cond_50

    .line 117
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 118
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v3

    check-cast v3, Lio/realm/c2$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    sget-object v6, Lio/realm/c2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 119
    instance-of v6, v1, Lio/realm/internal/n;

    if-eqz v6, :cond_4b

    invoke-static {v1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v6

    if-nez v6, :cond_4b

    move-object v6, v1

    check-cast v6, Lio/realm/internal/n;

    invoke-interface {v6}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v10

    .line 120
    iget-object v10, v10, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v10, :cond_4b

    .line 121
    invoke-interface {v6}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v6

    .line 122
    iget-object v6, v6, Lio/realm/f0;->e:Lio/realm/a;

    .line 123
    iget-wide v12, v6, Lio/realm/a;->b:J

    iget-wide v14, v0, Lio/realm/a;->b:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_4a

    .line 124
    iget-object v6, v6, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v6, v6, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v10, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v10, v10, Lio/realm/o0;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    goto/16 :goto_1d

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    sget-object v6, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/a$b;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/internal/n;

    if-eqz v6, :cond_4c

    move-object v1, v6

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    goto/16 :goto_1d

    .line 126
    :cond_4c
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/internal/n;

    if-eqz v6, :cond_4d

    move-object v1, v6

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    goto/16 :goto_1d

    :cond_4d
    invoke-virtual {v0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v6, v2, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v10, v3, Lio/realm/c2$a;->e:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v10, v3, Lio/realm/c2$a;->f:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$plateCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v10, v3, Lio/realm/c2$a;->g:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$plateNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v10, v3, Lio/realm/c2$a;->h:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$ownerDifferentFromDriver()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v10, v3, Lio/realm/c2$a;->i:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$documentSerialCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v10, v3, Lio/realm/c2$a;->j:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$documentSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v10, v3, Lio/realm/c2$a;->k:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$ownerIdentityNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v11, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v3, Lio/realm/c2$a;->l:J

    invoke-interface {v1}, Lio/realm/d2;->realmGet$updatedDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-static {v0, v2}, Lio/realm/c2;->d(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/c2;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lio/realm/d2;->realmGet$policies()Lio/realm/q0;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v2}, Lio/realm/c2;->realmGet$policies()Lio/realm/q0;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/q0;->clear()V

    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v1}, Lio/realm/q0;->size()I

    move-result v6

    if-ge v4, v6, :cond_4f

    invoke-virtual {v1, v4}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    if-nez v8, :cond_4e

    .line 127
    iget-object v8, v3, Lio/realm/q0;->b:Lio/realm/x;

    iget-object v8, v8, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 128
    invoke-virtual {v8}, Lio/realm/internal/OsList;->n()J

    move-result-wide v10

    invoke-virtual {v0, v5}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    invoke-static {v0, v8}, Lio/realm/a2;->c(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/a2;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v0, v6, v8, v10}, Lio/realm/a2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;Ljava/util/Set;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachepolicies.toString()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move-object v1, v2

    goto/16 :goto_1d

    .line 129
    :cond_50
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 130
    iget-object v2, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 131
    invoke-virtual {v2, v5}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/a2$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    sget-object v3, Lio/realm/a2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 132
    instance-of v3, v1, Lio/realm/internal/n;

    if-eqz v3, :cond_52

    invoke-static {v1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v3

    if-nez v3, :cond_52

    move-object v3, v1

    check-cast v3, Lio/realm/internal/n;

    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v4

    .line 133
    iget-object v4, v4, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v4, :cond_52

    .line 134
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v3

    .line 135
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 136
    iget-wide v12, v3, Lio/realm/a;->b:J

    iget-wide v14, v0, Lio/realm/a;->b:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_51

    .line 137
    iget-object v3, v3, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v4, v0, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_1d

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    sget-object v3, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/a$b;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/n;

    if-eqz v3, :cond_53

    move-object v1, v3

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    goto :goto_1d

    .line 139
    :cond_53
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/n;

    if-eqz v3, :cond_54

    move-object v1, v3

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    goto :goto_1d

    :cond_54
    invoke-virtual {v0, v5}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    new-instance v4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v4, v3, v8}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v5, v2, Lio/realm/a2$a;->e:J

    invoke-interface {v1}, Lio/realm/b2;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v5, v2, Lio/realm/a2$a;->f:J

    invoke-interface {v1}, Lio/realm/b2;->realmGet$productCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v5, v2, Lio/realm/a2$a;->g:J

    invoke-interface {v1}, Lio/realm/b2;->realmGet$endDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v5, v2, Lio/realm/a2$a;->h:J

    invoke-interface {v1}, Lio/realm/b2;->realmGet$startDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    iget-wide v2, v2, Lio/realm/a2$a;->i:J

    invoke-interface {v1}, Lio/realm/b2;->realmGet$companyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    invoke-virtual {v4}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-static {v0, v2}, Lio/realm/a2;->c(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/a2;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 140
    :goto_1d
    invoke-virtual {v9, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1f

    :cond_55
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 141
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 142
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/y1$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-static {v0, v2, v1, v7, v8}, Lio/realm/y1;->c(Lio/realm/g0;Lio/realm/y1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    move-result-object v0

    goto/16 :goto_1e

    :cond_56
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 143
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 144
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/w1$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-static {v0, v2, v1, v7, v8}, Lio/realm/w1;->c(Lio/realm/g0;Lio/realm/w1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    move-result-object v0

    goto/16 :goto_1e

    :cond_57
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 145
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 146
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/u1$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-static {v0, v2, v1, v7, v8}, Lio/realm/u1;->c(Lio/realm/g0;Lio/realm/u1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    move-result-object v0

    goto/16 :goto_1e

    :cond_58
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 147
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 148
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/s1$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-static {v0, v2, v1, v7, v8}, Lio/realm/s1;->c(Lio/realm/g0;Lio/realm/s1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    move-result-object v0

    goto/16 :goto_1e

    :cond_59
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 149
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 150
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/q1$a;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-static {v0, v2, v1, v7, v8}, Lio/realm/q1;->c(Lio/realm/g0;Lio/realm/q1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v0

    goto/16 :goto_1e

    :cond_5a
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 151
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 152
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/o1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/o1;->c(Lio/realm/g0;Lio/realm/o1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    move-result-object v0

    goto/16 :goto_1e

    :cond_5b
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 153
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 154
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/m1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/m1;->c(Lio/realm/g0;Lio/realm/m1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    move-result-object v0

    goto/16 :goto_1e

    :cond_5c
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 155
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 156
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/k1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/k1;->c(Lio/realm/g0;Lio/realm/k1$a;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    move-result-object v0

    goto :goto_1e

    :cond_5d
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 157
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 158
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/i1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/i1;->c(Lio/realm/g0;Lio/realm/i1$a;Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    move-result-object v0

    goto :goto_1e

    :cond_5e
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 159
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 160
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/g1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/g1;->c(Lio/realm/g0;Lio/realm/g1$a;Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    move-result-object v0

    goto :goto_1e

    :cond_5f
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 161
    iget-object v3, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 162
    invoke-virtual {v3, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/e1$a;

    move-object v3, v1

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/e1;->c(Lio/realm/g0;Lio/realm/e1$a;Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    move-result-object v0

    :goto_1e
    invoke-virtual {v9, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1f
    check-cast v0, Lio/realm/s0;

    return-object v0

    :cond_60
    invoke-static {v9}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/c;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_17

    .line 2
    .line 3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lio/realm/w2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 12
    .line 13
    new-instance p1, Lio/realm/w2$a;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lio/realm/w2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lio/realm/u2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 28
    .line 29
    new-instance p1, Lio/realm/u2$a;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Lio/realm/u2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object p1, Lio/realm/s2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 44
    .line 45
    new-instance p1, Lio/realm/s2$a;

    .line 46
    .line 47
    invoke-direct {p1, p2}, Lio/realm/s2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget-object p1, Lio/realm/q2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 60
    .line 61
    new-instance p1, Lio/realm/q2$a;

    .line 62
    .line 63
    invoke-direct {p1, p2}, Lio/realm/q2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    sget-object p1, Lio/realm/o2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 76
    .line 77
    new-instance p1, Lio/realm/o2$a;

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lio/realm/o2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_4
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    sget-object p1, Lio/realm/m2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 92
    .line 93
    new-instance p1, Lio/realm/m2$a;

    .line 94
    .line 95
    invoke-direct {p1, p2}, Lio/realm/m2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_5
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    sget-object p1, Lio/realm/k2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 108
    .line 109
    new-instance p1, Lio/realm/k2$a;

    .line 110
    .line 111
    invoke-direct {p1, p2}, Lio/realm/k2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_6
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    sget-object p1, Lio/realm/i2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 124
    .line 125
    new-instance p1, Lio/realm/i2$a;

    .line 126
    .line 127
    invoke-direct {p1, p2}, Lio/realm/i2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_7
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    sget-object p1, Lio/realm/g2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 140
    .line 141
    new-instance p1, Lio/realm/g2$a;

    .line 142
    .line 143
    invoke-direct {p1, p2}, Lio/realm/g2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_8
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    sget-object p1, Lio/realm/e2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 156
    .line 157
    new-instance p1, Lio/realm/e2$a;

    .line 158
    .line 159
    invoke-direct {p1, p2}, Lio/realm/e2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_9
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    sget-object p1, Lio/realm/c2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 172
    .line 173
    new-instance p1, Lio/realm/c2$a;

    .line 174
    .line 175
    invoke-direct {p1, p2}, Lio/realm/c2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 176
    .line 177
    .line 178
    return-object p1

    .line 179
    :cond_a
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    sget-object p1, Lio/realm/a2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 188
    .line 189
    new-instance p1, Lio/realm/a2$a;

    .line 190
    .line 191
    invoke-direct {p1, p2}, Lio/realm/a2$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 192
    .line 193
    .line 194
    return-object p1

    .line 195
    :cond_b
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_c

    .line 202
    .line 203
    sget-object p1, Lio/realm/y1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 204
    .line 205
    new-instance p1, Lio/realm/y1$a;

    .line 206
    .line 207
    invoke-direct {p1, p2}, Lio/realm/y1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 208
    .line 209
    .line 210
    return-object p1

    .line 211
    :cond_c
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_d

    .line 218
    .line 219
    sget-object p1, Lio/realm/w1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 220
    .line 221
    new-instance p1, Lio/realm/w1$a;

    .line 222
    .line 223
    invoke-direct {p1, p2}, Lio/realm/w1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 224
    .line 225
    .line 226
    return-object p1

    .line 227
    :cond_d
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_e

    .line 234
    .line 235
    sget-object p1, Lio/realm/u1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 236
    .line 237
    new-instance p1, Lio/realm/u1$a;

    .line 238
    .line 239
    invoke-direct {p1, p2}, Lio/realm/u1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 240
    .line 241
    .line 242
    return-object p1

    .line 243
    :cond_e
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_f

    .line 250
    .line 251
    sget-object p1, Lio/realm/s1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 252
    .line 253
    new-instance p1, Lio/realm/s1$a;

    .line 254
    .line 255
    invoke-direct {p1, p2}, Lio/realm/s1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 256
    .line 257
    .line 258
    return-object p1

    .line 259
    :cond_f
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_10

    .line 266
    .line 267
    sget-object p1, Lio/realm/q1;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 268
    .line 269
    new-instance p1, Lio/realm/q1$a;

    .line 270
    .line 271
    invoke-direct {p1, p2}, Lio/realm/q1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 272
    .line 273
    .line 274
    return-object p1

    .line 275
    :cond_10
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_11

    .line 282
    .line 283
    sget-object p1, Lio/realm/o1;->e:Lio/realm/internal/OsObjectSchemaInfo;

    .line 284
    .line 285
    new-instance p1, Lio/realm/o1$a;

    .line 286
    .line 287
    invoke-direct {p1, p2}, Lio/realm/o1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 288
    .line 289
    .line 290
    return-object p1

    .line 291
    :cond_11
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_12

    .line 298
    .line 299
    sget-object p1, Lio/realm/m1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 300
    .line 301
    new-instance p1, Lio/realm/m1$a;

    .line 302
    .line 303
    invoke-direct {p1, p2}, Lio/realm/m1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 304
    .line 305
    .line 306
    return-object p1

    .line 307
    :cond_12
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_13

    .line 314
    .line 315
    sget-object p1, Lio/realm/k1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 316
    .line 317
    new-instance p1, Lio/realm/k1$a;

    .line 318
    .line 319
    invoke-direct {p1, p2}, Lio/realm/k1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 320
    .line 321
    .line 322
    return-object p1

    .line 323
    :cond_13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_14

    .line 330
    .line 331
    sget-object p1, Lio/realm/i1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 332
    .line 333
    new-instance p1, Lio/realm/i1$a;

    .line 334
    .line 335
    invoke-direct {p1, p2}, Lio/realm/i1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 336
    .line 337
    .line 338
    return-object p1

    .line 339
    :cond_14
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_15

    .line 346
    .line 347
    sget-object p1, Lio/realm/g1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 348
    .line 349
    new-instance p1, Lio/realm/g1$a;

    .line 350
    .line 351
    invoke-direct {p1, p2}, Lio/realm/g1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 352
    .line 353
    .line 354
    return-object p1

    .line 355
    :cond_15
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_16

    .line 362
    .line 363
    sget-object p1, Lio/realm/e1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 364
    .line 365
    new-instance p1, Lio/realm/e1$a;

    .line 366
    .line 367
    invoke-direct {p1, p2}, Lio/realm/e1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    .line 368
    .line 369
    .line 370
    return-object p1

    .line 371
    :cond_16
    invoke-static {p1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    throw p1

    .line 376
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    .line 377
    .line 378
    const-string p2, "A class extending RealmObject must be provided"

    .line 379
    .line 380
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_17

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_17

    .line 8
    .line 9
    const-string v0, "WonderServiceModelRealm"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const-string v0, "ServiceModelRealm"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    const-string v0, "NewestServiceModelRealm"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    const-string v0, "MostUsedServiceModelRealm"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    const-string v0, "EditorChoiceServiceModelRealm"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    const-string v0, "EBYSDocumentServiceModelRealm"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_5
    const-string v0, "ConceptServiceModelRealm"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_6
    const-string v0, "BarcodeServiceModelRealm"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_7
    const-string v0, "SectionListModelRealm"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_8
    const-string v0, "MKTAccidentReport"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_9
    const-string v0, "AccidentReportVehicle"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_a
    const-string v0, "AccidentReportPolicy"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 139
    .line 140
    return-object p1

    .line 141
    :cond_b
    const-string v0, "AccidentReportParticipant"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_c
    const-string v0, "AccidentReportMedia"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_d

    .line 159
    .line 160
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_d
    const-string v0, "AccidentReportLocation"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_e

    .line 170
    .line 171
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 172
    .line 173
    return-object p1

    .line 174
    :cond_e
    const-string v0, "AccidentReportDriver"

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_f

    .line 181
    .line 182
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 183
    .line 184
    return-object p1

    .line 185
    :cond_f
    const-string v0, "AccidentMergedReport"

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_10

    .line 192
    .line 193
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_10
    const-string v0, "InstitutionModelRealm"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_11

    .line 203
    .line 204
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 205
    .line 206
    return-object p1

    .line 207
    :cond_11
    const-string v0, "InstitutionContactModelRealm"

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_12

    .line 214
    .line 215
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 216
    .line 217
    return-object p1

    .line 218
    :cond_12
    const-string v0, "InfoMessageModelRealm"

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_13

    .line 225
    .line 226
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 227
    .line 228
    return-object p1

    .line 229
    :cond_13
    const-string v0, "MyCityListDBModel"

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_14

    .line 236
    .line 237
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 238
    .line 239
    return-object p1

    .line 240
    :cond_14
    const-string v0, "CityModelRealm"

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_15

    .line 247
    .line 248
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 249
    .line 250
    return-object p1

    .line 251
    :cond_15
    const-string v0, "AboutPageModelRealm"

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_16

    .line 258
    .line 259
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 260
    .line 261
    return-object p1

    .line 262
    :cond_16
    new-instance v0, Lio/realm/exceptions/RealmException;

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    new-array v1, v1, [Ljava/lang/Object;

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    aput-object p1, v1, v2

    .line 269
    .line 270
    const-string p1, "\'%s\' is not part of the schema for this Realm."

    .line 271
    .line 272
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    .line 281
    .line 282
    const-string v0, "A class extending RealmObject must be provided"

    .line 283
    .line 284
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p1
.end method

.method public final d()Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lio/realm/w2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 9
    .line 10
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lio/realm/u2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 16
    .line 17
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lio/realm/s2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 23
    .line 24
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lio/realm/q2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 30
    .line 31
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lio/realm/o2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 37
    .line 38
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lio/realm/m2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 44
    .line 45
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lio/realm/k2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 51
    .line 52
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v1, Lio/realm/i2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 58
    .line 59
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v1, Lio/realm/g2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 65
    .line 66
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object v1, Lio/realm/e2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 72
    .line 73
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sget-object v1, Lio/realm/c2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 79
    .line 80
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lio/realm/a2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 86
    .line 87
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object v1, Lio/realm/y1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 93
    .line 94
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lio/realm/w1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 100
    .line 101
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    sget-object v1, Lio/realm/u1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 107
    .line 108
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lio/realm/s1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 114
    .line 115
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    sget-object v1, Lio/realm/q1;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 121
    .line 122
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 123
    .line 124
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v1, Lio/realm/o1;->e:Lio/realm/internal/OsObjectSchemaInfo;

    .line 128
    .line 129
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    sget-object v1, Lio/realm/m1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 135
    .line 136
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v1, Lio/realm/k1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 142
    .line 143
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    sget-object v1, Lio/realm/i1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 149
    .line 150
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object v1, Lio/realm/g1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 156
    .line 157
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    sget-object v1, Lio/realm/e1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 163
    .line 164
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 165
    .line 166
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final i(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WonderServiceModelRealm"

    return-object p1

    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ServiceModelRealm"

    return-object p1

    :cond_1
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "NewestServiceModelRealm"

    return-object p1

    :cond_2
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "MostUsedServiceModelRealm"

    return-object p1

    :cond_3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "EditorChoiceServiceModelRealm"

    return-object p1

    :cond_4
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "EBYSDocumentServiceModelRealm"

    return-object p1

    :cond_5
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "ConceptServiceModelRealm"

    return-object p1

    :cond_6
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "BarcodeServiceModelRealm"

    return-object p1

    :cond_7
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "SectionListModelRealm"

    return-object p1

    :cond_8
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "MKTAccidentReport"

    return-object p1

    :cond_9
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "AccidentReportVehicle"

    return-object p1

    :cond_a
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "AccidentReportPolicy"

    return-object p1

    :cond_b
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "AccidentReportParticipant"

    return-object p1

    :cond_c
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "AccidentReportMedia"

    return-object p1

    :cond_d
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "AccidentReportLocation"

    return-object p1

    :cond_e
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "AccidentReportDriver"

    return-object p1

    :cond_f
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "AccidentMergedReport"

    return-object p1

    :cond_10
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "InstitutionModelRealm"

    return-object p1

    :cond_11
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "InstitutionContactModelRealm"

    return-object p1

    :cond_12
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "InfoMessageModelRealm"

    return-object p1

    :cond_13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "MyCityListDBModel"

    return-object p1

    :cond_14
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "CityModelRealm"

    return-object p1

    :cond_15
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "AboutPageModelRealm"

    return-object p1

    :cond_16
    invoke-static {p1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public final j(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final k(Lio/realm/g0;Lio/realm/s0;Ljava/util/HashMap;)J
    .locals 3

    instance-of v0, p2, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/w2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_2
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/s2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/q2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/o2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_5
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/m2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_6
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/k2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_7
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/i2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/g2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_9
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-static {p1, p2, p3}, Lio/realm/e2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_a
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    if-nez v1, :cond_17

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/o1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_b
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_c
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/k1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_d
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-static {p1, p2, p3}, Lio/realm/i1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_e
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/g1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_f
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-static {p1, p2, p3}, Lio/realm/e1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;Ljava/util/HashMap;)J

    move-result-wide p1

    return-wide p1

    :cond_10
    invoke-static {v0}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lio/realm/g0;Ljava/util/Collection;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/g0;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/s0;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/s0;

    instance-of v1, v0, Lio/realm/internal/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    const-class v7, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    const-class v11, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    const-class v12, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    const-class v14, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    move-object/from16 p2, v2

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    move-object/from16 v16, v9

    const-class v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    move-object/from16 v17, v4

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-object/from16 v18, v5

    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    move-object/from16 v19, v5

    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-object/from16 v20, v6

    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    move-object/from16 v21, v7

    const-class v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    move-object/from16 v22, v11

    const-class v11, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    move-object/from16 v23, v12

    const-class v12, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    move-object/from16 v24, v13

    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    move-object/from16 v25, v14

    const-class v14, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    move-object/from16 v26, v15

    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    move-object/from16 v27, v2

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-object/from16 v28, v9

    const-string v9, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    if-eqz v3, :cond_1

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/w2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;Ljava/util/HashMap;)J

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/s2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/q2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/o2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/m2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/k2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/i2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/g2;->c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;Ljava/util/HashMap;)J

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-static {v8, v0, v10}, Lio/realm/e2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;Ljava/util/HashMap;)J

    :goto_1
    move-object/from16 v3, v28

    move-object/from16 v28, v9

    :goto_2
    move-object/from16 v9, v17

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    move-object/from16 v3, v28

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8a

    move-object/from16 v28, v9

    move-object/from16 v9, v27

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_89

    move-object/from16 v27, v9

    move-object/from16 v9, v26

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_88

    move-object/from16 v26, v9

    move-object/from16 v9, v25

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_87

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_86

    move-object/from16 v24, v9

    move-object/from16 v9, v23

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_85

    move-object/from16 v23, v9

    move-object/from16 v9, v22

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/o1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Ljava/util/HashMap;)J

    move-object/from16 v22, v9

    goto :goto_2

    :cond_b
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    move-object/from16 v21, v9

    goto :goto_2

    :cond_c
    move-object/from16 v21, v9

    move-object/from16 v9, v20

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/k1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;Ljava/util/HashMap;)J

    move-object/from16 v20, v9

    goto :goto_2

    :cond_d
    move-object/from16 v20, v9

    move-object/from16 v9, v19

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-static {v8, v0, v10}, Lio/realm/i1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;Ljava/util/HashMap;)J

    move-object/from16 v19, v9

    goto/16 :goto_2

    :cond_e
    move-object/from16 v19, v9

    move-object/from16 v9, v18

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/g1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;Ljava/util/HashMap;)J

    move-object/from16 v18, v9

    goto/16 :goto_2

    :cond_f
    move-object/from16 v18, v9

    move-object/from16 v9, v17

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_84

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-static {v8, v0, v10}, Lio/realm/e1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;Ljava/util/HashMap;)J

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-wide/16 v29, -0x1

    if-eqz v17, :cond_16

    sget-object v1, Lio/realm/w2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 1
    invoke-virtual {v8, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 2
    iget-wide v11, v1, Lio/realm/internal/Table;->a:J

    .line 3
    iget-object v2, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v2, v0}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/w2$a;

    iget-wide v13, v0, Lio/realm/w2$a;->e:J

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    instance-of v2, v9, Lio/realm/internal/n;

    if-eqz v2, :cond_11

    invoke-static {v9}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v9

    check-cast v2, Lio/realm/internal/n;

    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v3

    .line 4
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v3, :cond_11

    .line 5
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v3

    .line 6
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 7
    iget-object v3, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 8
    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v4, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    invoke-interface {v2}, Lio/realm/internal/p;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_11
    invoke-interface {v9}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-static {v11, v12, v13, v14}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v2

    goto :goto_5

    :cond_12
    invoke-interface {v9}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v13

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    :goto_5
    cmp-long v4, v2, v29

    if-nez v4, :cond_13

    invoke-interface {v9}, Lio/realm/x2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v13, v14, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v2

    :cond_13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Lio/realm/x2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-wide v5, v0, Lio/realm/w2$a;->f:J

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v5

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_6

    :cond_14
    iget-wide v4, v0, Lio/realm/w2$a;->f:J

    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v4

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    invoke-interface {v9}, Lio/realm/x2;->realmGet$question()Ljava/lang/String;

    move-result-object v23

    iget-wide v4, v0, Lio/realm/w2$a;->g:J

    if-eqz v23, :cond_15

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v4

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_15
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v4

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_4

    .line 12
    :cond_16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lio/realm/u2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 13
    invoke-virtual {v8, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 14
    iget-wide v3, v0, Lio/realm/internal/Table;->a:J

    .line 15
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/u2$a;

    iget-wide v5, v1, Lio/realm/u2$a;->e:J

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_7

    :cond_17
    instance-of v7, v2, Lio/realm/internal/n;

    if-eqz v7, :cond_18

    invoke-static {v2}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v7

    if-nez v7, :cond_18

    move-object v7, v2

    check-cast v7, Lio/realm/internal/n;

    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v9

    .line 16
    iget-object v9, v9, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v9, :cond_18

    .line 17
    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v9

    .line 18
    iget-object v9, v9, Lio/realm/f0;->e:Lio/realm/a;

    .line 19
    iget-object v9, v9, Lio/realm/a;->c:Lio/realm/o0;

    .line 20
    iget-object v9, v9, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v11, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v11, v11, Lio/realm/o0;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v7

    .line 22
    iget-object v7, v7, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 23
    invoke-interface {v7}, Lio/realm/internal/p;->Y()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_18
    invoke-interface {v2}, Lio/realm/v2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_19

    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v11

    goto :goto_8

    :cond_19
    invoke-interface {v2}, Lio/realm/v2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v11, v7

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v11

    :goto_8
    cmp-long v7, v11, v29

    if-nez v7, :cond_1a

    invoke-interface {v2}, Lio/realm/v2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v11

    :cond_1a
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lio/realm/v2;->realmGet$serviceName()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->f:J

    if-eqz v23, :cond_1b

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    :cond_1b
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_9
    invoke-interface {v2}, Lio/realm/v2;->realmGet$institutionCode()Ljava/lang/Integer;

    move-result-object v7

    iget-wide v13, v1, Lio/realm/u2$a;->g:J

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_a

    :cond_1c
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_a
    invoke-interface {v2}, Lio/realm/v2;->realmGet$institutionName()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->h:J

    if-eqz v23, :cond_1d

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    :cond_1d
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_b
    invoke-interface {v2}, Lio/realm/v2;->realmGet$configPath()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->i:J

    if-eqz v23, :cond_1e

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    :cond_1e
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_c
    invoke-interface {v2}, Lio/realm/v2;->realmGet$link()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->j:J

    if-eqz v23, :cond_1f

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    :cond_1f
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_d
    invoke-interface {v2}, Lio/realm/v2;->realmGet$explanation()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->k:J

    if-eqz v23, :cond_20

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    :cond_20
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_e
    invoke-interface {v2}, Lio/realm/v2;->realmGet$iconName()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->l:J

    if-eqz v23, :cond_21

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    :cond_21
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_f
    invoke-interface {v2}, Lio/realm/v2;->realmGet$baseUrl()Ljava/lang/String;

    move-result-object v23

    iget-wide v13, v1, Lio/realm/u2$a;->m:J

    if-eqz v23, :cond_22

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    :cond_22
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_10
    invoke-interface {v2}, Lio/realm/v2;->realmGet$baseUrlCode()Ljava/lang/Integer;

    move-result-object v7

    iget-wide v13, v1, Lio/realm/u2$a;->n:J

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_11

    :cond_23
    const/16 v23, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_11
    iget-wide v13, v1, Lio/realm/u2$a;->o:J

    invoke-interface {v2}, Lio/realm/v2;->realmGet$isFavorite()Z

    move-result v23

    const/16 v24, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v13

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto/16 :goto_7

    .line 24
    :cond_24
    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lio/realm/s2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 25
    invoke-virtual {v8, v15}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 26
    iget-wide v11, v0, Lio/realm/internal/Table;->a:J

    .line 27
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v15}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/realm/s2$a;

    iget-wide v13, v9, Lio/realm/s2$a;->e:J

    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_12

    :cond_25
    instance-of v1, v7, Lio/realm/internal/n;

    if-eqz v1, :cond_26

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_26

    move-object v1, v7

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 28
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_26

    .line 29
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 31
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 32
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 34
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 35
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_26
    invoke-interface {v7}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_27

    invoke-static {v11, v12, v13, v14}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_13

    :cond_27
    invoke-interface {v7}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v11

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_13
    cmp-long v3, v1, v29

    if-nez v3, :cond_28

    invoke-interface {v7}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v13, v14, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_28
    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/t2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-wide v2, v9, Lio/realm/s2$a;->f:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v2

    move-wide/from16 v21, v5

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_12

    :cond_29
    iget-wide v3, v9, Lio/realm/s2$a;->f:J

    const/4 v7, 0x0

    move-wide v1, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_12

    .line 36
    :cond_2a
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lio/realm/q2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 37
    invoke-virtual {v8, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 38
    iget-wide v11, v0, Lio/realm/internal/Table;->a:J

    .line 39
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v14}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/realm/q2$a;

    iget-wide v13, v9, Lio/realm/q2$a;->e:J

    :goto_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_14

    :cond_2b
    instance-of v1, v7, Lio/realm/internal/n;

    if-eqz v1, :cond_2c

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_2c

    move-object v1, v7

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 40
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_2c

    .line 41
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 42
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 43
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 44
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 46
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 47
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_2c
    invoke-interface {v7}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2d

    invoke-static {v11, v12, v13, v14}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_15

    :cond_2d
    invoke-interface {v7}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v11

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_15
    cmp-long v3, v1, v29

    if-nez v3, :cond_2e

    invoke-interface {v7}, Lio/realm/r2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v13, v14, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_2e
    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/r2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-wide v2, v9, Lio/realm/q2$a;->f:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v2

    move-wide/from16 v21, v5

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_14

    :cond_2f
    iget-wide v3, v9, Lio/realm/q2$a;->f:J

    const/4 v7, 0x0

    move-wide v1, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_14

    .line 48
    :cond_30
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lio/realm/o2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 49
    invoke-virtual {v8, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 50
    iget-wide v11, v0, Lio/realm/internal/Table;->a:J

    .line 51
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v13}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/realm/o2$a;

    iget-wide v13, v9, Lio/realm/o2$a;->e:J

    :goto_16
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_16

    :cond_31
    instance-of v1, v7, Lio/realm/internal/n;

    if-eqz v1, :cond_32

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_32

    move-object v1, v7

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 52
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_32

    .line 53
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 54
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 55
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 56
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 58
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_32
    invoke-interface {v7}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_33

    invoke-static {v11, v12, v13, v14}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_17

    :cond_33
    invoke-interface {v7}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v11

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_17
    cmp-long v3, v1, v29

    if-nez v3, :cond_34

    invoke-interface {v7}, Lio/realm/p2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v13, v14, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_34
    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/p2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-wide v2, v9, Lio/realm/o2$a;->f:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v2

    move-wide/from16 v21, v5

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_16

    :cond_35
    iget-wide v3, v9, Lio/realm/o2$a;->f:J

    const/4 v7, 0x0

    move-wide v1, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_16

    .line 60
    :cond_36
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lio/realm/m2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 61
    invoke-virtual {v8, v12}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 62
    iget-wide v13, v0, Lio/realm/internal/Table;->a:J

    .line 63
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v12}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/realm/m2$a;

    iget-wide v11, v9, Lio/realm/m2$a;->e:J

    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_18

    :cond_37
    instance-of v1, v7, Lio/realm/internal/n;

    if-eqz v1, :cond_38

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_38

    move-object v1, v7

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 64
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_38

    .line 65
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 66
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 67
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 68
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 70
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_38
    invoke-interface {v7}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_39

    invoke-static {v13, v14, v11, v12}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_19

    :cond_39
    invoke-interface {v7}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v13

    move-wide v3, v11

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_19
    cmp-long v3, v1, v29

    if-nez v3, :cond_3a

    invoke-interface {v7}, Lio/realm/n2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v11, v12, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_3a
    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/n2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-wide v2, v9, Lio/realm/m2$a;->f:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v13

    move-wide/from16 v19, v2

    move-wide/from16 v21, v5

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_18

    :cond_3b
    iget-wide v3, v9, Lio/realm/m2$a;->f:J

    const/4 v7, 0x0

    move-wide v1, v13

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_18

    .line 72
    :cond_3c
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lio/realm/k2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 73
    invoke-virtual {v8, v11}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 74
    iget-wide v12, v0, Lio/realm/internal/Table;->a:J

    .line 75
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v11}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/realm/k2$a;

    iget-wide v14, v9, Lio/realm/k2$a;->e:J

    :goto_1a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_1a

    :cond_3d
    instance-of v1, v11, Lio/realm/internal/n;

    if-eqz v1, :cond_3e

    invoke-static {v11}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_3e

    move-object v1, v11

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 76
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_3e

    .line 77
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 78
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 79
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 80
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 82
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 83
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_3e
    invoke-interface {v11}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3f

    invoke-static {v12, v13, v14, v15}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_1b

    :cond_3f
    invoke-interface {v11}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v12

    move-wide v3, v14

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_1b
    cmp-long v3, v1, v29

    if-nez v3, :cond_40

    invoke-interface {v11}, Lio/realm/l2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v14, v15, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_40
    move-wide/from16 v26, v1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Lio/realm/l2;->realmGet$serviceName()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->f:J

    if-eqz v23, :cond_41

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c

    :cond_41
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1c
    invoke-interface {v11}, Lio/realm/l2;->realmGet$institutionCode()Ljava/lang/Integer;

    move-result-object v1

    iget-wide v3, v9, Lio/realm/k2$a;->g:J

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_1d

    :cond_42
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1d
    invoke-interface {v11}, Lio/realm/l2;->realmGet$institutionName()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->h:J

    if-eqz v23, :cond_43

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e

    :cond_43
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1e
    invoke-interface {v11}, Lio/realm/l2;->realmGet$configPath()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->i:J

    if-eqz v23, :cond_44

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f

    :cond_44
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1f
    invoke-interface {v11}, Lio/realm/l2;->realmGet$link()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->j:J

    if-eqz v23, :cond_45

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_20

    :cond_45
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_20
    invoke-interface {v11}, Lio/realm/l2;->realmGet$explanation()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->k:J

    if-eqz v23, :cond_46

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_21

    :cond_46
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_21
    invoke-interface {v11}, Lio/realm/l2;->realmGet$iconName()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->l:J

    if-eqz v23, :cond_47

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_22

    :cond_47
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_22
    invoke-interface {v11}, Lio/realm/l2;->realmGet$baseUrl()Ljava/lang/String;

    move-result-object v23

    iget-wide v3, v9, Lio/realm/k2$a;->m:J

    if-eqz v23, :cond_48

    const/16 v24, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_23

    :cond_48
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_23
    invoke-interface {v11}, Lio/realm/l2;->realmGet$baseUrlCode()Ljava/lang/Integer;

    move-result-object v1

    iget-wide v3, v9, Lio/realm/k2$a;->n:J

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_24

    :cond_49
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_24
    invoke-interface {v11}, Lio/realm/l2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    iget-wide v3, v9, Lio/realm/k2$a;->o:J

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v3

    move-wide/from16 v21, v26

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_1a

    :cond_4a
    const/4 v7, 0x0

    move-wide v1, v12

    move-wide/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_1a

    .line 84
    :cond_4b
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lio/realm/i2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 85
    invoke-virtual {v8, v7}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 86
    iget-wide v11, v0, Lio/realm/internal/Table;->a:J

    .line 87
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v1, v7}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lio/realm/i2$a;

    iget-wide v13, v7, Lio/realm/i2$a;->e:J

    :goto_25
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_25

    :cond_4c
    instance-of v1, v9, Lio/realm/internal/n;

    if-eqz v1, :cond_4d

    invoke-static {v9}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v1

    if-nez v1, :cond_4d

    move-object v1, v9

    check-cast v1, Lio/realm/internal/n;

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 88
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v2, :cond_4d

    .line 89
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v2

    .line 90
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 91
    iget-object v2, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 92
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v3, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 94
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 95
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_4d
    invoke-interface {v9}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4e

    invoke-static {v11, v12, v13, v14}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_26

    :cond_4e
    invoke-interface {v9}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    move-wide v1, v11

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v1

    :goto_26
    cmp-long v3, v1, v29

    if-nez v3, :cond_4f

    invoke-interface {v9}, Lio/realm/j2;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v13, v14, v1}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_4f
    move-wide/from16 v21, v1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Lio/realm/j2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-wide v2, v7, Lio/realm/i2$a;->f:J

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v2

    invoke-static/range {v17 .. v25}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_25

    :cond_50
    iget-wide v1, v7, Lio/realm/i2$a;->f:J

    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v1

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_25

    .line 96
    :cond_51
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lio/realm/g2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 97
    invoke-virtual {v8, v6}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 98
    iget-wide v1, v0, Lio/realm/internal/Table;->a:J

    .line 99
    iget-object v3, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v3, v6}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v3

    check-cast v3, Lio/realm/g2$a;

    iget-wide v4, v3, Lio/realm/g2$a;->e:J

    :goto_27
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_27

    :cond_52
    instance-of v7, v6, Lio/realm/internal/n;

    if-eqz v7, :cond_53

    invoke-static {v6}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v7

    if-nez v7, :cond_53

    move-object v7, v6

    check-cast v7, Lio/realm/internal/n;

    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v9

    .line 100
    iget-object v9, v9, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v9, :cond_53

    .line 101
    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v9

    .line 102
    iget-object v9, v9, Lio/realm/f0;->e:Lio/realm/a;

    .line 103
    iget-object v9, v9, Lio/realm/a;->c:Lio/realm/o0;

    .line 104
    iget-object v9, v9, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v11, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v11, v11, Lio/realm/o0;->c:Ljava/lang/String;

    .line 105
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v7}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v7

    .line 106
    iget-object v7, v7, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 107
    invoke-interface {v7}, Lio/realm/internal/p;->Y()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_53
    invoke-interface {v6}, Lio/realm/h2;->realmGet$code()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Lio/realm/h2;->realmGet$code()I

    move-result v7

    int-to-long v11, v7

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v11

    goto :goto_28

    :cond_54
    move-wide/from16 v11, v29

    :goto_28
    cmp-long v7, v11, v29

    if-nez v7, :cond_55

    invoke-interface {v6}, Lio/realm/h2;->realmGet$code()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v4, v5, v7}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v11

    :cond_55
    move-wide/from16 v21, v11

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lio/realm/h2;->realmGet$name()Ljava/lang/String;

    move-result-object v23

    iget-wide v6, v3, Lio/realm/g2$a;->f:J

    if-eqz v23, :cond_56

    const/16 v24, 0x0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v6

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_27

    :cond_56
    const/16 v23, 0x0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v6

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_27

    .line 108
    :cond_57
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lio/realm/e2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 109
    invoke-virtual {v8, v5}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v9

    .line 110
    iget-wide v11, v9, Lio/realm/internal/Table;->a:J

    .line 111
    iget-object v0, v8, Lio/realm/g0;->j:Lio/realm/u;

    .line 112
    invoke-virtual {v0, v5}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lio/realm/e2$a;

    iget-wide v14, v13, Lio/realm/e2$a;->e:J

    :goto_29
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_29

    :cond_58
    instance-of v0, v7, Lio/realm/internal/n;

    if-eqz v0, :cond_59

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v0

    if-nez v0, :cond_59

    move-object v0, v7

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 113
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v1, :cond_59

    .line 114
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 115
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 116
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 117
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v2, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v0

    .line 119
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 120
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_59
    invoke-interface {v7}, Lio/realm/f2;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-static {v11, v12, v14, v15}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v1

    goto :goto_2a

    :cond_5a
    invoke-static {v11, v12, v14, v15, v0}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v1

    :goto_2a
    cmp-long v3, v1, v29

    if-nez v3, :cond_5b

    invoke-static {v9, v14, v15, v0}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v1

    :cond_5b
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/f2;->realmGet$nameSurname()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->f:J

    if-eqz v23, :cond_5c

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2b

    :cond_5c
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2b
    invoke-interface {v7}, Lio/realm/f2;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->g:J

    if-eqz v23, :cond_5d

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2c

    :cond_5d
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2c
    invoke-interface {v7}, Lio/realm/f2;->realmGet$role()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->h:J

    if-eqz v23, :cond_5e

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2d

    :cond_5e
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2d
    invoke-interface {v7}, Lio/realm/f2;->realmGet$dashPointId()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->i:J

    if-eqz v23, :cond_5f

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2e

    :cond_5f
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2e
    invoke-interface {v7}, Lio/realm/f2;->realmGet$dashPoint()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->j:J

    if-eqz v23, :cond_60

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2f

    :cond_60
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2f
    invoke-interface {v7}, Lio/realm/f2;->realmGet$scenarioId()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->k:J

    if-eqz v23, :cond_61

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_30

    :cond_61
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_30
    invoke-interface {v7}, Lio/realm/f2;->realmGet$accidentComment()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->l:J

    if-eqz v23, :cond_62

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_31

    :cond_62
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_31
    invoke-interface {v7}, Lio/realm/f2;->realmGet$status()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->m:J

    if-eqz v23, :cond_63

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_32

    :cond_63
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_32
    invoke-interface {v7}, Lio/realm/f2;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->n:J

    if-eqz v23, :cond_64

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_33

    :cond_64
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_33
    invoke-interface {v7}, Lio/realm/f2;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->o:J

    if-eqz v23, :cond_65

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_34

    :cond_65
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_34
    invoke-interface {v7}, Lio/realm/f2;->realmGet$expiredDate()Ljava/lang/String;

    move-result-object v23

    iget-wide v0, v13, Lio/realm/e2$a;->p:J

    if-eqz v23, :cond_66

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v24}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_35

    :cond_66
    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v23}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_35
    invoke-interface {v7}, Lio/realm/f2;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    move-result-object v6

    const-string v2, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: "

    if-eqz v6, :cond_68

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_67

    iget-wide v0, v13, Lio/realm/e2$a;->q:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide/from16 v23, v14

    move-object v14, v2

    move-wide/from16 v2, v17

    move-wide/from16 v25, v4

    move-object v15, v7

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/realm/s1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/HashMap;)V

    goto :goto_36

    :cond_67
    move-object v14, v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    move-wide/from16 v25, v4

    move-wide/from16 v23, v14

    move-object v14, v2

    move-object v15, v7

    iget-wide v0, v13, Lio/realm/e2$a;->q:J

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v25

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_36
    invoke-interface {v15}, Lio/realm/f2;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    move-result-object v6

    if-eqz v6, :cond_6a

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_69

    iget-wide v2, v13, Lio/realm/e2$a;->r:J

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide/from16 v4, v25

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/realm/u1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/HashMap;)V

    goto :goto_37

    :cond_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    iget-wide v0, v13, Lio/realm/e2$a;->r:J

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v25

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_37
    invoke-interface {v15}, Lio/realm/f2;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v6

    if-eqz v6, :cond_6c

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_6b

    iget-wide v2, v13, Lio/realm/e2$a;->s:J

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide/from16 v4, v25

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/realm/c2;->c(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;)V

    goto :goto_38

    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    iget-wide v0, v13, Lio/realm/e2$a;->s:J

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v25

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_38
    invoke-interface {v15}, Lio/realm/f2;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v6

    if-eqz v6, :cond_6e

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_6d

    iget-wide v2, v13, Lio/realm/e2$a;->t:J

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide/from16 v4, v25

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/realm/q1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;)V

    goto :goto_39

    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    iget-wide v0, v13, Lio/realm/e2$a;->t:J

    move-wide/from16 v17, v11

    move-wide/from16 v19, v0

    move-wide/from16 v21, v25

    invoke-static/range {v17 .. v22}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_39
    new-instance v0, Lio/realm/internal/OsList;

    move-wide/from16 v6, v25

    invoke-virtual {v9, v6, v7}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v1

    iget-wide v2, v13, Lio/realm/e2$a;->u:J

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    invoke-interface {v15}, Lio/realm/f2;->realmGet$media()Lio/realm/q0;

    move-result-object v1

    invoke-virtual {v0}, Lio/realm/internal/OsList;->I()V

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_6f

    iget-wide v2, v13, Lio/realm/e2$a;->u:J

    move-object/from16 v0, p1

    move-object v1, v9

    move-object/from16 v17, v4

    move-wide v4, v6

    move-wide/from16 v18, v6

    move-object/from16 v6, v17

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/realm/w1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/HashMap;)V

    move-wide/from16 v6, v18

    goto :goto_3a

    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    move-wide/from16 v14, v23

    goto/16 :goto_29

    .line 121
    :cond_71
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    move-object/from16 v0, v16

    invoke-static {v8, v0, v10}, Lio/realm/o1;->e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V

    goto/16 :goto_3d

    :cond_72
    move-object/from16 v0, v16

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-static {v8, v0, v10}, Lio/realm/m1;->e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V

    goto/16 :goto_3d

    :cond_73
    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v8, v0, v10}, Lio/realm/k1;->e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V

    goto/16 :goto_3d

    :cond_74
    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    sget-object v1, Lio/realm/i1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 122
    invoke-virtual {v8, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 123
    iget-wide v3, v1, Lio/realm/internal/Table;->a:J

    .line 124
    iget-object v5, v8, Lio/realm/g0;->j:Lio/realm/u;

    invoke-virtual {v5, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/i1$a;

    iget-wide v5, v2, Lio/realm/i1$a;->e:J

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    goto :goto_3b

    :cond_75
    instance-of v9, v7, Lio/realm/internal/n;

    if-eqz v9, :cond_76

    invoke-static {v7}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v9

    if-nez v9, :cond_76

    move-object v9, v7

    check-cast v9, Lio/realm/internal/n;

    invoke-interface {v9}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v11

    .line 125
    iget-object v11, v11, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v11, :cond_76

    .line 126
    invoke-interface {v9}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v11

    .line 127
    iget-object v11, v11, Lio/realm/f0;->e:Lio/realm/a;

    .line 128
    iget-object v11, v11, Lio/realm/a;->c:Lio/realm/o0;

    .line 129
    iget-object v11, v11, Lio/realm/o0;->c:Ljava/lang/String;

    iget-object v12, v8, Lio/realm/a;->c:Lio/realm/o0;

    iget-object v12, v12, Lio/realm/o0;->c:Ljava/lang/String;

    .line 130
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    invoke-interface {v9}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v9

    .line 131
    iget-object v9, v9, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 132
    invoke-interface {v9}, Lio/realm/internal/p;->Y()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_76
    invoke-interface {v7}, Lio/realm/j1;->realmGet$cityId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_77

    invoke-interface {v7}, Lio/realm/j1;->realmGet$cityId()I

    move-result v9

    int-to-long v13, v9

    move-wide v11, v3

    move-wide v15, v13

    move-wide v13, v5

    invoke-static/range {v11 .. v16}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v11

    goto :goto_3c

    :cond_77
    move-wide/from16 v11, v29

    :goto_3c
    cmp-long v9, v11, v29

    if-nez v9, :cond_78

    invoke-interface {v7}, Lio/realm/j1;->realmGet$cityId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v5, v6, v9}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v11

    :cond_78
    move-wide v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lio/realm/j1;->realmGet$cityName()Ljava/lang/String;

    move-result-object v17

    iget-wide v13, v2, Lio/realm/i1$a;->f:J

    if-eqz v17, :cond_79

    const/16 v18, 0x0

    move-wide v11, v3

    invoke-static/range {v11 .. v18}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_79
    const/16 v17, 0x0

    move-wide v11, v3

    invoke-static/range {v11 .. v17}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_3b

    :cond_7a
    move-object/from16 v2, v18

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-static {v8, v0, v10}, Lio/realm/g1;->e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V

    goto/16 :goto_3d

    :cond_7b
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-static {v8, v0, v10}, Lio/realm/e1;->e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V

    goto/16 :goto_3d

    :cond_7c
    invoke-static {v1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    invoke-static {v1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    :cond_85
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    move-object/from16 v1, v28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    move-object v1, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    move-object v1, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    :goto_3d
    return-void
.end method

.method public final m(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)Z"
        }
    .end annotation

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    return v2

    :cond_a
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_c
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_d
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v2

    :cond_f
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    invoke-static {p1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public final n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/p;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/realm/a$b;

    .line 8
    .line 9
    :try_start_0
    move-object v2, p2

    .line 10
    check-cast v2, Lio/realm/a;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move v5, p5

    .line 16
    move-object v6, p6

    .line 17
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_17

    .line 21
    .line 22
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Lio/realm/w2;

    .line 31
    .line 32
    invoke-direct {p2}, Lio/realm/w2;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lio/realm/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    :try_start_1
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    new-instance p2, Lio/realm/u2;

    .line 54
    .line 55
    invoke-direct {p2}, Lio/realm/u2;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lio/realm/s0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_1
    :try_start_2
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    new-instance p2, Lio/realm/s2;

    .line 77
    .line 78
    invoke-direct {p2}, Lio/realm/s2;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lio/realm/s0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_2
    :try_start_3
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    new-instance p2, Lio/realm/q2;

    .line 100
    .line 101
    invoke-direct {p2}, Lio/realm/q2;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lio/realm/s0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_3
    :try_start_4
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    new-instance p2, Lio/realm/o2;

    .line 123
    .line 124
    invoke-direct {p2}, Lio/realm/o2;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lio/realm/s0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .line 133
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_4
    :try_start_5
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_5

    .line 144
    .line 145
    new-instance p2, Lio/realm/m2;

    .line 146
    .line 147
    invoke-direct {p2}, Lio/realm/m2;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lio/realm/s0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    .line 156
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_5
    :try_start_6
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    new-instance p2, Lio/realm/k2;

    .line 169
    .line 170
    invoke-direct {p2}, Lio/realm/k2;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lio/realm/s0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    .line 179
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 180
    .line 181
    .line 182
    return-object p1

    .line 183
    :cond_6
    :try_start_7
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_7

    .line 190
    .line 191
    new-instance p2, Lio/realm/i2;

    .line 192
    .line 193
    invoke-direct {p2}, Lio/realm/i2;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lio/realm/s0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    .line 202
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :cond_7
    :try_start_8
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_8

    .line 213
    .line 214
    new-instance p2, Lio/realm/g2;

    .line 215
    .line 216
    invoke-direct {p2}, Lio/realm/g2;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lio/realm/s0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 224
    .line 225
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 226
    .line 227
    .line 228
    return-object p1

    .line 229
    :cond_8
    :try_start_9
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-eqz p2, :cond_9

    .line 236
    .line 237
    new-instance p2, Lio/realm/e2;

    .line 238
    .line 239
    invoke-direct {p2}, Lio/realm/e2;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lio/realm/s0;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 247
    .line 248
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 249
    .line 250
    .line 251
    return-object p1

    .line 252
    :cond_9
    :try_start_a
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_a

    .line 259
    .line 260
    new-instance p2, Lio/realm/c2;

    .line 261
    .line 262
    invoke-direct {p2}, Lio/realm/c2;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lio/realm/s0;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 270
    .line 271
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 272
    .line 273
    .line 274
    return-object p1

    .line 275
    :cond_a
    :try_start_b
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 276
    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_b

    .line 282
    .line 283
    new-instance p2, Lio/realm/a2;

    .line 284
    .line 285
    invoke-direct {p2}, Lio/realm/a2;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Lio/realm/s0;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 293
    .line 294
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 295
    .line 296
    .line 297
    return-object p1

    .line 298
    :cond_b
    :try_start_c
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_c

    .line 305
    .line 306
    new-instance p2, Lio/realm/y1;

    .line 307
    .line 308
    invoke-direct {p2}, Lio/realm/y1;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    check-cast p1, Lio/realm/s0;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 316
    .line 317
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 318
    .line 319
    .line 320
    return-object p1

    .line 321
    :cond_c
    :try_start_d
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-eqz p2, :cond_d

    .line 328
    .line 329
    new-instance p2, Lio/realm/w1;

    .line 330
    .line 331
    invoke-direct {p2}, Lio/realm/w1;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lio/realm/s0;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 339
    .line 340
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 341
    .line 342
    .line 343
    return-object p1

    .line 344
    :cond_d
    :try_start_e
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    if-eqz p2, :cond_e

    .line 351
    .line 352
    new-instance p2, Lio/realm/u1;

    .line 353
    .line 354
    invoke-direct {p2}, Lio/realm/u1;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Lio/realm/s0;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 362
    .line 363
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 364
    .line 365
    .line 366
    return-object p1

    .line 367
    :cond_e
    :try_start_f
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 368
    .line 369
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p2

    .line 373
    if-eqz p2, :cond_f

    .line 374
    .line 375
    new-instance p2, Lio/realm/s1;

    .line 376
    .line 377
    invoke-direct {p2}, Lio/realm/s1;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    check-cast p1, Lio/realm/s0;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 385
    .line 386
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 387
    .line 388
    .line 389
    return-object p1

    .line 390
    :cond_f
    :try_start_10
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 391
    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    if-eqz p2, :cond_10

    .line 397
    .line 398
    new-instance p2, Lio/realm/q1;

    .line 399
    .line 400
    invoke-direct {p2}, Lio/realm/q1;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, Lio/realm/s0;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 408
    .line 409
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 410
    .line 411
    .line 412
    return-object p1

    .line 413
    :cond_10
    :try_start_11
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 414
    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p2

    .line 419
    if-eqz p2, :cond_11

    .line 420
    .line 421
    new-instance p2, Lio/realm/o1;

    .line 422
    .line 423
    invoke-direct {p2}, Lio/realm/o1;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    check-cast p1, Lio/realm/s0;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 431
    .line 432
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 433
    .line 434
    .line 435
    return-object p1

    .line 436
    :cond_11
    :try_start_12
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 437
    .line 438
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    if-eqz p2, :cond_12

    .line 443
    .line 444
    new-instance p2, Lio/realm/m1;

    .line 445
    .line 446
    invoke-direct {p2}, Lio/realm/m1;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Lio/realm/s0;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 454
    .line 455
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 456
    .line 457
    .line 458
    return-object p1

    .line 459
    :cond_12
    :try_start_13
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 460
    .line 461
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result p2

    .line 465
    if-eqz p2, :cond_13

    .line 466
    .line 467
    new-instance p2, Lio/realm/k1;

    .line 468
    .line 469
    invoke-direct {p2}, Lio/realm/k1;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    check-cast p1, Lio/realm/s0;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 477
    .line 478
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 479
    .line 480
    .line 481
    return-object p1

    .line 482
    :cond_13
    :try_start_14
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 483
    .line 484
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result p2

    .line 488
    if-eqz p2, :cond_14

    .line 489
    .line 490
    new-instance p2, Lio/realm/i1;

    .line 491
    .line 492
    invoke-direct {p2}, Lio/realm/i1;-><init>()V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    check-cast p1, Lio/realm/s0;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 500
    .line 501
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 502
    .line 503
    .line 504
    return-object p1

    .line 505
    :cond_14
    :try_start_15
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 506
    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p2

    .line 511
    if-eqz p2, :cond_15

    .line 512
    .line 513
    new-instance p2, Lio/realm/g1;

    .line 514
    .line 515
    invoke-direct {p2}, Lio/realm/g1;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    check-cast p1, Lio/realm/s0;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 523
    .line 524
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 525
    .line 526
    .line 527
    return-object p1

    .line 528
    :cond_15
    :try_start_16
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 529
    .line 530
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p2

    .line 534
    if-eqz p2, :cond_16

    .line 535
    .line 536
    new-instance p2, Lio/realm/e1;

    .line 537
    .line 538
    invoke-direct {p2}, Lio/realm/e1;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Lio/realm/s0;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 546
    .line 547
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 548
    .line 549
    .line 550
    return-object p1

    .line 551
    :cond_16
    :try_start_17
    invoke-static {p1}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    throw p1

    .line 556
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    .line 557
    .line 558
    const-string p2, "A class extending RealmObject must be provided"

    .line 559
    .line 560
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 564
    :catchall_0
    move-exception p1

    .line 565
    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    .line 566
    .line 567
    .line 568
    throw p1
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p(Lio/realm/g0;Lio/realm/s0;Lio/realm/s0;Ljava/util/HashMap;Ljava/util/Set;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EBYSDocumentServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/BarcodeServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-static {p1, p2, p3, p4, p5}, Lio/realm/c2;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-static {p1, p2, p3, p5}, Lio/realm/a2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-static {p1, p2, p3, p5}, Lio/realm/y1;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-static {p1, p2, p3, p5}, Lio/realm/w1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    invoke-static {p1, p2, p3, p5}, Lio/realm/u1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/Set;)V

    goto :goto_0

    :cond_4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    invoke-static {p1, p2, p3, p5}, Lio/realm/s1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-static {p1, p2, p3, p4, p5}, Lio/realm/q1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_6
    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-class p1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {v0}, Lio/realm/internal/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_a
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_b
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_c
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_d
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_e
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.BarcodeServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_10
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_11
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.EBYSDocumentServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_12
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_13
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.MostUsedServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_14
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_15
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_16
    const-string p1, "tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm"

    invoke-static {p1}, Lio/realm/internal/o;->g(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
