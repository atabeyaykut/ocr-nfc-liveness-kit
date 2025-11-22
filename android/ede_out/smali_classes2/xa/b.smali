.class public final Lxa/b;
.super Lpa/l;
.source "SourceFile"

# interfaces
.implements Lxa/a;


# instance fields
.field public I:Ljava/lang/Boolean;

.field public K:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lma/e;Lxa/b;Lna/h;ZLma/b$a;Lma/r0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    invoke-direct/range {p0 .. p6}, Lpa/l;-><init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lma/r0;)V

    iput-object v0, p0, Lxa/b;->I:Ljava/lang/Boolean;

    iput-object v0, p0, Lxa/b;->K:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Lxa/b;->C(I)V

    throw v0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, Lxa/b;->C(I)V

    throw v0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Lxa/b;->C(I)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lxa/b;->C(I)V

    throw v0
.end method

.method public static synthetic C(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParameterTypes"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static X0(Lma/e;Lna/h;ZLbb/a;)Lxa/b;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lxa/b;

    const/4 v3, 0x0

    sget-object v6, Lma/b$a;->a:Lma/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lxa/b;-><init>(Lma/e;Lxa/b;Lna/h;ZLma/b$a;Lma/r0;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lxa/b;->C(I)V

    throw v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Lxa/b;->C(I)V

    throw v0
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget-object v0, p0, Lxa/b;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lxa/b;->Y0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lxa/b;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lxa/b;->I:Ljava/lang/Boolean;

    return-void
.end method

.method public final R0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lxa/b;->K:Ljava/lang/Boolean;

    return-void
.end method

.method public final bridge synthetic T0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/l;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lxa/b;->Y0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lxa/b;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lxa/b;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eqz p5, :cond_3

    .line 7
    .line 8
    if-eqz p4, :cond_2

    .line 9
    .line 10
    sget-object v0, Lma/b$a;->a:Lma/b$a;

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lma/b$a;->d:Lma/b$a;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance p4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    .line 24
    .line 25
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p5, "\nnewOwner: "

    .line 32
    .line 33
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, "\nkind: "

    .line 40
    .line 41
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p3

    .line 55
    :cond_1
    :goto_0
    move-object v1, p2

    .line 56
    check-cast v1, Lma/e;

    .line 57
    .line 58
    move-object v2, p3

    .line 59
    check-cast v2, Lxa/b;

    .line 60
    .line 61
    new-instance p2, Lxa/b;

    .line 62
    .line 63
    iget-boolean v4, p0, Lpa/l;->H:Z

    .line 64
    .line 65
    move-object v0, p2

    .line 66
    move-object v3, p5

    .line 67
    move-object v5, p1

    .line 68
    move-object v6, p4

    .line 69
    invoke-direct/range {v0 .. v6}, Lxa/b;-><init>(Lma/e;Lxa/b;Lna/h;ZLma/b$a;Lma/r0;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lxa/b;->I:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p2, p1}, Lxa/b;->Q0(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lxa/b;->B()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p2, p1}, Lxa/b;->R0(Z)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_2
    const/16 p1, 0xa

    .line 90
    .line 91
    invoke-static {p1}, Lxa/b;->C(I)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    const/16 p1, 0x9

    .line 96
    .line 97
    invoke-static {p1}, Lxa/b;->C(I)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    const/16 p1, 0x8

    .line 102
    .line 103
    invoke-static {p1}, Lxa/b;->C(I)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_5
    const/4 p1, 0x7

    .line 108
    invoke-static {p1}, Lxa/b;->C(I)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public final i0(Lcc/e0;Ljava/util/ArrayList;Lcc/e0;Ll9/g;)Lxa/a;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lpa/l;->U0()Lma/e;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lpa/x;->k0()Lma/b$a;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lna/b;->getAnnotations()Lna/h;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lpa/q;->getSource()Lma/r0;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    move-object/from16 v2, p0

    .line 23
    .line 24
    invoke-virtual/range {v2 .. v7}, Lxa/b;->Y0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;)Lxa/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v3, Lna/h$a;->a:Lna/h$a$a;

    .line 33
    .line 34
    invoke-static {v2, v0, v3}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    move-object v9, v0

    .line 39
    move-object/from16 v0, p0

    .line 40
    .line 41
    iget-object v10, v0, Lpa/x;->k:Lma/o0;

    .line 42
    .line 43
    sget-object v11, Lm9/v;->a:Lm9/v;

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Lpa/x;->getTypeParameters()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    invoke-virtual/range {p0 .. p0}, Lpa/x;->g()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object/from16 v4, p2

    .line 54
    .line 55
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/clearcut/d0;->m(Ljava/util/ArrayList;Ljava/util/Collection;Lma/a;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    invoke-virtual/range {p0 .. p0}, Lpa/x;->j()Lma/a0;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    invoke-virtual/range {p0 .. p0}, Lpa/x;->getVisibility()Lma/q;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    move-object v8, v2

    .line 68
    move-object/from16 v14, p3

    .line 69
    .line 70
    invoke-virtual/range {v8 .. v16}, Lpa/x;->N0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)V

    .line 71
    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v3, v1, Ll9/g;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lma/a$a;

    .line 78
    .line 79
    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {v2, v3, v1}, Lpa/x;->P0(Lma/a$a;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-object v2
.end method
