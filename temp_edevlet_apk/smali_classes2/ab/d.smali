.class public final Lab/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp4/g7;

.field public final b:Lya/j;

.field public final c:Lab/f;

.field public final d:Lcc/f1;


# direct methods
.method public constructor <init>(Lp4/g7;Lya/j;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab/d;->a:Lp4/g7;

    iput-object p2, p0, Lab/d;->b:Lya/j;

    new-instance p1, Lab/f;

    invoke-direct {p1}, Lab/f;-><init>()V

    iput-object p1, p0, Lab/d;->c:Lab/f;

    new-instance p2, Lcc/f1;

    invoke-direct {p2, p1}, Lcc/f1;-><init>(Lab/f;)V

    iput-object p2, p0, Lab/d;->d:Lcc/f1;

    return-void
.end method

.method public static final d(Lcb/j;)Lec/f;
    .locals 3

    sget-object v0, Lec/h;->c:Lec/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0}, Lcb/j;->j()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcb/j;Lab/a;Lcc/m0;)Lcc/m0;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    iget-object v8, v6, Lab/d;->a:Lp4/g7;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcc/e0;->L0()Lcc/a1;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lya/e;

    move-object/from16 v9, p1

    .line 1
    invoke-direct {v2, v8, v9, v1}, Lya/e;-><init>(Lp4/g7;Lcb/d;Z)V

    .line 2
    invoke-static {v2}, Lc5/v;->L(Lna/h;)Lcc/a1;

    move-result-object v2

    :goto_1
    move-object v10, v2

    .line 3
    invoke-interface/range {p1 .. p1}, Lcb/j;->b()Lcb/i;

    move-result-object v2

    sget-object v3, Lcc/t1;->e:Lcc/t1;

    const/4 v4, 0x1

    iget v5, v7, Lab/a;->a:I

    iget v12, v7, Lab/a;->b:I

    iget-boolean v13, v7, Lab/a;->d:Z

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    instance-of v15, v2, Lcb/g;

    if-eqz v15, :cond_13

    move-object v15, v2

    check-cast v15, Lcb/g;

    invoke-interface {v15}, Lcb/g;->d()Llb/c;

    move-result-object v11

    if-eqz v11, :cond_12

    if-eqz v13, :cond_5

    .line 4
    sget-object v2, Lab/e;->a:Llb/c;

    .line 5
    invoke-static {v11, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    iget-object v2, v8, Lp4/g7;->a:Ljava/lang/Object;

    .line 7
    check-cast v2, Lya/c;

    .line 8
    iget-object v2, v2, Lya/c;->p:Lja/m;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v11, Lja/m;->e:[Lda/m;

    aget-object v11, v11, v1

    iget-object v1, v2, Lja/m;->c:Lja/m$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "property"

    .line 11
    invoke-static {v11, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Lda/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La6/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v1

    .line 13
    iget-object v11, v2, Lja/m;->b:Ll9/e;

    invoke-interface {v11}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lvb/i;

    .line 14
    sget-object v14, Lua/c;->b:Lua/c;

    invoke-interface {v11, v1, v14}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    move-result-object v11

    instance-of v14, v11, Lma/e;

    if-eqz v14, :cond_3

    check-cast v11, Lma/e;

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_4

    new-instance v11, Llb/b;

    sget-object v14, Lja/o;->h:Llb/c;

    invoke-direct {v11, v14, v1}, Llb/b;-><init>(Llb/c;Llb/f;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v2, Lja/m;->a:Lma/d0;

    invoke-virtual {v2, v11, v1}, Lma/d0;->a(Llb/b;Ljava/util/List;)Lma/e;

    move-result-object v1

    goto/16 :goto_8

    :cond_4
    move-object v1, v11

    goto/16 :goto_8

    .line 15
    :cond_5
    sget-object v1, La0/b;->l:La0/b;

    invoke-virtual {v8}, Lp4/g7;->a()Lma/b0;

    move-result-object v2

    invoke-interface {v2}, Lma/b0;->m()Lja/k;

    move-result-object v2

    invoke-static {v1, v11, v2}, La0/b;->n(La0/b;Llb/c;Lja/k;)Lma/e;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_8

    .line 16
    :cond_6
    sget-object v2, Lla/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lob/i;->g(Lma/j;)Llb/d;

    move-result-object v2

    .line 17
    sget-object v11, Lla/c;->k:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x3

    if-eq v12, v2, :cond_d

    if-eq v5, v4, :cond_d

    .line 18
    invoke-interface/range {p1 .. p1}, Lcb/j;->C()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lm9/t;->j1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcb/w;

    .line 19
    instance-of v14, v2, Lcb/a0;

    if-eqz v14, :cond_7

    check-cast v2, Lcb/a0;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcb/a0;->s()Lsa/e0;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-interface {v2}, Lcb/a0;->H()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    goto :goto_5

    .line 20
    :cond_9
    invoke-static {v1}, Lob/i;->g(Lma/j;)Llb/d;

    move-result-object v2

    sget-object v14, Lla/c;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llb/c;

    if-eqz v2, :cond_c

    .line 22
    invoke-static {v1}, Lsb/b;->e(Lma/j;)Lja/k;

    move-result-object v11

    invoke-virtual {v11, v2}, Lja/k;->j(Llb/c;)Lma/e;

    move-result-object v2

    .line 23
    invoke-interface {v2}, Lma/g;->i()Lcc/c1;

    move-result-object v2

    invoke-interface {v2}, Lcc/c1;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string v11, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lm9/t;->j1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/w0;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lma/w0;->I()Lcc/t1;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    if-eq v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_e

    goto :goto_7

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Given class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a read-only collection"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_d
    :goto_7
    invoke-static {v1}, La0/b;->j(Lma/e;)Lma/e;

    move-result-object v1

    :cond_e
    :goto_8
    if-nez v1, :cond_f

    .line 26
    iget-object v1, v8, Lp4/g7;->a:Ljava/lang/Object;

    .line 27
    check-cast v1, Lya/c;

    .line 28
    iget-object v1, v1, Lya/c;->k:Lya/h;

    .line 29
    invoke-interface {v1, v15}, Lya/h;->a(Lcb/g;)Lma/e;

    move-result-object v1

    :cond_f
    if-eqz v1, :cond_10

    invoke-interface {v1}, Lma/g;->i()Lcc/c1;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lab/d;->b(Lcb/j;)Lcc/c1;

    move-result-object v1

    :cond_11
    :goto_a
    move-object v11, v1

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class type should have a FQ name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_13
    instance-of v1, v2, Lcb/x;

    if-eqz v1, :cond_2f

    iget-object v1, v6, Lab/d;->b:Lya/j;

    check-cast v2, Lcb/x;

    invoke-interface {v1, v2}, Lya/j;->a(Lcb/x;)Lma/w0;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lma/w0;->i()Lcc/c1;

    move-result-object v1

    goto :goto_a

    :cond_14
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_15

    const/4 v1, 0x0

    return-object v1

    :cond_15
    const/4 v1, 0x3

    if-ne v12, v1, :cond_16

    const/4 v12, 0x0

    goto :goto_d

    :cond_16
    if-nez v13, :cond_17

    if-eq v5, v4, :cond_17

    const/4 v1, 0x1

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    :goto_c
    move v12, v1

    :goto_d
    if-eqz v0, :cond_18

    .line 30
    invoke-virtual/range {p3 .. p3}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v1

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1, v11}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface/range {p1 .. p1}, Lcb/j;->v()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v12, :cond_19

    invoke-virtual {v0, v4}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object v0

    return-object v0

    .line 31
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcb/j;->v()Z

    move-result v0

    const-string v1, "constructor.parameters"

    if-nez v0, :cond_1b

    invoke-interface/range {p1 .. p1}, Lcb/j;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Lcc/c1;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v0, 0x0

    goto :goto_10

    :cond_1b
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-interface {v11}, Lcc/c1;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    .line 32
    check-cast v2, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lma/w0;

    .line 33
    iget-object v0, v7, Lab/a;->e:Ljava/util/Set;

    const/4 v1, 0x0

    .line 34
    invoke-static {v15, v1, v0}, Lc5/y;->q(Lma/w0;Lcc/c1;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v15, v7}, Lcc/q1;->n(Lma/w0;Lcc/x;)Lcc/j1;

    move-result-object v0

    move-object/from16 p3, v14

    goto :goto_12

    :cond_1c
    new-instance v5, Lcc/i0;

    invoke-virtual {v8}, Lp4/g7;->b()Lbc/l;

    move-result-object v4

    new-instance v3, Lab/c;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v7, v3

    move-object/from16 v3, p2

    move-object v9, v4

    move-object v4, v11

    move-object/from16 p3, v14

    move-object v14, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lab/c;-><init>(Lab/d;Lma/w0;Lab/a;Lcc/c1;Lcb/j;)V

    invoke-direct {v14, v9, v7}, Lcc/i0;-><init>(Lbc/l;Lx9/a;)V

    invoke-interface/range {p1 .. p1}, Lcb/j;->v()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const/4 v1, 0x0

    move-object/from16 v0, p2

    .line 35
    invoke-static/range {v0 .. v5}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    move-result-object v0

    .line 36
    iget-object v1, v6, Lab/d;->d:Lcc/f1;

    iget-object v2, v6, Lab/d;->c:Lab/f;

    invoke-virtual {v2, v15, v0, v1, v14}, Lab/f;->q(Lma/w0;Lcc/x;Lcc/f1;Lcc/e0;)Lcc/i1;

    move-result-object v0

    :goto_12
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p3

    goto :goto_11

    .line 37
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcb/j;->C()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1f

    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/w0;

    new-instance v3, Lcc/k1;

    sget-object v5, Lec/h;->v:Lec/h;

    new-array v7, v4, [Ljava/lang/String;

    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    move-result-object v2

    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    move-result-object v2

    const-string v8, "p.name.asString()"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object v2

    invoke-direct {v3, v2}, Lcc/k1;-><init>(Lcc/e0;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1e
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1f

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcb/j;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lm9/t;->z1(Ljava/lang/Iterable;)Lm9/z;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lm9/z;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    move-object v5, v0

    check-cast v5, Lm9/a0;

    invoke-virtual {v5}, Lm9/a0;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v5}, Lm9/a0;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm9/y;

    .line 38
    iget v7, v5, Lm9/y;->a:I

    .line 39
    iget-object v5, v5, Lm9/y;->b:Ljava/lang/Object;

    check-cast v5, Lcb/w;

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lma/w0;

    const/4 v9, 0x2

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v9, v15, v15, v14, v13}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    move-result-object v4

    const-string v14, "parameter"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v14, v5, Lcb/a0;

    sget-object v15, Lcc/t1;->c:Lcc/t1;

    if-eqz v14, :cond_2c

    check-cast v5, Lcb/a0;

    invoke-interface {v5}, Lcb/a0;->s()Lsa/e0;

    move-result-object v14

    invoke-interface {v5}, Lcb/a0;->H()Z

    move-result v16

    if-eqz v16, :cond_20

    move-object v9, v3

    goto :goto_15

    :cond_20
    sget-object v16, Lcc/t1;->d:Lcc/t1;

    move-object/from16 v9, v16

    :goto_15
    if-eqz v14, :cond_2b

    .line 41
    invoke-interface {v7}, Lma/w0;->I()Lcc/t1;

    move-result-object v13

    if-ne v13, v15, :cond_21

    goto :goto_16

    :cond_21
    invoke-interface {v7}, Lma/w0;->I()Lcc/t1;

    move-result-object v13

    if-eq v9, v13, :cond_22

    const/4 v13, 0x1

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v13, 0x0

    :goto_17
    if-eqz v13, :cond_23

    goto/16 :goto_1d

    :cond_23
    const-string v4, "c"

    .line 42
    invoke-static {v8, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcb/a0;->s()Lsa/e0;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_18

    :cond_24
    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_2a

    new-instance v4, Lya/e;

    const/4 v13, 0x0

    .line 43
    invoke-direct {v4, v8, v5, v13}, Lya/e;-><init>(Lp4/g7;Lcb/d;Z)V

    .line 44
    invoke-virtual {v4}, Lya/e;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    move-object v5, v4

    check-cast v5, Llc/e$a;

    invoke-virtual {v5}, Llc/e$a;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual {v5}, Llc/e$a;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lna/c;

    .line 45
    sget-object v15, Lva/q;->b:[Llb/c;

    move-object/from16 p3, v0

    .line 46
    array-length v0, v15

    move-object/from16 v16, v2

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_26

    move/from16 v17, v0

    aget-object v0, v15, v2

    move-object/from16 v18, v3

    invoke-interface {v13}, Lna/c;->d()Llb/c;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_1b

    :cond_25
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    move-object/from16 v3, v18

    goto :goto_1a

    :cond_26
    move-object/from16 v18, v3

    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_27

    goto :goto_1c

    :cond_27
    move-object/from16 v0, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_19

    :cond_28
    move-object/from16 p3, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/4 v5, 0x0

    :goto_1c
    check-cast v5, Lna/c;

    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 47
    invoke-static {v4, v3, v3, v2, v0}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    move-result-object v0

    if-eqz v5, :cond_29

    invoke-virtual {v0}, Lcc/e0;->getAnnotations()Lna/h;

    move-result-object v2

    invoke-static {v2, v5}, Lm9/t;->l1(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    move-result-object v2

    invoke-static {v0, v2}, Lc5/y;->z(Lcc/e0;Lna/h;)Lcc/e0;

    move-result-object v0

    :cond_29
    invoke-static {v0, v9, v7}, Lc5/y;->k(Lcc/e0;Lcc/t1;Lma/w0;)Lcc/k1;

    move-result-object v0

    goto :goto_1e

    .line 48
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_1d
    move-object/from16 p3, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 49
    invoke-static {v7, v4}, Lcc/q1;->n(Lma/w0;Lcc/x;)Lcc/j1;

    move-result-object v0

    goto :goto_1e

    :cond_2c
    move-object/from16 p3, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    new-instance v0, Lcc/k1;

    invoke-virtual {v6, v5, v4}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 50
    :goto_1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    const/4 v4, 0x1

    goto/16 :goto_14

    :cond_2d
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_1f
    move-object v13, v0

    :cond_2e
    const/4 v0, 0x0

    .line 51
    invoke-static {v10, v11, v13, v12, v0}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown classifier kind: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcb/j;)Lcc/c1;
    .locals 2

    .line 1
    new-instance v0, Llb/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lcb/j;->w()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lab/d;->a:Lp4/g7;

    .line 15
    .line 16
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lya/c;

    .line 19
    .line 20
    iget-object v0, v0, Lya/c;->d:Leb/k;

    .line 21
    .line 22
    invoke-virtual {v0}, Leb/k;->c()Lyb/l;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v0, v0, Lyb/l;->l:Lma/d0;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Lma/d0;->a(Llb/b;Ljava/util/List;)Lma/e;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lma/g;->i()Lcc/c1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "c.components.deserialize\u2026istOf(0)).typeConstructor"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method public final c(Lcb/f;Lab/a;Z)Lcc/s1;
    .locals 7

    .line 1
    const-string v0, "arrayType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcb/f;->J()Lsa/e0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcb/u;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcb/u;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Lcb/u;->getType()Lja/l;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v2

    .line 28
    :goto_1
    new-instance v3, Lya/e;

    .line 29
    .line 30
    iget-object v4, p0, Lab/d;->a:Lp4/g7;

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-direct {v3, v4, p1, v5}, Lya/e;-><init>(Lp4/g7;Lcb/d;Z)V

    .line 34
    .line 35
    .line 36
    iget-boolean p1, p2, Lab/a;->d:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v4}, Lp4/g7;->a()Lma/b0;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Lma/b0;->m()Lja/k;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, v1}, Lja/k;->q(Lja/l;)Lcc/m0;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p3, "c.module.builtIns.getPri\u2026KotlinType(primitiveType)"

    .line 53
    .line 54
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcc/e0;->getAnnotations()Lna/h;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-static {v3, p3}, Lm9/t;->k1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p3}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p2, p3}, Lc5/y;->z(Lcc/e0;Lna/h;)Lcc/e0;

    .line 70
    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {p2, v5}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p2, p1}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :goto_2
    return-object p2

    .line 84
    :cond_3
    const/4 p2, 0x0

    .line 85
    const/4 v1, 0x6

    .line 86
    const/4 v6, 0x2

    .line 87
    invoke-static {v6, p1, p2, v2, v1}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p0, v0, p2}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    sget-object v0, Lcc/t1;->e:Lcc/t1;

    .line 96
    .line 97
    sget-object v1, Lcc/t1;->c:Lcc/t1;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    if-eqz p3, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move-object v0, v1

    .line 105
    :goto_3
    invoke-virtual {v4}, Lp4/g7;->a()Lma/b0;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1, v0, p2, v3}, Lja/k;->i(Lcc/t1;Lcc/e0;Lna/h;)Lcc/m0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_5
    invoke-virtual {v4}, Lp4/g7;->a()Lma/b0;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v1, p2, v3}, Lja/k;->i(Lcc/t1;Lcc/e0;Lna/h;)Lcc/m0;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v4}, Lp4/g7;->a()Lma/b0;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-interface {p3}, Lma/b0;->m()Lja/k;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p3, v0, p2, v3}, Lja/k;->i(Lcc/t1;Lcc/e0;Lna/h;)Lcc/m0;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2, v5}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {p1, p2}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1
.end method

.method public final e(Lcb/w;Lab/a;)Lcc/e0;
    .locals 3

    .line 1
    instance-of v0, p1, Lcb/u;

    .line 2
    .line 3
    iget-object v1, p0, Lab/d;->a:Lp4/g7;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcb/u;

    .line 8
    .line 9
    invoke-interface {p1}, Lcb/u;->getType()Lja/l;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lp4/g7;->a()Lma/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Lma/b0;->m()Lja/k;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Lja/k;->s(Lja/l;)Lcc/m0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lp4/g7;->a()Lma/b0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lja/k;->w()Lcc/m0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    const-string p2, "{\n                val pr\u2026ns.unitType\n            }"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    instance-of v0, p1, Lcb/j;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v0, :cond_8

    .line 51
    .line 52
    check-cast p1, Lcb/j;

    .line 53
    .line 54
    iget-boolean v0, p2, Lab/a;->d:Z

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget v0, p2, Lab/a;->a:I

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    if-eq v0, v1, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    :cond_2
    invoke-interface {p1}, Lcb/j;->v()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2, v1}, Lab/d;->a(Lcb/j;Lab/a;Lcc/m0;)Lcc/m0;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    move-object p1, p2

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v2, 0x3

    .line 82
    invoke-virtual {p2, v2}, Lab/a;->f(I)Lab/a;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, p1, v2, v1}, Lab/d;->a(Lcb/j;Lab/a;Lcc/m0;)Lcc/m0;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v2, 0x2

    .line 94
    invoke-virtual {p2, v2}, Lab/a;->f(I)Lab/a;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2, v1}, Lab/d;->a(Lcb/j;Lab/a;Lcc/m0;)Lcc/m0;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_6

    .line 103
    .line 104
    :cond_5
    :goto_1
    invoke-static {p1}, Lab/d;->d(Lcb/j;)Lec/f;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    if-eqz v0, :cond_7

    .line 110
    .line 111
    new-instance p1, Lab/h;

    .line 112
    .line 113
    invoke-direct {p1, v1, p2}, Lab/h;-><init>(Lcc/m0;Lcc/m0;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    invoke-static {v1, p2}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_2

    .line 122
    :cond_8
    instance-of v0, p1, Lcb/f;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    check-cast p1, Lcb/f;

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2, v2}, Lab/d;->c(Lcb/f;Lab/a;Z)Lcc/s1;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    instance-of v0, p1, Lcb/a0;

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    check-cast p1, Lcb/a0;

    .line 138
    .line 139
    invoke-interface {p1}, Lcb/a0;->s()Lsa/e0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    if-nez p1, :cond_c

    .line 151
    .line 152
    :cond_b
    invoke-virtual {v1}, Lp4/g7;->a()Lma/b0;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lja/k;->o()Lcc/m0;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :goto_2
    return-object p1

    .line 165
    :cond_c
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "Unsupported type: "

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p2
.end method
