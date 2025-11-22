.class public final Lwc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Led/h;->d:Led/h;

    const-string v0, "\"\\"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    const-string v0, "\t ,="

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    return-void
.end method

.method public static final a(Lrc/b0;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lrc/b0;->b:Lrc/x;

    .line 2
    .line 3
    iget-object v0, v0, Lrc/x;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "HEAD"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/16 v0, 0x64

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iget v3, p0, Lrc/b0;->e:I

    .line 19
    .line 20
    if-lt v3, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xc8

    .line 23
    .line 24
    if-lt v3, v0, :cond_2

    .line 25
    .line 26
    :cond_1
    const/16 v0, 0xcc

    .line 27
    .line 28
    if-eq v3, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x130

    .line 31
    .line 32
    if-eq v3, v0, :cond_2

    .line 33
    .line 34
    return v2

    .line 35
    :cond_2
    invoke-static {p0}, Lsc/c;->j(Lrc/b0;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const-wide/16 v5, -0x1

    .line 40
    .line 41
    cmp-long v0, v3, v5

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    const-string v0, "Transfer-Encoding"

    .line 46
    .line 47
    invoke-static {p0, v0}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "chunked"

    .line 52
    .line 53
    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return v1

    .line 61
    :cond_4
    :goto_0
    return v2
.end method

.method public static final b(Lrc/k;Lrc/r;Lrc/q;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headers"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lrc/k;->i0:Lb8/f;

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lrc/j;->n:Lrc/j$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v3, v0, Lrc/q;->a:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    .line 2
    invoke-virtual {v0, v7}, Lrc/q;->o(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Set-Cookie"

    invoke-static {v10, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v0, v7}, Lrc/q;->w(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lm9/v;->a:Lm9/v;

    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v4, "Collections.unmodifiableList(result)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v3

    .line 3
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_26

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "setCookie"

    .line 4
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 5
    sget-object v0, Lsc/c;->a:[B

    .line 6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3b

    invoke-static {v10, v13, v6, v0}, Lsc/c;->f(Ljava/lang/String;CII)I

    move-result v0

    const/16 v14, 0x3d

    invoke-static {v10, v14, v6, v0}, Lsc/c;->f(Ljava/lang/String;CII)I

    move-result v15

    if-ne v15, v0, :cond_6

    :cond_5
    :goto_3
    move-object/from16 v35, v3

    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_12

    .line 7
    :cond_6
    invoke-static {v6, v15, v10}, Lsc/c;->x(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v18, 0x1

    if-nez v16, :cond_7

    const/16 v16, 0x1

    goto :goto_5

    :cond_7
    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_5

    invoke-static/range {v17 .. v17}, Lsc/c;->l(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v15, v15, 0x1

    invoke-static {v15, v0, v10}, Lsc/c;->x(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsc/c;->l(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v6, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    const-wide/16 v19, -0x1

    move-wide/from16 v21, v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-wide v27, 0xe677d21fdbffL

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_6
    const-wide v31, 0x7fffffffffffffffL

    const-wide/high16 v33, -0x8000000000000000L

    if-ge v0, v6, :cond_16

    invoke-static {v10, v13, v0, v6}, Lsc/c;->f(Ljava/lang/String;CII)I

    move-result v15

    invoke-static {v10, v14, v0, v15}, Lsc/c;->f(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v0, v13, v10}, Lsc/c;->x(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v13, v15, :cond_a

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v15, v10}, Lsc/c;->x(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_a
    const-string v13, ""

    :goto_7
    const-string v14, "expires"

    invoke-static {v0, v14}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v13}, Lrc/j$a;->b(ILjava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v35, v3

    move-wide/from16 v27, v13

    goto :goto_9

    :catch_0
    move-object/from16 v35, v3

    goto/16 :goto_a

    :cond_b
    const-string v14, "max-age"

    invoke-static {v0, v14}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 9
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-gtz v0, :cond_c

    goto :goto_8

    :cond_c
    move-wide/from16 v33, v13

    :goto_8
    move-object/from16 v35, v3

    move-wide/from16 v21, v33

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v14, v0

    :try_start_2
    const-string v0, "-?\\d+"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v35, v3

    :try_start_3
    const-string v3, "compile(pattern)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "-"

    const/4 v3, 0x0

    .line 12
    invoke-static {v13, v0, v3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide/from16 v31, v33

    :cond_d
    move-wide/from16 v21, v31

    :goto_9
    const/16 v25, 0x1

    goto :goto_a

    .line 13
    :cond_e
    throw v14
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_f
    move-object/from16 v35, v3

    const-string v3, "domain"

    .line 14
    invoke-static {v0, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :try_start_4
    const-string v0, "."

    const/4 v3, 0x0

    .line 15
    invoke-static {v13, v0, v3}, Lmc/j;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    xor-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_11

    .line 16
    invoke-static {v0, v13}, Lmc/n;->U(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb8/f;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object/from16 v29, v0

    const/16 v26, 0x0

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed requirement."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_12
    const-string v3, "path"

    .line 17
    invoke-static {v0, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v30, v13

    goto :goto_a

    :cond_13
    const-string v3, "secure"

    invoke-static {v0, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v23, 0x1

    goto :goto_a

    :cond_14
    const-string v3, "httponly"

    invoke-static {v0, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v24, 0x1

    :catch_2
    :cond_15
    :goto_a
    add-int/lit8 v0, v15, 0x1

    move-object/from16 v3, v35

    const/16 v13, 0x3b

    const/16 v14, 0x3d

    goto/16 :goto_6

    :cond_16
    move-object/from16 v35, v3

    cmp-long v0, v21, v33

    if-nez v0, :cond_17

    move-wide/from16 v19, v33

    goto :goto_c

    :cond_17
    cmp-long v0, v21, v19

    if-eqz v0, :cond_1b

    const-wide v13, 0x20c49ba5e353f7L

    cmp-long v0, v21, v13

    if-gtz v0, :cond_18

    const/16 v0, 0x3e8

    int-to-long v13, v0

    mul-long v31, v21, v13

    :cond_18
    add-long v31, v11, v31

    cmp-long v0, v31, v11

    const-wide v10, 0xe677d21fdbffL

    if-ltz v0, :cond_1a

    cmp-long v0, v31, v10

    if-lez v0, :cond_19

    goto :goto_b

    :cond_19
    move-wide/from16 v19, v31

    goto :goto_c

    :cond_1a
    :goto_b
    move-wide/from16 v19, v10

    goto :goto_c

    :cond_1b
    move-wide/from16 v19, v27

    :goto_c
    iget-object v0, v2, Lrc/r;->e:Ljava/lang/String;

    move-object/from16 v3, v29

    if-nez v3, :cond_1c

    move-object v3, v0

    goto :goto_e

    .line 18
    :cond_1c
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v6, 0x0

    .line 19
    invoke-static {v0, v3, v6}, Lmc/j;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x2e

    if-ne v6, v10, :cond_1e

    .line 21
    sget-object v6, Lsc/c;->e:Lmc/d;

    invoke-virtual {v6, v0}, Lmc/d;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_d

    :cond_1e
    const/16 v18, 0x0

    :goto_d
    if-nez v18, :cond_1f

    goto :goto_f

    .line 22
    :cond_1f
    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v0, v6, :cond_20

    .line 23
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 24
    invoke-virtual {v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :goto_f
    goto/16 :goto_4

    :cond_20
    const-string v0, "/"

    move-object/from16 v6, v30

    const/4 v10, 0x0

    if-eqz v6, :cond_22

    .line 25
    invoke-static {v6, v0, v10}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_21

    goto :goto_10

    :cond_21
    move-object/from16 v22, v6

    goto :goto_11

    .line 26
    :cond_22
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lrc/r;->b()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x2f

    const/4 v12, 0x6

    invoke-static {v6, v11, v10, v12}, Lmc/n;->P(Ljava/lang/CharSequence;CII)I

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    move-object/from16 v22, v0

    :goto_11
    new-instance v0, Lrc/j;

    move-object/from16 v16, v0

    move-object/from16 v18, v5

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v26}, Lrc/j;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_13

    :goto_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_25

    if-nez v9, :cond_24

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    :cond_24
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v35

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_26
    move-object/from16 v35, v3

    if-eqz v9, :cond_27

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v0, "Collections.unmodifiableList(cookies)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_27
    move-object/from16 v3, v35

    .line 28
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    invoke-interface {v1, v2, v3}, Lrc/k;->d(Lrc/r;Ljava/util/List;)V

    return-void
.end method
