.class public final Lac/l;
.super Lpa/p0;
.source "SourceFile"

# interfaces
.implements Lac/b;


# instance fields
.field public final H:Lgb/h;

.field public final I:Lib/c;

.field public final K:Lib/g;

.field public final L:Lib/h;

.field public final M:Lac/g;


# direct methods
.method public constructor <init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lgb/h;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V
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

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lpa/p0;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;)V

    iput-object v8, v7, Lac/l;->H:Lgb/h;

    iput-object v9, v7, Lac/l;->I:Lib/c;

    iput-object v10, v7, Lac/l;->K:Lib/g;

    iput-object v11, v7, Lac/l;->L:Lib/h;

    move-object/from16 v0, p10

    iput-object v0, v7, Lac/l;->M:Lac/g;

    return-void
.end method


# virtual methods
.method public final K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "newOwner"

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "kind"

    .line 10
    .line 11
    move-object v7, p1

    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "annotations"

    .line 16
    .line 17
    move-object/from16 v5, p5

    .line 18
    .line 19
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lac/l;

    .line 23
    .line 24
    move-object/from16 v4, p3

    .line 25
    .line 26
    check-cast v4, Lma/q0;

    .line 27
    .line 28
    if-nez p6, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v6, "name"

    .line 35
    .line 36
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v6, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object/from16 v6, p6

    .line 42
    .line 43
    :goto_0
    iget-object v8, v0, Lac/l;->H:Lgb/h;

    .line 44
    .line 45
    iget-object v9, v0, Lac/l;->I:Lib/c;

    .line 46
    .line 47
    iget-object v10, v0, Lac/l;->K:Lib/g;

    .line 48
    .line 49
    iget-object v11, v0, Lac/l;->L:Lib/h;

    .line 50
    .line 51
    iget-object v12, v0, Lac/l;->M:Lac/g;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    move-object/from16 v3, p2

    .line 55
    .line 56
    move-object/from16 v5, p5

    .line 57
    .line 58
    move-object v7, p1

    .line 59
    move-object/from16 v13, p4

    .line 60
    .line 61
    invoke-direct/range {v2 .. v13}, Lac/l;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lgb/h;Lib/c;Lib/g;Lib/h;Lac/g;Lma/r0;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v2, v0, Lpa/x;->z:Z

    .line 65
    .line 66
    iput-boolean v2, v1, Lpa/x;->z:Z

    .line 67
    .line 68
    return-object v1
.end method

.method public final O()Lib/g;
    .locals 1

    iget-object v0, p0, Lac/l;->K:Lib/g;

    return-object v0
.end method

.method public final U()Lib/c;
    .locals 1

    iget-object v0, p0, Lac/l;->I:Lib/c;

    return-object v0
.end method

.method public final X()Lac/g;
    .locals 1

    iget-object v0, p0, Lac/l;->M:Lac/g;

    return-object v0
.end method

.method public final z()Lmb/p;
    .locals 1

    iget-object v0, p0, Lac/l;->H:Lgb/h;

    return-object v0
.end method
