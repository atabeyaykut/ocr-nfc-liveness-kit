.class public final Lac/c;
.super Lpa/l;
.source "SourceFile"

# interfaces
.implements Lac/b;


# instance fields
.field public final I:Lgb/c;

.field public final K:Lib/c;

.field public final L:Lib/g;

.field public final M:Lib/h;

.field public final N:Lac/g;


# direct methods
.method public constructor <init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lgb/c;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lpa/l;-><init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lma/r0;)V

    iput-object v8, v7, Lac/c;->I:Lgb/c;

    iput-object v9, v7, Lac/c;->K:Lib/c;

    iput-object v10, v7, Lac/c;->L:Lib/g;

    iput-object v11, v7, Lac/c;->M:Lib/h;

    move-object/from16 v0, p10

    iput-object v0, v7, Lac/c;->N:Lac/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lac/c;->X0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lac/c;

    move-result-object p1

    return-object p1
.end method

.method public final L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final O()Lib/g;
    .locals 1

    iget-object v0, p0, Lac/c;->L:Lib/g;

    return-object v0
.end method

.method public final bridge synthetic T0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/l;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lac/c;->X0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lac/c;

    move-result-object p1

    return-object p1
.end method

.method public final U()Lib/c;
    .locals 1

    iget-object v0, p0, Lac/c;->K:Lib/c;

    return-object v0
.end method

.method public final X()Lac/g;
    .locals 1

    iget-object v0, p0, Lac/c;->N:Lac/g;

    return-object v0
.end method

.method public final X0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lac/c;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    const-string v2, "newOwner"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "kind"

    .line 10
    .line 11
    move-object/from16 v8, p1

    .line 12
    .line 13
    invoke-static {v8, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "annotations"

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    invoke-static {v6, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lac/c;

    .line 24
    .line 25
    move-object v4, v1

    .line 26
    check-cast v4, Lma/e;

    .line 27
    .line 28
    move-object/from16 v5, p3

    .line 29
    .line 30
    check-cast v5, Lma/i;

    .line 31
    .line 32
    iget-boolean v7, v0, Lpa/l;->H:Z

    .line 33
    .line 34
    iget-object v9, v0, Lac/c;->I:Lgb/c;

    .line 35
    .line 36
    iget-object v10, v0, Lac/c;->K:Lib/c;

    .line 37
    .line 38
    iget-object v11, v0, Lac/c;->L:Lib/g;

    .line 39
    .line 40
    iget-object v12, v0, Lac/c;->M:Lib/h;

    .line 41
    .line 42
    iget-object v13, v0, Lac/c;->N:Lac/g;

    .line 43
    .line 44
    move-object v3, v2

    .line 45
    move-object/from16 v14, p4

    .line 46
    .line 47
    invoke-direct/range {v3 .. v14}, Lac/c;-><init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lgb/c;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, v0, Lpa/x;->z:Z

    .line 51
    .line 52
    iput-boolean v1, v2, Lpa/x;->z:Z

    .line 53
    .line 54
    return-object v2
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isSuspend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z()Lmb/p;
    .locals 1

    iget-object v0, p0, Lac/c;->I:Lgb/c;

    return-object v0
.end method
