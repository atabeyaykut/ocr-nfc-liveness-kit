.class public final Lya/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbc/l;

.field public final b:Lva/l;

.field public final c:Leb/q;

.field public final d:Leb/k;

.field public final e:Lwa/k;

.field public final f:Lyb/u;

.field public final g:Lwa/h;

.field public final h:Lwa/g;

.field public final i:Lub/a;

.field public final j:Lbb/b;

.field public final k:Lya/h;

.field public final l:Leb/x;

.field public final m:Lma/u0;

.field public final n:Lua/b;

.field public final o:Lma/b0;

.field public final p:Lja/m;

.field public final q:Lva/e;

.field public final r:Ldb/t;

.field public final s:Lva/m;

.field public final t:Lya/d;

.field public final u:Ldc/l;

.field public final v:Lva/s;

.field public final w:Lva/p;

.field public final x:Ltb/d;


# direct methods
.method public constructor <init>(Lbc/l;Lva/l;Leb/q;Leb/k;Lwa/k;Lyb/u;Lwa/g;Lub/a;Lbb/b;Lya/h;Leb/x;Lma/u0;Lua/b;Lma/b0;Lja/m;Lva/e;Ldb/t;Lva/m;Lya/d;Ldc/l;Lva/s;Lva/p;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    .line 1
    sget-object v0, Lwa/h;->a:Lwa/h$a;

    .line 2
    sget-object v16, Ltb/d;->a:Ltb/d$a;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    .line 3
    sget-object v0, Ltb/d$a;->b:Ltb/a;

    move-object/from16 v17, v0

    const-string v0, "storageManager"

    .line 4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v14, p16

    move-object/from16 v15, v16

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v14, p17

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v14, p18

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v14, p19

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v14, p20

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v14, p21

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v14, p22

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    move-object/from16 v14, v17

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v14, p16

    iput-object v1, v0, Lya/c;->a:Lbc/l;

    iput-object v2, v0, Lya/c;->b:Lva/l;

    iput-object v3, v0, Lya/c;->c:Leb/q;

    iput-object v4, v0, Lya/c;->d:Leb/k;

    iput-object v5, v0, Lya/c;->e:Lwa/k;

    iput-object v6, v0, Lya/c;->f:Lyb/u;

    iput-object v15, v0, Lya/c;->g:Lwa/h;

    iput-object v7, v0, Lya/c;->h:Lwa/g;

    iput-object v8, v0, Lya/c;->i:Lub/a;

    iput-object v9, v0, Lya/c;->j:Lbb/b;

    iput-object v10, v0, Lya/c;->k:Lya/h;

    iput-object v11, v0, Lya/c;->l:Leb/x;

    iput-object v12, v0, Lya/c;->m:Lma/u0;

    iput-object v13, v0, Lya/c;->n:Lua/b;

    move-object/from16 v1, p14

    iput-object v1, v0, Lya/c;->o:Lma/b0;

    move-object/from16 v1, p15

    iput-object v1, v0, Lya/c;->p:Lja/m;

    iput-object v14, v0, Lya/c;->q:Lva/e;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lya/c;->r:Ldb/t;

    iput-object v2, v0, Lya/c;->s:Lva/m;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Lya/c;->t:Lya/d;

    iput-object v2, v0, Lya/c;->u:Ldc/l;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lya/c;->v:Lva/s;

    iput-object v2, v0, Lya/c;->w:Lva/p;

    move-object/from16 v1, v17

    iput-object v1, v0, Lya/c;->x:Ltb/d;

    return-void
.end method
