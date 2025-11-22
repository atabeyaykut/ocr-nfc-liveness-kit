.class public final Lla/t;
.super Lyb/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbc/c;Lra/f;Lpa/g0;Lma/d0;Lla/k;Lla/k;Ldc/m;Lub/b;)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    move-object/from16 v5, p0

    .line 8
    .line 9
    move-object/from16 v1, p1

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    move-object/from16 v9, p4

    .line 14
    .line 15
    move-object/from16 v10, p5

    .line 16
    .line 17
    move-object/from16 v11, p6

    .line 18
    .line 19
    move-object/from16 v13, p7

    .line 20
    .line 21
    move-object/from16 v14, p8

    .line 22
    .line 23
    const-string v0, "additionalClassPartsProvider"

    .line 24
    .line 25
    move-object/from16 v3, p5

    .line 26
    .line 27
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "platformDependentDeclarationFilter"

    .line 31
    .line 32
    move-object/from16 v3, p6

    .line 33
    .line 34
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "kotlinTypeChecker"

    .line 38
    .line 39
    move-object/from16 v3, p7

    .line 40
    .line 41
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct/range {p0 .. p3}, Lyb/b;-><init>(Lbc/c;Lra/f;Lpa/g0;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lyb/l;

    .line 48
    .line 49
    move-object v0, v7

    .line 50
    new-instance v4, Lyb/q;

    .line 51
    .line 52
    move-object v3, v4

    .line 53
    invoke-direct {v4, v15}, Lyb/q;-><init>(Lma/f0;)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Lyb/e;

    .line 57
    .line 58
    move-object v4, v6

    .line 59
    sget-object v15, Lzb/a;->m:Lzb/a;

    .line 60
    .line 61
    move-object/from16 p2, v7

    .line 62
    .line 63
    move-object/from16 v7, p4

    .line 64
    .line 65
    invoke-direct {v6, v12, v7, v15}, Lyb/e;-><init>(Lma/b0;Lma/d0;Lzb/a;)V

    .line 66
    .line 67
    .line 68
    sget-object v6, Lyb/u;->k0:Lyb/u$a;

    .line 69
    .line 70
    sget-object v7, Lyb/v$a;->a:Lyb/v$a;

    .line 71
    .line 72
    move-object/from16 v17, p2

    .line 73
    .line 74
    move-object/from16 p2, v0

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Loa/b;

    .line 78
    .line 79
    move-object/from16 v18, v1

    .line 80
    .line 81
    new-instance v1, Lka/a;

    .line 82
    .line 83
    invoke-direct {v1, v8, v12}, Lka/a;-><init>(Lbc/l;Lpa/g0;)V

    .line 84
    .line 85
    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    aput-object v1, v0, v16

    .line 89
    .line 90
    new-instance v1, Lla/e;

    .line 91
    .line 92
    invoke-direct {v1, v8, v12}, Lla/e;-><init>(Lbc/l;Lpa/g0;)V

    .line 93
    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    aput-object v1, v0, v8

    .line 97
    .line 98
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v8, v0

    .line 103
    check-cast v8, Ljava/lang/Iterable;

    .line 104
    .line 105
    iget-object v12, v15, Lxb/a;->a:Lmb/f;

    .line 106
    .line 107
    const/4 v15, 0x0

    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    const/high16 v16, 0xc0000

    .line 111
    .line 112
    move-object/from16 v0, p2

    .line 113
    .line 114
    move-object/from16 v1, v18

    .line 115
    .line 116
    invoke-direct/range {v0 .. v16}, Lyb/l;-><init>(Lbc/l;Lma/b0;Lyb/i;Lyb/d;Lma/f0;Lyb/u;Lyb/v;Ljava/lang/Iterable;Lma/d0;Loa/a;Loa/c;Lmb/f;Ldc/m;Lub/b;Ljava/util/List;I)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move-object/from16 v1, v17

    .line 122
    .line 123
    iput-object v1, v0, Lyb/b;->d:Lyb/l;

    .line 124
    .line 125
    return-void
.end method
