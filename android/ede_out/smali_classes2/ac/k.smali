.class public final Lac/k;
.super Lpa/l0;
.source "SourceFile"

# interfaces
.implements Lac/b;


# instance fields
.field public final E:Lgb/m;

.field public final F:Lib/c;

.field public final G:Lib/g;

.field public final H:Lib/h;

.field public final I:Lac/g;


# direct methods
.method public constructor <init>(Lma/j;Lma/l0;Lna/h;Lma/a0;Lma/q;ZLlb/f;Lma/b$a;ZZZZZLgb/m;Lib/c;Lib/g;Lib/h;Lac/g;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lma/r0;->a:Lma/r0$a;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lpa/l0;-><init>(Lma/j;Lma/l0;Lna/h;Lma/a0;Lma/q;ZLlb/f;Lma/b$a;Lma/r0;ZZZZZZ)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lac/k;->E:Lgb/m;

    move-object/from16 v1, p15

    iput-object v1, v0, Lac/k;->F:Lib/c;

    move-object/from16 v1, p16

    iput-object v1, v0, Lac/k;->G:Lib/g;

    move-object/from16 v1, p17

    iput-object v1, v0, Lac/k;->H:Lib/h;

    move-object/from16 v1, p18

    iput-object v1, v0, Lac/k;->I:Lac/g;

    return-void
.end method


# virtual methods
.method public final M0(Lma/j;Lma/a0;Lma/q;Lma/l0;Lma/b$a;Llb/f;)Lpa/l0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v3, p4

    .line 10
    .line 11
    move-object/from16 v9, p5

    .line 12
    .line 13
    move-object/from16 v8, p6

    .line 14
    .line 15
    const-string v1, "newOwner"

    .line 16
    .line 17
    move-object/from16 v4, p1

    .line 18
    .line 19
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "newModality"

    .line 23
    .line 24
    move-object/from16 v4, p2

    .line 25
    .line 26
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "newVisibility"

    .line 30
    .line 31
    move-object/from16 v4, p3

    .line 32
    .line 33
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "kind"

    .line 37
    .line 38
    move-object/from16 v4, p5

    .line 39
    .line 40
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "newName"

    .line 44
    .line 45
    move-object/from16 v4, p6

    .line 46
    .line 47
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v20, Lac/k;

    .line 51
    .line 52
    move-object/from16 v1, v20

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lna/b;->getAnnotations()Lna/h;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-boolean v7, v0, Lpa/x0;->f:Z

    .line 59
    .line 60
    iget-boolean v10, v0, Lpa/l0;->p:Z

    .line 61
    .line 62
    iget-boolean v11, v0, Lpa/l0;->q:Z

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Lac/k;->isExternal()Z

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    iget-boolean v13, v0, Lpa/l0;->v:Z

    .line 69
    .line 70
    iget-boolean v14, v0, Lpa/l0;->r:Z

    .line 71
    .line 72
    iget-object v15, v0, Lac/k;->E:Lgb/m;

    .line 73
    .line 74
    move-object/from16 p1, v1

    .line 75
    .line 76
    iget-object v1, v0, Lac/k;->F:Lib/c;

    .line 77
    .line 78
    move-object/from16 v16, v1

    .line 79
    .line 80
    iget-object v1, v0, Lac/k;->G:Lib/g;

    .line 81
    .line 82
    move-object/from16 v17, v1

    .line 83
    .line 84
    iget-object v1, v0, Lac/k;->H:Lib/h;

    .line 85
    .line 86
    move-object/from16 v18, v1

    .line 87
    .line 88
    iget-object v1, v0, Lac/k;->I:Lac/g;

    .line 89
    .line 90
    move-object/from16 v19, v1

    .line 91
    .line 92
    move-object/from16 v1, p1

    .line 93
    .line 94
    invoke-direct/range {v1 .. v19}, Lac/k;-><init>(Lma/j;Lma/l0;Lna/h;Lma/a0;Lma/q;ZLlb/f;Lma/b$a;ZZZZZLgb/m;Lib/c;Lib/g;Lib/h;Lac/g;)V

    .line 95
    .line 96
    .line 97
    return-object v20
.end method

.method public final O()Lib/g;
    .locals 1

    iget-object v0, p0, Lac/k;->G:Lib/g;

    return-object v0
.end method

.method public final U()Lib/c;
    .locals 1

    iget-object v0, p0, Lac/k;->F:Lib/c;

    return-object v0
.end method

.method public final X()Lac/g;
    .locals 1

    iget-object v0, p0, Lac/k;->I:Lac/g;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->D:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/k;->E:Lgb/m;

    .line 4
    .line 5
    iget v1, v1, Lgb/m;->d:I

    .line 6
    .line 7
    const-string v2, "IS_EXTERNAL_PROPERTY.get(proto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final z()Lmb/p;
    .locals 1

    iget-object v0, p0, Lac/k;->E:Lgb/m;

    return-object v0
.end method
