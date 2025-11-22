.class public abstract Lpa/x;
.super Lpa/q;
.source "SourceFile"

# interfaces
.implements Lma/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/x$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lma/u;",
            ">;"
        }
    .end annotation
.end field

.field public volatile C:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Ljava/util/Collection<",
            "Lma/u;",
            ">;>;"
        }
    .end annotation
.end field

.field public final D:Lma/u;

.field public final E:Lma/b$a;

.field public F:Lma/u;

.field public G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lma/a$a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lma/a1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcc/e0;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lma/o0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lma/o0;

.field public k:Lma/o0;

.field public l:Lma/a0;

.field public m:Lma/q;

.field public n:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eqz p5, :cond_4

    if-eqz p6, :cond_3

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-direct {p0, p2, p5, p6, p4}, Lpa/q;-><init>(Lma/j;Lna/h;Llb/f;Lma/r0;)V

    sget-object p2, Lma/p;->i:Lma/p$l;

    iput-object p2, p0, Lpa/x;->m:Lma/q;

    iput-boolean v1, p0, Lpa/x;->n:Z

    iput-boolean v1, p0, Lpa/x;->p:Z

    iput-boolean v1, p0, Lpa/x;->q:Z

    iput-boolean v1, p0, Lpa/x;->r:Z

    iput-boolean v1, p0, Lpa/x;->s:Z

    iput-boolean v1, p0, Lpa/x;->t:Z

    iput-boolean v1, p0, Lpa/x;->v:Z

    iput-boolean v1, p0, Lpa/x;->w:Z

    iput-boolean v1, p0, Lpa/x;->x:Z

    iput-boolean v1, p0, Lpa/x;->y:Z

    iput-boolean v2, p0, Lpa/x;->z:Z

    iput-boolean v1, p0, Lpa/x;->A:Z

    iput-object v0, p0, Lpa/x;->B:Ljava/util/Collection;

    iput-object v0, p0, Lpa/x;->C:Lx9/a;

    iput-object v0, p0, Lpa/x;->F:Lma/u;

    iput-object v0, p0, Lpa/x;->G:Ljava/util/Map;

    if-nez p3, :cond_0

    move-object p3, p0

    :cond_0
    iput-object p3, p0, Lpa/x;->D:Lma/u;

    iput-object p1, p0, Lpa/x;->E:Lma/b$a;

    return-void

    :cond_1
    const/4 p1, 0x4

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_2
    const/4 p1, 0x3

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_3
    const/4 p1, 0x2

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_4
    invoke-static {v2}, Lpa/x;->C(I)V

    throw v0

    :cond_5
    invoke-static {v1}, Lpa/x;->C(I)V

    throw v0
.end method

.method public static synthetic C(I)V
    .locals 7

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "configuration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "originalSubstitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "extensionReceiverParameter"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "unsubstitutedReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "unsubstitutedValueParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "contextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "newCopyBuilder"

    const-string v5, "initialize"

    const/4 v6, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_13
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_14
    const-string v3, "getSourceToUseForCopy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_15
    const-string v3, "copy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_16
    aput-object v4, v2, v6

    goto :goto_3

    :pswitch_17
    const-string v3, "getKind"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_18
    const-string v3, "getOriginal"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_19
    const-string v3, "getValueParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1b
    const-string v3, "getVisibility"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1c
    const-string v3, "getModality"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1e
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1f
    aput-object v5, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_20
    const-string v3, "getSubstitutedValueParameters"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_21
    const-string v3, "doSubstitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_22
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_23
    const-string v3, "substitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_24
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_25
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_26
    const-string v3, "setReturnType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_27
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_28
    aput-object v5, v2, v1

    :goto_4
    :pswitch_29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_1f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_13
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_23
        :pswitch_29
        :pswitch_22
        :pswitch_21
        :pswitch_29
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public static M0(Lma/u;Ljava/util/List;Lcc/p1;ZZ[Z)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_9

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_8

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lma/a1;

    .line 30
    .line 31
    invoke-interface {v4}, Lma/z0;->getType()Lcc/e0;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    sget-object v6, Lcc/t1;->d:Lcc/t1;

    .line 36
    .line 37
    invoke-virtual {v0, v5, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-interface {v4}, Lma/a1;->g0()Lcc/e0;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    move-object v6, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v5, v6}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :goto_1
    if-nez v13, :cond_1

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    invoke-interface {v4}, Lma/z0;->getType()Lcc/e0;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-ne v13, v7, :cond_2

    .line 61
    .line 62
    if-eq v5, v6, :cond_3

    .line 63
    .line 64
    :cond_2
    if-eqz p5, :cond_3

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v7, 0x1

    .line 68
    aput-boolean v7, p5, v5

    .line 69
    .line 70
    :cond_3
    instance-of v5, v4, Lpa/v0$a;

    .line 71
    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    move-object v5, v4

    .line 75
    check-cast v5, Lpa/v0$a;

    .line 76
    .line 77
    iget-object v5, v5, Lpa/v0$a;->m:Ll9/j;

    .line 78
    .line 79
    invoke-virtual {v5}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/List;

    .line 84
    .line 85
    new-instance v7, Lpa/w;

    .line 86
    .line 87
    invoke-direct {v7, v5}, Lpa/w;-><init>(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    move-object/from16 v19, v7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move-object/from16 v19, v1

    .line 94
    .line 95
    :goto_2
    if-eqz p3, :cond_5

    .line 96
    .line 97
    move-object v9, v1

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move-object v9, v4

    .line 100
    :goto_3
    invoke-interface {v4}, Lma/a1;->getIndex()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    invoke-interface {v4}, Lna/a;->getAnnotations()Lna/h;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-interface {v4}, Lma/j;->getName()Llb/f;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-interface {v4}, Lma/a1;->t0()Z

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    invoke-interface {v4}, Lma/a1;->W()Z

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    invoke-interface {v4}, Lma/a1;->T()Z

    .line 121
    .line 122
    .line 123
    move-result v16

    .line 124
    if-eqz p4, :cond_6

    .line 125
    .line 126
    invoke-interface {v4}, Lma/m;->getSource()Lma/r0;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    sget-object v4, Lma/r0;->a:Lma/r0$a;

    .line 132
    .line 133
    :goto_4
    const-string v5, "annotations"

    .line 134
    .line 135
    invoke-static {v11, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v5, "name"

    .line 139
    .line 140
    invoke-static {v12, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v5, "source"

    .line 144
    .line 145
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    if-nez v19, :cond_7

    .line 149
    .line 150
    new-instance v5, Lpa/v0;

    .line 151
    .line 152
    move-object v7, v5

    .line 153
    move-object/from16 v8, p0

    .line 154
    .line 155
    move-object/from16 v17, v6

    .line 156
    .line 157
    move-object/from16 v18, v4

    .line 158
    .line 159
    invoke-direct/range {v7 .. v18}, Lpa/v0;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    new-instance v5, Lpa/v0$a;

    .line 164
    .line 165
    move-object v7, v5

    .line 166
    move-object/from16 v8, p0

    .line 167
    .line 168
    move-object/from16 v17, v6

    .line 169
    .line 170
    move-object/from16 v18, v4

    .line 171
    .line 172
    invoke-direct/range {v7 .. v19}, Lpa/v0$a;-><init>(Lma/a;Lma/a1;ILna/h;Llb/f;Lcc/e0;ZZZLcc/e0;Lma/r0;Lx9/a;)V

    .line 173
    .line 174
    .line 175
    :goto_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    return-object v2

    .line 181
    :cond_9
    const/16 v0, 0x1e

    .line 182
    .line 183
    invoke-static {v0}, Lpa/x;->C(I)V

    .line 184
    .line 185
    .line 186
    throw v1
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->A:Z

    return v0
.end method

.method public final B0()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->x:Z

    return v0
.end method

.method public final D0()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->v:Z

    return v0
.end method

.method public E0(Lma/j;Lma/a0;Lma/o;)Lma/u;
    .locals 2

    sget-object v0, Lma/b$a;->b:Lma/b$a;

    invoke-virtual {p0}, Lpa/x;->r()Lma/u$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lma/u$a;->b(Lma/j;)Lma/u$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lma/u$a;->a(Lma/a0;)Lma/u$a;

    move-result-object p1

    invoke-interface {p1, p3}, Lma/u$a;->q(Lma/q;)Lma/u$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lma/u$a;->p(Lma/b$a;)Lma/u$a;

    move-result-object p1

    invoke-interface {p1}, Lma/u$a;->k()Lma/u$a;

    move-result-object p1

    invoke-interface {p1}, Lma/u$a;->build()Lma/u;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x1a

    invoke-static {p1}, Lpa/x;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->t:Z

    return v0
.end method

.method public abstract K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->s:Z

    return v0
.end method

.method public L0(Lpa/x$a;)Lpa/x;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    if-eqz v8, :cond_1f

    .line 7
    .line 8
    const/4 v10, 0x1

    .line 9
    new-array v11, v10, [Z

    .line 10
    .line 11
    iget-object v0, v8, Lpa/x$a;->s:Lna/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lna/b;->getAnnotations()Lna/h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v8, Lpa/x$a;->s:Lna/h;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/d0;->j(Lna/h;Lna/h;)Lna/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lna/b;->getAnnotations()Lna/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    move-object v5, v0

    .line 31
    iget-object v2, v8, Lpa/x$a;->b:Lma/j;

    .line 32
    .line 33
    iget-object v3, v8, Lpa/x$a;->e:Lma/u;

    .line 34
    .line 35
    iget-object v1, v8, Lpa/x$a;->f:Lma/b$a;

    .line 36
    .line 37
    iget-object v6, v8, Lpa/x$a;->l:Llb/f;

    .line 38
    .line 39
    iget-boolean v0, v8, Lpa/x$a;->o:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move-object v0, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lpa/x;->a()Lma/u;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Lma/m;->getSource()Lma/r0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    sget-object v0, Lma/r0;->a:Lma/r0$a;

    .line 57
    .line 58
    :goto_2
    move-object v4, v0

    .line 59
    if-eqz v4, :cond_1e

    .line 60
    .line 61
    move-object/from16 v0, p0

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v6}, Lpa/x;->K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v0, v8, Lpa/x$a;->r:Ljava/util/List;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Lpa/x;->getTypeParameters()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_3
    const/4 v12, 0x0

    .line 76
    aget-boolean v1, v11, v12

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    xor-int/2addr v2, v10

    .line 83
    or-int/2addr v1, v2

    .line 84
    aput-boolean v1, v11, v12

    .line 85
    .line 86
    new-instance v15, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v8, Lpa/x$a;->a:Lcc/l1;

    .line 96
    .line 97
    invoke-static {v0, v1, v6, v15, v11}, La6/a;->C(Ljava/util/List;Lcc/l1;Lma/j;Ljava/util/List;[Z)Lcc/p1;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    if-nez v14, :cond_4

    .line 102
    .line 103
    return-object v9

    .line 104
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v8, Lpa/x$a;->h:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sget-object v1, Lcc/t1;->d:Lcc/t1;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    iget-object v0, v8, Lpa/x$a;->h:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lma/o0;

    .line 136
    .line 137
    invoke-interface {v2}, Lma/z0;->getType()Lcc/e0;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v14, v3, v1}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-nez v3, :cond_5

    .line 146
    .line 147
    return-object v9

    .line 148
    :cond_5
    invoke-interface {v2}, Lma/o0;->getValue()Lwb/g;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Lwb/f;

    .line 153
    .line 154
    invoke-interface {v4}, Lwb/f;->a()Llb/f;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v2}, Lna/a;->getAnnotations()Lna/h;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v6, v3, v4, v5}, Lob/h;->b(Lma/a;Lcc/e0;Llb/f;Lna/h;)Lpa/o0;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    aget-boolean v4, v11, v12

    .line 170
    .line 171
    invoke-interface {v2}, Lma/z0;->getType()Lcc/e0;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eq v3, v2, :cond_6

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_6
    const/4 v2, 0x0

    .line 180
    :goto_4
    or-int/2addr v2, v4

    .line 181
    aput-boolean v2, v11, v12

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    iget-object v0, v8, Lpa/x$a;->i:Lma/o0;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v14, v0, v1}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-nez v0, :cond_8

    .line 197
    .line 198
    return-object v9

    .line 199
    :cond_8
    new-instance v1, Lpa/o0;

    .line 200
    .line 201
    new-instance v2, Lwb/d;

    .line 202
    .line 203
    iget-object v3, v8, Lpa/x$a;->i:Lma/o0;

    .line 204
    .line 205
    invoke-interface {v3}, Lma/o0;->getValue()Lwb/g;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-direct {v2, v6, v0, v3}, Lwb/d;-><init>(Lma/a;Lcc/e0;Lwb/g;)V

    .line 210
    .line 211
    .line 212
    iget-object v3, v8, Lpa/x$a;->i:Lma/o0;

    .line 213
    .line 214
    invoke-interface {v3}, Lna/a;->getAnnotations()Lna/h;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-direct {v1, v6, v2, v3}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    .line 219
    .line 220
    .line 221
    aget-boolean v2, v11, v12

    .line 222
    .line 223
    iget-object v3, v8, Lpa/x$a;->i:Lma/o0;

    .line 224
    .line 225
    invoke-interface {v3}, Lma/z0;->getType()Lcc/e0;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eq v0, v3, :cond_9

    .line 230
    .line 231
    const/4 v0, 0x1

    .line 232
    goto :goto_5

    .line 233
    :cond_9
    const/4 v0, 0x0

    .line 234
    :goto_5
    or-int/2addr v0, v2

    .line 235
    aput-boolean v0, v11, v12

    .line 236
    .line 237
    move-object/from16 v16, v1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    move-object/from16 v16, v9

    .line 241
    .line 242
    :goto_6
    iget-object v0, v8, Lpa/x$a;->j:Lma/o0;

    .line 243
    .line 244
    if-eqz v0, :cond_d

    .line 245
    .line 246
    invoke-interface {v0, v14}, Lma/o0;->c(Lcc/p1;)Lpa/d;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-nez v0, :cond_b

    .line 251
    .line 252
    return-object v9

    .line 253
    :cond_b
    aget-boolean v1, v11, v12

    .line 254
    .line 255
    iget-object v2, v8, Lpa/x$a;->j:Lma/o0;

    .line 256
    .line 257
    if-eq v0, v2, :cond_c

    .line 258
    .line 259
    const/4 v2, 0x1

    .line 260
    goto :goto_7

    .line 261
    :cond_c
    const/4 v2, 0x0

    .line 262
    :goto_7
    or-int/2addr v1, v2

    .line 263
    aput-boolean v1, v11, v12

    .line 264
    .line 265
    move-object/from16 v17, v0

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_d
    move-object/from16 v17, v9

    .line 269
    .line 270
    :goto_8
    iget-object v1, v8, Lpa/x$a;->g:Ljava/util/List;

    .line 271
    .line 272
    iget-boolean v3, v8, Lpa/x$a;->p:Z

    .line 273
    .line 274
    iget-boolean v4, v8, Lpa/x$a;->o:Z

    .line 275
    .line 276
    move-object v0, v6

    .line 277
    move-object v2, v14

    .line 278
    move-object v5, v11

    .line 279
    invoke-static/range {v0 .. v5}, Lpa/x;->M0(Lma/u;Ljava/util/List;Lcc/p1;ZZ[Z)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-nez v0, :cond_e

    .line 284
    .line 285
    return-object v9

    .line 286
    :cond_e
    iget-object v1, v8, Lpa/x$a;->k:Lcc/e0;

    .line 287
    .line 288
    sget-object v2, Lcc/t1;->e:Lcc/t1;

    .line 289
    .line 290
    invoke-virtual {v14, v1, v2}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    if-nez v1, :cond_f

    .line 295
    .line 296
    return-object v9

    .line 297
    :cond_f
    aget-boolean v2, v11, v12

    .line 298
    .line 299
    iget-object v3, v8, Lpa/x$a;->k:Lcc/e0;

    .line 300
    .line 301
    if-eq v1, v3, :cond_10

    .line 302
    .line 303
    const/4 v3, 0x1

    .line 304
    goto :goto_9

    .line 305
    :cond_10
    const/4 v3, 0x0

    .line 306
    :goto_9
    or-int/2addr v2, v3

    .line 307
    aput-boolean v2, v11, v12

    .line 308
    .line 309
    if-nez v2, :cond_11

    .line 310
    .line 311
    iget-boolean v2, v8, Lpa/x$a;->w:Z

    .line 312
    .line 313
    if-eqz v2, :cond_11

    .line 314
    .line 315
    return-object v7

    .line 316
    :cond_11
    iget-object v2, v8, Lpa/x$a;->c:Lma/a0;

    .line 317
    .line 318
    iget-object v3, v8, Lpa/x$a;->d:Lma/q;

    .line 319
    .line 320
    move-object v12, v6

    .line 321
    move-object v4, v13

    .line 322
    move-object/from16 v13, v16

    .line 323
    .line 324
    move-object v5, v14

    .line 325
    move-object/from16 v14, v17

    .line 326
    .line 327
    move-object v9, v15

    .line 328
    move-object v15, v4

    .line 329
    move-object/from16 v16, v9

    .line 330
    .line 331
    move-object/from16 v17, v0

    .line 332
    .line 333
    move-object/from16 v18, v1

    .line 334
    .line 335
    move-object/from16 v19, v2

    .line 336
    .line 337
    move-object/from16 v20, v3

    .line 338
    .line 339
    invoke-virtual/range {v12 .. v20}, Lpa/x;->N0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)V

    .line 340
    .line 341
    .line 342
    iget-boolean v0, v7, Lpa/x;->n:Z

    .line 343
    .line 344
    iput-boolean v0, v6, Lpa/x;->n:Z

    .line 345
    .line 346
    iget-boolean v0, v7, Lpa/x;->p:Z

    .line 347
    .line 348
    iput-boolean v0, v6, Lpa/x;->p:Z

    .line 349
    .line 350
    iget-boolean v0, v7, Lpa/x;->q:Z

    .line 351
    .line 352
    iput-boolean v0, v6, Lpa/x;->q:Z

    .line 353
    .line 354
    iget-boolean v0, v7, Lpa/x;->r:Z

    .line 355
    .line 356
    iput-boolean v0, v6, Lpa/x;->r:Z

    .line 357
    .line 358
    iget-boolean v0, v7, Lpa/x;->s:Z

    .line 359
    .line 360
    iput-boolean v0, v6, Lpa/x;->s:Z

    .line 361
    .line 362
    iget-boolean v0, v7, Lpa/x;->y:Z

    .line 363
    .line 364
    iput-boolean v0, v6, Lpa/x;->y:Z

    .line 365
    .line 366
    iget-boolean v0, v7, Lpa/x;->t:Z

    .line 367
    .line 368
    iput-boolean v0, v6, Lpa/x;->t:Z

    .line 369
    .line 370
    iget-boolean v0, v7, Lpa/x;->v:Z

    .line 371
    .line 372
    iput-boolean v0, v6, Lpa/x;->v:Z

    .line 373
    .line 374
    iget-boolean v0, v7, Lpa/x;->z:Z

    .line 375
    .line 376
    invoke-virtual {v6, v0}, Lpa/x;->Q0(Z)V

    .line 377
    .line 378
    .line 379
    iget-boolean v0, v8, Lpa/x$a;->q:Z

    .line 380
    .line 381
    iput-boolean v0, v6, Lpa/x;->w:Z

    .line 382
    .line 383
    iget-boolean v0, v8, Lpa/x$a;->t:Z

    .line 384
    .line 385
    iput-boolean v0, v6, Lpa/x;->x:Z

    .line 386
    .line 387
    iget-object v0, v8, Lpa/x$a;->v:Ljava/lang/Boolean;

    .line 388
    .line 389
    if-eqz v0, :cond_12

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    goto :goto_a

    .line 396
    :cond_12
    iget-boolean v0, v7, Lpa/x;->A:Z

    .line 397
    .line 398
    :goto_a
    invoke-virtual {v6, v0}, Lpa/x;->R0(Z)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v8, Lpa/x$a;->u:Ljava/util/LinkedHashMap;

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_13

    .line 408
    .line 409
    iget-object v0, v7, Lpa/x;->G:Ljava/util/Map;

    .line 410
    .line 411
    if-eqz v0, :cond_17

    .line 412
    .line 413
    :cond_13
    iget-object v0, v8, Lpa/x$a;->u:Ljava/util/LinkedHashMap;

    .line 414
    .line 415
    iget-object v1, v7, Lpa/x;->G:Ljava/util/Map;

    .line 416
    .line 417
    if-eqz v1, :cond_15

    .line 418
    .line 419
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_15

    .line 432
    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Ljava/util/Map$Entry;

    .line 438
    .line 439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-nez v3, :cond_14

    .line 448
    .line 449
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    goto :goto_b

    .line 461
    :cond_15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-ne v1, v10, :cond_16

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    :cond_16
    iput-object v0, v6, Lpa/x;->G:Ljava/util/Map;

    .line 496
    .line 497
    :cond_17
    iget-boolean v0, v8, Lpa/x$a;->n:Z

    .line 498
    .line 499
    if-nez v0, :cond_18

    .line 500
    .line 501
    iget-object v0, v7, Lpa/x;->F:Lma/u;

    .line 502
    .line 503
    if-eqz v0, :cond_1a

    .line 504
    .line 505
    :cond_18
    iget-object v0, v7, Lpa/x;->F:Lma/u;

    .line 506
    .line 507
    if-eqz v0, :cond_19

    .line 508
    .line 509
    goto :goto_c

    .line 510
    :cond_19
    move-object v0, v7

    .line 511
    :goto_c
    invoke-interface {v0, v5}, Lma/u;->c(Lcc/p1;)Lma/u;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iput-object v0, v6, Lpa/x;->F:Lma/u;

    .line 516
    .line 517
    :cond_1a
    iget-boolean v0, v8, Lpa/x$a;->m:Z

    .line 518
    .line 519
    if-eqz v0, :cond_1d

    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, Lpa/x;->a()Lma/u;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-interface {v0}, Lma/u;->e()Ljava/util/Collection;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_1d

    .line 534
    .line 535
    iget-object v0, v8, Lpa/x$a;->a:Lcc/l1;

    .line 536
    .line 537
    invoke-virtual {v0}, Lcc/l1;->e()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_1c

    .line 542
    .line 543
    iget-object v0, v7, Lpa/x;->C:Lx9/a;

    .line 544
    .line 545
    if-eqz v0, :cond_1b

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lpa/x;->e()Ljava/util/Collection;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v6, v0}, Lpa/x;->w0(Ljava/util/Collection;)V

    .line 553
    .line 554
    .line 555
    goto :goto_e

    .line 556
    :cond_1c
    new-instance v0, Lpa/v;

    .line 557
    .line 558
    invoke-direct {v0, v7, v5}, Lpa/v;-><init>(Lpa/x;Lcc/p1;)V

    .line 559
    .line 560
    .line 561
    :goto_d
    iput-object v0, v6, Lpa/x;->C:Lx9/a;

    .line 562
    .line 563
    :cond_1d
    :goto_e
    return-object v6

    .line 564
    :cond_1e
    const/16 v0, 0x1b

    .line 565
    .line 566
    invoke-static {v0}, Lpa/x;->C(I)V

    .line 567
    .line 568
    .line 569
    throw v9

    .line 570
    :cond_1f
    const/16 v0, 0x19

    .line 571
    .line 572
    invoke-static {v0}, Lpa/x;->C(I)V

    .line 573
    .line 574
    .line 575
    throw v9
.end method

.method public N0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    if-eqz p5, :cond_5

    if-eqz p8, :cond_4

    invoke-static {p4}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpa/x;->e:Ljava/util/List;

    invoke-static {p5}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpa/x;->f:Ljava/util/List;

    iput-object p6, p0, Lpa/x;->g:Lcc/e0;

    iput-object p7, p0, Lpa/x;->l:Lma/a0;

    iput-object p8, p0, Lpa/x;->m:Lma/q;

    iput-object p1, p0, Lpa/x;->j:Lma/o0;

    iput-object p2, p0, Lpa/x;->k:Lma/o0;

    iput-object p3, p0, Lpa/x;->h:Ljava/util/List;

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const-string p6, " but position is "

    if-ge p2, p3, :cond_1

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lma/w0;

    invoke-interface {p3}, Lma/w0;->getIndex()I

    move-result p7

    if-ne p7, p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " index is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lma/w0;->getIndex()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lma/a1;

    invoke-interface {p2}, Lma/a1;->getIndex()I

    move-result p3

    add-int/lit8 p4, p1, 0x0

    if-ne p3, p4, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "index is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lma/a1;->getIndex()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    return-void

    :cond_4
    const/16 p1, 0x8

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_5
    const/4 p1, 0x7

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_6
    const/4 p1, 0x6

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0

    :cond_7
    const/4 p1, 0x5

    invoke-static {p1}, Lpa/x;->C(I)V

    throw v0
.end method

.method public final O0(Lcc/p1;)Lpa/x$a;
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v11, Lpa/x$a;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcc/p1;->g()Lcc/l1;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lpa/q;->b()Lma/j;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lpa/x;->j()Lma/a0;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p0}, Lpa/x;->getVisibility()Lma/q;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p0}, Lpa/x;->k0()Lma/b$a;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {p0}, Lpa/x;->g()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {p0}, Lpa/x;->p0()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget-object v9, p0, Lpa/x;->j:Lma/o0;

    .line 34
    .line 35
    invoke-virtual {p0}, Lpa/x;->getReturnType()Lcc/e0;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    move-object v0, v11

    .line 40
    move-object v1, p0

    .line 41
    invoke-direct/range {v0 .. v10}, Lpa/x$a;-><init>(Lpa/x;Lcc/l1;Lma/j;Lma/a0;Lma/q;Lma/b$a;Ljava/util/List;Ljava/util/List;Lma/o0;Lcc/e0;)V

    .line 42
    .line 43
    .line 44
    return-object v11

    .line 45
    :cond_0
    const/16 p1, 0x18

    .line 46
    .line 47
    invoke-static {p1}, Lpa/x;->C(I)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    throw p1
.end method

.method public final P0(Lma/a$a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/a$a<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lpa/x;->G:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpa/x;->G:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lpa/x;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Q0(Z)V
    .locals 0

    iput-boolean p1, p0, Lpa/x;->z:Z

    return-void
.end method

.method public R0(Z)V
    .locals 0

    iput-boolean p1, p0, Lpa/x;->A:Z

    return-void
.end method

.method public final S0(Lcc/m0;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lpa/x;->g:Lcc/e0;

    return-void

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Lpa/x;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final Y()Lma/u;
    .locals 1

    iget-object v0, p0, Lpa/x;->F:Lma/u;

    return-object v0
.end method

.method public Z(Lma/a$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lpa/x;->G:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a()Lma/a;
    .locals 1

    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lma/b;
    .locals 1

    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    return-object v0
.end method

.method public a()Lma/u;
    .locals 1

    iget-object v0, p0, Lpa/x;->D:Lma/u;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lma/u;->a()Lma/u;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x14

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a0()Lma/o0;
    .locals 1

    iget-object v0, p0, Lpa/x;->k:Lma/o0;

    return-object v0
.end method

.method public bridge synthetic b0(Lma/j;Lma/a0;Lma/o;)Lma/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lpa/x;->E0(Lma/j;Lma/a0;Lma/o;)Lma/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcc/p1;)Lma/k;
    .locals 0

    invoke-virtual {p0, p1}, Lpa/x;->c(Lcc/p1;)Lma/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcc/p1;)Lma/u;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcc/p1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lpa/x;->O0(Lcc/p1;)Lpa/x$a;

    move-result-object p1

    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    .line 1
    iput-object v0, p1, Lpa/x$a;->e:Lma/u;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lpa/x$a;->o:Z

    .line 3
    iput-boolean v0, p1, Lpa/x$a;->w:Z

    .line 4
    invoke-virtual {p1}, Lpa/x$a;->build()Lma/u;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x16

    invoke-static {p1}, Lpa/x;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lma/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/x;->C:Lx9/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    iput-object v0, p0, Lpa/x;->B:Ljava/util/Collection;

    .line 13
    .line 14
    iput-object v1, p0, Lpa/x;->C:Lx9/a;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lpa/x;->B:Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    const/16 v0, 0xe

    .line 29
    .line 30
    invoke-static {v0}, Lpa/x;->C(I)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/a1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/x;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getReturnType()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lpa/x;->g:Lcc/e0;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/x;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeParameters == null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    iget-object v0, p0, Lpa/x;->m:Lma/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h0()Lma/o0;
    .locals 1

    iget-object v0, p0, Lpa/x;->j:Lma/o0;

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->q:Z

    return v0
.end method

.method public final isInfix()Z
    .locals 3

    iget-boolean v0, p0, Lpa/x;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/u;

    invoke-interface {v2}, Lma/u;->isInfix()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->r:Z

    return v0
.end method

.method public final isOperator()Z
    .locals 3

    iget-boolean v0, p0, Lpa/x;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/u;

    invoke-interface {v2}, Lma/u;->isOperator()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->y:Z

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    iget-object v0, p0, Lpa/x;->l:Lma/a0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k0()Lma/b$a;
    .locals 1

    iget-object v0, p0, Lpa/x;->E:Lma/b$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/l<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lma/l;->b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/x;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lpa/x;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r()Lma/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/u$a<",
            "+",
            "Lma/u;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcc/p1;->b:Lcc/p1;

    invoke-virtual {p0, v0}, Lpa/x;->O0(Lcc/p1;)Lpa/x$a;

    move-result-object v0

    return-object v0
.end method

.method public final v0()Z
    .locals 1

    iget-boolean v0, p0, Lpa/x;->w:Z

    return v0
.end method

.method public w0(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lma/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iput-object p1, p0, Lpa/x;->B:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/u;

    invoke-interface {v0}, Lma/u;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/x;->x:Z

    :cond_1
    return-void

    :cond_2
    const/16 p1, 0x11

    invoke-static {p1}, Lpa/x;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic z0()Lma/m;
    .locals 1

    invoke-virtual {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    return-object v0
.end method
