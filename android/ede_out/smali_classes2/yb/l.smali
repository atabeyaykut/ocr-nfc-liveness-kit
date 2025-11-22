.class public final Lyb/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbc/l;

.field public final b:Lma/b0;

.field public final c:Lyb/m;

.field public final d:Lyb/i;

.field public final e:Lyb/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb/d<",
            "Lna/c;",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lma/f0;

.field public final g:Lyb/y;

.field public final h:Lyb/u;

.field public final i:Lua/b;

.field public final j:Lyb/v;

.field public final k:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Loa/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lma/d0;

.field public final m:Lyb/k;

.field public final n:Loa/a;

.field public final o:Loa/c;

.field public final p:Lmb/f;

.field public final q:Ldc/l;

.field public final r:Loa/e;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lyb/j;


# direct methods
.method public constructor <init>(Lbc/l;Lma/b0;Lyb/i;Lyb/d;Lma/f0;Lyb/u;Lyb/v;Ljava/lang/Iterable;Lma/d0;Loa/a;Loa/c;Lmb/f;Ldc/m;Lub/b;Ljava/util/List;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p12

    move/from16 v6, p16

    .line 1
    sget-object v7, Lyb/m$a;->a:Lyb/m$a;

    sget-object v8, Lyb/y$a;->a:Lyb/y$a;

    sget-object v9, Lua/b$a;->a:Lua/b$a;

    sget-object v10, Lyb/k$a;->a:Lyb/k$a$a;

    and-int/lit16 v11, v6, 0x2000

    if-eqz v11, :cond_0

    sget-object v11, Loa/a$a;->a:Loa/a$a;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    and-int/lit16 v12, v6, 0x4000

    if-eqz v12, :cond_1

    sget-object v12, Loa/c$a;->a:Loa/c$a;

    goto :goto_1

    :cond_1
    move-object/from16 v12, p11

    :goto_1
    const/high16 v13, 0x10000

    and-int/2addr v13, v6

    if-eqz v13, :cond_2

    sget-object v13, Ldc/l;->b:Ldc/l$a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v13, Ldc/l$a;->b:Ldc/m;

    goto :goto_2

    :cond_2
    move-object/from16 v13, p13

    :goto_2
    const/high16 v14, 0x40000

    and-int/2addr v14, v6

    if-eqz v14, :cond_3

    .line 3
    sget-object v14, Loa/e$a;->a:Loa/e$a;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    const/high16 v15, 0x80000

    and-int/2addr v6, v15

    if-eqz v6, :cond_4

    sget-object v6, Lcc/p;->a:Lcc/p;

    invoke-static {v6}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p15

    :goto_4
    const-string v15, "storageManager"

    .line 4
    invoke-static {v1, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "moduleDescriptor"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "packageFragmentProvider"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "fictitiousClassDescriptorFactories"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "additionalClassPartsProvider"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "platformDependentDeclarationFilter"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "extensionRegistryLite"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "kotlinTypeChecker"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "platformDependentTypeTransformer"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "typeAttributeTranslators"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lyb/l;->a:Lbc/l;

    iput-object v2, v0, Lyb/l;->b:Lma/b0;

    iput-object v7, v0, Lyb/l;->c:Lyb/m;

    move-object/from16 v1, p3

    iput-object v1, v0, Lyb/l;->d:Lyb/i;

    move-object/from16 v1, p4

    iput-object v1, v0, Lyb/l;->e:Lyb/d;

    iput-object v3, v0, Lyb/l;->f:Lma/f0;

    iput-object v8, v0, Lyb/l;->g:Lyb/y;

    move-object/from16 v1, p6

    iput-object v1, v0, Lyb/l;->h:Lyb/u;

    iput-object v9, v0, Lyb/l;->i:Lua/b;

    move-object/from16 v1, p7

    iput-object v1, v0, Lyb/l;->j:Lyb/v;

    iput-object v4, v0, Lyb/l;->k:Ljava/lang/Iterable;

    move-object/from16 v1, p9

    iput-object v1, v0, Lyb/l;->l:Lma/d0;

    iput-object v10, v0, Lyb/l;->m:Lyb/k;

    iput-object v11, v0, Lyb/l;->n:Loa/a;

    iput-object v12, v0, Lyb/l;->o:Loa/c;

    iput-object v5, v0, Lyb/l;->p:Lmb/f;

    iput-object v13, v0, Lyb/l;->q:Ldc/l;

    iput-object v14, v0, Lyb/l;->r:Loa/e;

    iput-object v6, v0, Lyb/l;->s:Ljava/util/List;

    new-instance v1, Lyb/j;

    invoke-direct {v1, v0}, Lyb/j;-><init>(Lyb/l;)V

    iput-object v1, v0, Lyb/l;->t:Lyb/j;

    return-void
.end method


# virtual methods
.method public final a(Lma/e0;Lib/c;Lib/g;Lib/h;Lib/a;Lac/g;)Lyb/n;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyb/n;

    const/4 v9, 0x0

    sget-object v10, Lm9/v;->a:Lm9/v;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lyb/n;-><init>(Lyb/l;Lib/c;Lma/j;Lib/g;Lib/h;Lib/a;Lac/g;Lyb/k0;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Llb/b;)Lma/e;
    .locals 2

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyb/j;->c:Ljava/util/Set;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Lyb/l;->t:Lyb/j;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lyb/j;->a(Llb/b;Lyb/h;)Lma/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
