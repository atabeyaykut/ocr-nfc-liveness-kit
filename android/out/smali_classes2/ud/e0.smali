.class public abstract Lud/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lud/d0;Ljava/lang/reflect/Method;)Lud/l;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lud/b0$a;

    invoke-direct {v2, v0, v1}, Lud/b0$a;-><init>(Lud/d0;Ljava/lang/reflect/Method;)V

    .line 2
    iget-object v3, v2, Lud/b0$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    const-string v8, "HEAD"

    iget-object v9, v2, Lud/b0$a;->b:Ljava/lang/reflect/Method;

    if-ge v6, v4, :cond_11

    aget-object v10, v3, v6

    .line 3
    instance-of v11, v10, Lxd/b;

    if-eqz v11, :cond_0

    check-cast v10, Lxd/b;

    invoke-interface {v10}, Lxd/b;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    goto :goto_2

    :cond_0
    instance-of v11, v10, Lxd/f;

    if-eqz v11, :cond_1

    check-cast v10, Lxd/f;

    invoke-interface {v10}, Lxd/f;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    goto :goto_2

    :cond_1
    instance-of v11, v10, Lxd/g;

    if-eqz v11, :cond_2

    check-cast v10, Lxd/g;

    invoke-interface {v10}, Lxd/g;->value()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    instance-of v8, v10, Lxd/n;

    if-eqz v8, :cond_3

    check-cast v10, Lxd/n;

    invoke-interface {v10}, Lxd/n;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PATCH"

    goto :goto_1

    :cond_3
    instance-of v8, v10, Lxd/o;

    if-eqz v8, :cond_4

    check-cast v10, Lxd/o;

    invoke-interface {v10}, Lxd/o;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "POST"

    goto :goto_1

    :cond_4
    instance-of v8, v10, Lxd/p;

    if-eqz v8, :cond_5

    check-cast v10, Lxd/p;

    invoke-interface {v10}, Lxd/p;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PUT"

    :goto_1
    invoke-virtual {v2, v9, v8, v7}, Lud/b0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_5
    instance-of v8, v10, Lxd/m;

    if-eqz v8, :cond_6

    check-cast v10, Lxd/m;

    invoke-interface {v10}, Lxd/m;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    :goto_2
    invoke-virtual {v2, v8, v7, v5}, Lud/b0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_6
    instance-of v8, v10, Lxd/h;

    if-eqz v8, :cond_7

    check-cast v10, Lxd/h;

    invoke-interface {v10}, Lxd/h;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lxd/h;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lxd/h;->hasBody()Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lud/b0$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_7
    instance-of v8, v10, Lxd/k;

    if-eqz v8, :cond_c

    check-cast v10, Lxd/k;

    invoke-interface {v10}, Lxd/k;->value()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    if-eqz v10, :cond_b

    .line 4
    new-instance v10, Lrc/q$a;

    invoke-direct {v10}, Lrc/q$a;-><init>()V

    array-length v11, v8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_a

    aget-object v13, v8, v12

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v7

    if-eq v14, v15, :cond_9

    invoke-virtual {v13, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Content-Type"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5
    :try_start_0
    sget-object v14, Lrc/t;->f:Lrc/t$a;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    move-result-object v14

    .line 6
    iput-object v14, v2, Lud/b0$a;->t:Lrc/t;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v13, v1, v5

    const-string v2, "Malformed content type: %s"

    invoke-static {v9, v0, v2, v1}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {v10, v15, v13}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_9
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v13, v0, v5

    const-string v1, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v2, 0x0

    .line 7
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 8
    throw v0

    :cond_a
    invoke-virtual {v10}, Lrc/q$a;->c()Lrc/q;

    move-result-object v7

    .line 9
    iput-object v7, v2, Lud/b0$a;->s:Lrc/q;

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    .line 10
    invoke-static {v9, v0, v2, v1}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 11
    throw v0

    :cond_c
    const/4 v8, 0x0

    instance-of v11, v10, Lxd/l;

    const-string v12, "Only one encoding annotation is allowed."

    if-eqz v11, :cond_e

    iget-boolean v10, v2, Lud/b0$a;->p:Z

    if-nez v10, :cond_d

    iput-boolean v7, v2, Lud/b0$a;->q:Z

    goto :goto_5

    :cond_d
    new-array v0, v5, [Ljava/lang/Object;

    .line 12
    invoke-static {v9, v8, v12, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 13
    throw v0

    :cond_e
    instance-of v10, v10, Lxd/e;

    if-eqz v10, :cond_10

    iget-boolean v10, v2, Lud/b0$a;->q:Z

    if-nez v10, :cond_f

    iput-boolean v7, v2, Lud/b0$a;->p:Z

    goto :goto_5

    :cond_f
    new-array v0, v5, [Ljava/lang/Object;

    .line 14
    invoke-static {v9, v8, v12, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 15
    throw v0

    :cond_10
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 16
    :cond_11
    iget-object v3, v2, Lud/b0$a;->n:Ljava/lang/String;

    if-eqz v3, :cond_7d

    iget-boolean v3, v2, Lud/b0$a;->o:Z

    if-nez v3, :cond_14

    iget-boolean v3, v2, Lud/b0$a;->q:Z

    if-nez v3, :cond_13

    iget-boolean v3, v2, Lud/b0$a;->p:Z

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v2, 0x0

    .line 17
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18
    throw v0

    :cond_13
    const/4 v0, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 19
    invoke-static {v9, v0, v2, v1}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 20
    throw v0

    :cond_14
    :goto_6
    iget-object v3, v2, Lud/b0$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    new-array v5, v4, [Lud/y;

    iput-object v5, v2, Lud/b0$a;->v:[Lud/y;

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    move-object v7, v2

    :goto_7
    if-ge v6, v4, :cond_68

    iget-object v10, v7, Lud/b0$a;->v:[Lud/y;

    iget-object v11, v7, Lud/b0$a;->e:[Ljava/lang/reflect/Type;

    aget-object v11, v11, v6

    aget-object v12, v3, v6

    if-ne v6, v5, :cond_15

    const/4 v13, 0x1

    goto :goto_8

    :cond_15
    const/4 v13, 0x0

    :goto_8
    if-eqz v12, :cond_65

    .line 21
    array-length v14, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v15, v7

    move-object/from16 v17, v16

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v14, :cond_64

    move/from16 v18, v4

    aget-object v4, v12, v3

    move/from16 v19, v5

    .line 22
    instance-of v5, v4, Lxd/y;

    move/from16 v20, v14

    const-string v14, "@Path parameters may not be used with @Url."

    const-class v1, Ljava/lang/String;

    if-eqz v5, :cond_1e

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v4, v15, Lud/b0$a;->m:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v15, Lud/b0$a;->i:Z

    if-nez v4, :cond_1c

    iget-boolean v4, v15, Lud/b0$a;->j:Z

    if-nez v4, :cond_1b

    iget-boolean v4, v15, Lud/b0$a;->k:Z

    if-nez v4, :cond_1a

    iget-boolean v4, v15, Lud/b0$a;->l:Z

    if-nez v4, :cond_19

    iget-object v4, v15, Lud/b0$a;->r:Ljava/lang/String;

    if-nez v4, :cond_18

    const/4 v4, 0x1

    iput-boolean v4, v15, Lud/b0$a;->m:Z

    const-class v4, Lrc/r;

    if-eq v11, v4, :cond_17

    if-eq v11, v1, :cond_17

    const-class v1, Ljava/net/URI;

    if-eq v11, v1, :cond_17

    instance-of v1, v11, Ljava/lang/Class;

    if-eqz v1, :cond_16

    move-object v1, v11

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.net.Uri"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_a

    :cond_16
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_a
    new-instance v1, Lud/y$n;

    invoke-direct {v1, v6, v9}, Lud/y$n;-><init>(ILjava/lang/reflect/Method;)V

    move-object/from16 v21, v8

    goto/16 :goto_b

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v15, Lud/b0$a;->n:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "@Url cannot be used with @%s URL"

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v0, 0x0

    const-string v1, "A @Url parameter must not come after a @QueryMap."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v0, 0x0

    const-string v1, "A @Url parameter must not come after a @QueryName."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v0, 0x0

    const-string v1, "A @Url parameter must not come after a @Query."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v14, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v0, 0x0

    const-string v1, "Multiple @Url method annotations found."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1e
    instance-of v5, v4, Lxd/s;

    move-object/from16 v21, v8

    iget-object v8, v15, Lud/b0$a;->a:Lud/d0;

    if-eqz v5, :cond_26

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v1, v15, Lud/b0$a;->j:Z

    if-nez v1, :cond_25

    iget-boolean v1, v15, Lud/b0$a;->k:Z

    if-nez v1, :cond_24

    iget-boolean v1, v15, Lud/b0$a;->l:Z

    if-nez v1, :cond_23

    iget-boolean v1, v15, Lud/b0$a;->m:Z

    if-nez v1, :cond_22

    iget-object v1, v15, Lud/b0$a;->r:Ljava/lang/String;

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, v15, Lud/b0$a;->i:Z

    check-cast v4, Lxd/s;

    invoke-interface {v4}, Lxd/s;->value()Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-object v5, Lud/b0$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v15, Lud/b0$a;->u:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 24
    invoke-virtual {v8, v11, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lud/y$i;

    iget-object v8, v15, Lud/b0$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {v4}, Lxd/s;->encoded()Z

    move-result v4

    invoke-direct {v5, v8, v6, v1, v4}, Lud/y$i;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Z)V

    move-object v1, v5

    :goto_b
    move-object/from16 v22, v10

    move/from16 v23, v13

    goto/16 :goto_d

    :cond_1f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    iget-object v2, v15, Lud/b0$a;->r:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_20
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lud/b0$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v1, v3, v0

    const-string v0, "@Path parameter name must match %s. Found: %s"

    invoke-static {v9, v6, v0, v3}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-object v2, v15, Lud/b0$a;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "@Path can only be used with relative url on @%s"

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v14, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @QueryMap."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_24
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @QueryName."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @Query."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_26
    instance-of v5, v4, Lxd/t;

    const-string v14, "<String>)"

    const-string v0, " must include generic type (e.g., "

    move-object/from16 v22, v10

    const-class v10, Ljava/lang/Iterable;

    if-eqz v5, :cond_2a

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v4, Lxd/t;

    invoke-interface {v4}, Lxd/t;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lxd/t;->encoded()Z

    move-result v4

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    move/from16 v23, v13

    const/4 v13, 0x1

    iput-boolean v13, v15, Lud/b0$a;->j:Z

    invoke-virtual {v10, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_28

    instance-of v10, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_27

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    invoke-static {v5, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$j;

    invoke-direct {v0, v1, v4}, Lud/y$j;-><init>(Ljava/lang/String;Z)V

    .line 27
    new-instance v1, Lud/w;

    invoke-direct {v1, v0}, Lud/w;-><init>(Lud/y;)V

    goto/16 :goto_d

    .line 28
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_28
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lud/b0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$j;

    invoke-direct {v0, v1, v4}, Lud/y$j;-><init>(Ljava/lang/String;Z)V

    .line 29
    new-instance v1, Lud/x;

    invoke-direct {v1, v0}, Lud/x;-><init>(Lud/y;)V

    goto/16 :goto_d

    .line 30
    :cond_29
    invoke-virtual {v8, v11, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$j;

    invoke-direct {v0, v1, v4}, Lud/y$j;-><init>(Ljava/lang/String;Z)V

    :goto_c
    move-object v1, v0

    goto/16 :goto_d

    :cond_2a
    move/from16 v23, v13

    instance-of v5, v4, Lxd/v;

    if-eqz v5, :cond_2e

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v4, Lxd/v;

    invoke-interface {v4}, Lxd/v;->encoded()Z

    move-result v1

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v15, Lud/b0$a;->k:Z

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2c

    instance-of v5, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2b

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$l;

    invoke-direct {v0, v1}, Lud/y$l;-><init>(Z)V

    .line 31
    new-instance v1, Lud/w;

    invoke-direct {v1, v0}, Lud/w;-><init>(Lud/y;)V

    goto :goto_d

    .line 32
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lud/b0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$l;

    invoke-direct {v0, v1}, Lud/y$l;-><init>(Z)V

    .line 33
    new-instance v1, Lud/x;

    invoke-direct {v1, v0}, Lud/x;-><init>(Lud/y;)V

    goto :goto_d

    .line 34
    :cond_2d
    invoke-virtual {v8, v11, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$l;

    invoke-direct {v0, v1}, Lud/y$l;-><init>(Z)V

    goto/16 :goto_c

    :goto_d
    move-object v0, v2

    move/from16 v24, v3

    goto/16 :goto_17

    :cond_2e
    instance-of v5, v4, Lxd/u;

    const-string v13, "Map must include generic types (e.g., Map<String, String>)"

    move/from16 v24, v3

    const-class v3, Ljava/util/Map;

    if-eqz v5, :cond_32

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x1

    iput-boolean v5, v15, Lud/b0$a;->l:Z

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v11, v0}, Lud/h0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_30

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v1, v3, :cond_2f

    invoke-static {v5, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$k;

    check-cast v4, Lxd/u;

    invoke-interface {v4}, Lxd/u;->encoded()Z

    move-result v1

    invoke-direct {v0, v9, v6, v1}, Lud/y$k;-><init>(Ljava/lang/reflect/Method;IZ)V

    goto/16 :goto_f

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v13, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v0, 0x0

    const-string v1, "@QueryMap parameter type must be Map."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_32
    instance-of v5, v4, Lxd/i;

    if-eqz v5, :cond_36

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    check-cast v4, Lxd/i;

    invoke-interface {v4}, Lxd/i;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_34

    instance-of v4, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_33

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$d;

    invoke-direct {v0, v1}, Lud/y$d;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lud/w;

    invoke-direct {v1, v0}, Lud/w;-><init>(Lud/y;)V

    goto :goto_e

    .line 36
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_34
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lud/b0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$d;

    invoke-direct {v0, v1}, Lud/y$d;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lud/x;

    invoke-direct {v1, v0}, Lud/x;-><init>(Lud/y;)V

    :goto_e
    move-object v0, v1

    goto/16 :goto_f

    .line 38
    :cond_35
    invoke-virtual {v8, v11, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$d;

    invoke-direct {v0, v1}, Lud/y$d;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_36
    instance-of v5, v4, Lxd/j;

    if-eqz v5, :cond_3b

    const-class v0, Lrc/q;

    if-ne v11, v0, :cond_37

    new-instance v0, Lud/y$f;

    invoke-direct {v0, v6, v9}, Lud/y$f;-><init>(ILjava/lang/reflect/Method;)V

    goto/16 :goto_f

    :cond_37
    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {v11, v0}, Lud/h0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_39

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v1, v3, :cond_38

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$e;

    invoke-direct {v0, v9, v6}, Lud/y$e;-><init>(Ljava/lang/reflect/Method;I)V

    goto/16 :goto_f

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@HeaderMap keys must be of type String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v13, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v0, 0x0

    const-string v1, "@HeaderMap parameter type must be Map."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3b
    instance-of v5, v4, Lxd/c;

    if-eqz v5, :cond_40

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v1, v15, Lud/b0$a;->p:Z

    if-eqz v1, :cond_3f

    check-cast v4, Lxd/c;

    invoke-interface {v4}, Lxd/c;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lxd/c;->encoded()Z

    move-result v3

    const/4 v4, 0x1

    iput-boolean v4, v15, Lud/b0$a;->f:Z

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3d

    instance-of v5, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3c

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$b;

    invoke-direct {v0, v1, v3}, Lud/y$b;-><init>(Ljava/lang/String;Z)V

    .line 39
    new-instance v1, Lud/w;

    invoke-direct {v1, v0}, Lud/w;-><init>(Lud/y;)V

    goto/16 :goto_e

    .line 40
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lud/b0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$b;

    invoke-direct {v0, v1, v3}, Lud/y$b;-><init>(Ljava/lang/String;Z)V

    .line 41
    new-instance v1, Lud/x;

    invoke-direct {v1, v0}, Lud/x;-><init>(Lud/y;)V

    goto/16 :goto_e

    .line 42
    :cond_3e
    invoke-virtual {v8, v11, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lud/y$b;

    invoke-direct {v0, v1, v3}, Lud/y$b;-><init>(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_3f
    const-string v0, "@Field parameters can only be used with form encoding."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_40
    instance-of v5, v4, Lxd/d;

    if-eqz v5, :cond_45

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v15, Lud/b0$a;->p:Z

    if-eqz v0, :cond_44

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {v11, v0}, Lud/h0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_42

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v1, v3, :cond_41

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lud/d0;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    iput-boolean v1, v15, Lud/b0$a;->f:Z

    new-instance v0, Lud/y$c;

    check-cast v4, Lxd/d;

    invoke-interface {v4}, Lxd/d;->encoded()Z

    move-result v1

    invoke-direct {v0, v9, v6, v1}, Lud/y$c;-><init>(Ljava/lang/reflect/Method;IZ)V

    :goto_f
    move-object v1, v0

    goto/16 :goto_10

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v13, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v0, 0x0

    const-string v1, "@FieldMap parameter type must be Map."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v0, 0x0

    const-string v1, "@FieldMap parameters can only be used with form encoding."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_45
    instance-of v5, v4, Lxd/q;

    move-object/from16 v25, v13

    iget-object v13, v15, Lud/b0$a;->c:[Ljava/lang/annotation/Annotation;

    move-object/from16 v26, v1

    const-class v1, Lrc/u$b;

    if-eqz v5, :cond_54

    invoke-virtual {v7, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v3, v15, Lud/b0$a;->q:Z

    if-eqz v3, :cond_53

    check-cast v4, Lxd/q;

    const/4 v3, 0x1

    iput-boolean v3, v15, Lud/b0$a;->g:Z

    invoke-interface {v4}, Lxd/q;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4c

    invoke-virtual {v10, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Lud/y$m;->a:Lud/y$m;

    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v3, :cond_48

    instance-of v3, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_47

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 43
    new-instance v0, Lud/w;

    invoke-direct {v0, v4}, Lud/w;-><init>(Lud/y;)V

    goto/16 :goto_f

    :cond_46
    new-array v0, v3, [Ljava/lang/Object;

    .line 44
    invoke-static {v9, v6, v8, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_48
    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 45
    new-instance v0, Lud/x;

    invoke-direct {v0, v4}, Lud/x;-><init>(Lud/y;)V

    goto/16 :goto_f

    :cond_49
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {v9, v6, v8, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4a
    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object v1, v4

    :goto_10
    move-object v0, v2

    goto/16 :goto_17

    :cond_4b
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v8, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4c
    const/4 v7, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const-string v25, "Content-Disposition"

    aput-object v25, v15, v7

    const-string v7, "form-data; name=\""

    move-object/from16 v27, v2

    const-string v2, "\""

    .line 47
    invoke-static {v7, v3, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v15, v3

    const-string v2, "Content-Transfer-Encoding"

    const/4 v3, 0x2

    aput-object v2, v15, v3

    const/4 v2, 0x3

    .line 48
    invoke-interface {v4}, Lxd/q;->encoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 49
    sget-object v2, Lrc/q;->b:Lrc/q$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lrc/q$b;->c([Ljava/lang/String;)Lrc/q;

    move-result-object v2

    .line 50
    invoke-virtual {v10, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v3, :cond_4f

    instance-of v3, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_4e

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v8, v0, v12, v13}, Lud/d0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v0

    new-instance v1, Lud/y$g;

    invoke-direct {v1, v9, v6, v2, v0}, Lud/y$g;-><init>(Ljava/lang/reflect/Method;ILrc/q;Lud/f;)V

    .line 51
    new-instance v0, Lud/w;

    invoke-direct {v0, v1}, Lud/w;-><init>(Lud/y;)V

    goto :goto_11

    :cond_4d
    new-array v0, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {v9, v6, v4, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4f
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lud/b0$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v8, v0, v12, v13}, Lud/d0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v0

    new-instance v1, Lud/y$g;

    invoke-direct {v1, v9, v6, v2, v0}, Lud/y$g;-><init>(Ljava/lang/reflect/Method;ILrc/q;Lud/f;)V

    .line 53
    new-instance v0, Lud/x;

    invoke-direct {v0, v1}, Lud/x;-><init>(Lud/y;)V

    :goto_11
    move-object v1, v0

    :goto_12
    move-object/from16 v0, v27

    goto/16 :goto_16

    :cond_50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {v9, v6, v4, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_51
    const/4 v0, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v8, v11, v12, v13}, Lud/d0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v0

    new-instance v1, Lud/y$g;

    invoke-direct {v1, v9, v6, v2, v0}, Lud/y$g;-><init>(Ljava/lang/reflect/Method;ILrc/q;Lud/f;)V

    goto :goto_12

    :cond_52
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v4, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_53
    const/4 v0, 0x0

    const-string v1, "@Part parameters can only be used with multipart encoding."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_54
    move-object/from16 v27, v2

    instance-of v0, v4, Lxd/r;

    if-eqz v0, :cond_5a

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v2, v0, Lud/b0$a;->q:Z

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    iput-boolean v2, v0, Lud/b0$a;->g:Z

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {v11, v5}, Lud/h0;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_57

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    invoke-static {v5, v3}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    move-object/from16 v7, v26

    if-ne v7, v5, :cond_56

    invoke-static {v2, v3}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v8, v2, v12, v13}, Lud/d0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v1

    check-cast v4, Lxd/r;

    new-instance v2, Lud/y$h;

    invoke-interface {v4}, Lxd/r;->encoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v6, v1, v3}, Lud/y$h;-><init>(Ljava/lang/reflect/Method;ILud/f;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_55
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_56
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@PartMap keys must be of type String: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v1, v25

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v0, 0x0

    const-string v1, "@PartMap parameter type must be Map."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v0, 0x0

    const-string v1, "@PartMap parameters can only be used with multipart encoding."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5a
    move-object/from16 v0, v27

    instance-of v1, v4, Lxd/a;

    if-eqz v1, :cond_5d

    invoke-virtual {v0, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    iget-boolean v1, v0, Lud/b0$a;->p:Z

    if-nez v1, :cond_5c

    iget-boolean v1, v0, Lud/b0$a;->q:Z

    if-nez v1, :cond_5c

    iget-boolean v1, v0, Lud/b0$a;->h:Z

    if-nez v1, :cond_5b

    :try_start_1
    invoke-virtual {v8, v11, v12, v13}, Lud/d0;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lud/b0$a;->h:Z

    new-instance v2, Lud/y$a;

    invoke-direct {v2, v9, v6, v1}, Lud/y$a;-><init>(Ljava/lang/reflect/Method;ILud/f;)V

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    const-string v2, "Unable to create @Body converter for %s"

    invoke-static {v9, v1, v6, v2, v0}, Lud/h0;->l(Ljava/lang/reflect/Method;Ljava/lang/Exception;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5b
    const/4 v0, 0x0

    const-string v1, "Multiple @Body method annotations found."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5c
    const/4 v0, 0x0

    const-string v1, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v6, v1, v0}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5d
    instance-of v1, v4, Lxd/x;

    if-eqz v1, :cond_61

    invoke-virtual {v0, v6, v11}, Lud/b0$a;->c(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v6, -0x1

    :goto_13
    if-ltz v2, :cond_60

    iget-object v3, v0, Lud/b0$a;->v:[Lud/y;

    aget-object v3, v3, v2

    instance-of v4, v3, Lud/y$o;

    if-eqz v4, :cond_5f

    check-cast v3, Lud/y$o;

    iget-object v3, v3, Lud/y$o;->a:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_14

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@Tag type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is duplicate of parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and would always overwrite its value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5f
    :goto_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_60
    new-instance v2, Lud/y$o;

    invoke-direct {v2, v1}, Lud/y$o;-><init>(Ljava/lang/Class;)V

    :goto_15
    move-object v1, v2

    goto :goto_16

    :cond_61
    const/4 v1, 0x0

    :goto_16
    move-object v7, v0

    move-object v15, v7

    :goto_17
    if-nez v1, :cond_62

    goto :goto_18

    :cond_62
    if-nez v17, :cond_63

    move-object/from16 v17, v1

    :goto_18
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v1, p1

    move-object v2, v0

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v14, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v13, v23

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_63
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_64
    move-object v0, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move/from16 v23, v13

    move-object v1, v7

    move-object v7, v15

    goto :goto_19

    :cond_65
    move-object v0, v2

    move-object/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move/from16 v23, v13

    const/16 v17, 0x0

    move-object v1, v7

    :goto_19
    if-nez v17, :cond_67

    if-eqz v23, :cond_66

    :try_start_2
    invoke-static {v11}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lp9/d;

    if-ne v2, v3, :cond_66

    const/4 v2, 0x1

    iput-boolean v2, v7, Lud/b0$a;->w:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v17, 0x0

    goto :goto_1a

    :catch_2
    :cond_66
    const-string v0, "No Retrofit annotation found."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v6, v0, v1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 56
    :cond_67
    :goto_1a
    aput-object v17, v22, v6

    add-int/lit8 v6, v6, 0x1

    move-object v2, v0

    move-object v7, v1

    move-object/from16 v3, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v8, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_68
    move-object/from16 v21, v8

    iget-object v0, v7, Lud/b0$a;->r:Ljava/lang/String;

    if-nez v0, :cond_6a

    iget-boolean v0, v7, Lud/b0$a;->m:Z

    if-eqz v0, :cond_69

    goto :goto_1b

    :cond_69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v7, Lud/b0$a;->n:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    const/4 v2, 0x0

    .line 57
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 58
    throw v0

    :cond_6a
    :goto_1b
    iget-boolean v0, v7, Lud/b0$a;->p:Z

    if-nez v0, :cond_6c

    iget-boolean v1, v7, Lud/b0$a;->q:Z

    if-nez v1, :cond_6c

    iget-boolean v1, v7, Lud/b0$a;->o:Z

    if-nez v1, :cond_6c

    iget-boolean v1, v7, Lud/b0$a;->h:Z

    if-nez v1, :cond_6b

    goto :goto_1c

    :cond_6b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    const/4 v2, 0x0

    .line 59
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 60
    throw v0

    :cond_6c
    :goto_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6e

    iget-boolean v0, v7, Lud/b0$a;->f:Z

    if-eqz v0, :cond_6d

    goto :goto_1d

    :cond_6d
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    .line 61
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 62
    throw v0

    :cond_6e
    :goto_1d
    iget-boolean v0, v7, Lud/b0$a;->q:Z

    if-eqz v0, :cond_70

    iget-boolean v0, v7, Lud/b0$a;->g:Z

    if-eqz v0, :cond_6f

    goto :goto_1e

    :cond_6f
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    .line 63
    invoke-static {v9, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 64
    throw v0

    :cond_70
    :goto_1e
    new-instance v0, Lud/b0;

    invoke-direct {v0, v7}, Lud/b0;-><init>(Lud/b0$a;)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lud/h0;->h(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_7c

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7b

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget-boolean v2, v0, Lud/b0;->k:Z

    const-class v3, Lud/c0;

    if-eqz v2, :cond_74

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 67
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    instance-of v6, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_71

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v5

    .line 68
    :cond_71
    invoke-static {v4}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v3, :cond_72

    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_72

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v4}, Lud/h0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_1f

    :cond_72
    const/4 v6, 0x0

    :goto_1f
    new-instance v7, Lud/h0$b;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/reflect/Type;

    aput-object v4, v9, v5

    const-class v4, Lud/b;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v4, v9}, Lud/h0$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 69
    const-class v4, Lud/f0;

    invoke-static {v1, v4}, Lud/h0;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_20

    :cond_73
    array-length v4, v1

    add-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    sget-object v9, Lud/g0;->a:Lud/g0;

    aput-object v9, v4, v5

    array-length v9, v1

    invoke-static {v1, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    goto :goto_20

    .line 70
    :cond_74
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v6, 0x0

    :goto_20
    move-object/from16 v4, p0

    .line 71
    :try_start_3
    invoke-virtual {v4, v7, v1}, Lud/d0;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lud/c;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 72
    invoke-interface {v1}, Lud/c;->a()Ljava/lang/reflect/Type;

    move-result-object v5

    const-class v7, Lrc/b0;

    if-eq v5, v7, :cond_7a

    if-eq v5, v3, :cond_79

    iget-object v3, v0, Lud/b0;->c:Ljava/lang/String;

    move-object/from16 v7, v21

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const-class v3, Ljava/lang/Void;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_21

    :cond_75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void as response type."

    const/4 v2, 0x0

    move-object/from16 v3, p1

    .line 73
    invoke-static {v3, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 74
    throw v0

    :cond_76
    :goto_21
    move-object/from16 v3, p1

    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    :try_start_4
    invoke-virtual {v4, v5, v7}, Lud/d0;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lud/f;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    iget-object v4, v4, Lud/d0;->b:Lrc/d$a;

    if-nez v2, :cond_77

    new-instance v2, Lud/l$a;

    invoke-direct {v2, v0, v4, v3, v1}, Lud/l$a;-><init>(Lud/b0;Lrc/d$a;Lud/f;Lud/c;)V

    goto :goto_22

    :cond_77
    if-eqz v6, :cond_78

    new-instance v2, Lud/l$c;

    invoke-direct {v2, v0, v4, v3, v1}, Lud/l$c;-><init>(Lud/b0;Lrc/d$a;Lud/f;Lud/c;)V

    goto :goto_22

    :cond_78
    new-instance v2, Lud/l$b;

    invoke-direct {v2, v0, v4, v3, v1}, Lud/l$b;-><init>(Lud/b0;Lrc/d$a;Lud/f;Lud/c;)V

    :goto_22
    return-object v2

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const-string v2, "Unable to create converter for %s"

    .line 77
    invoke-static {v3, v1, v2, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_79
    move-object/from16 v3, p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Response must include generic type (e.g., Response<String>)"

    const/4 v2, 0x0

    .line 78
    invoke-static {v3, v2, v1, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 79
    throw v0

    :cond_7a
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lud/h0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 80
    invoke-static {v3, v2, v0, v1}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 81
    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v0

    const-string v0, "Unable to create call adapter for %s"

    .line 82
    invoke-static {v3, v1, v0, v2}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7b
    move-object/from16 v3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Service methods cannot return void."

    .line 83
    invoke-static {v3, v1, v2, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 84
    throw v0

    :cond_7c
    move-object/from16 v3, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 85
    invoke-static {v3, v2, v0, v4}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 86
    throw v0

    :cond_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    .line 87
    invoke-static {v9, v1, v2, v0}, Lud/h0;->j(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 88
    throw v0
.end method


# virtual methods
.method public abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
