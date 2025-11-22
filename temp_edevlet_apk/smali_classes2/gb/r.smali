.class public final Lgb/r;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/r$b;,
        Lgb/r$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final n:Lgb/r;

.field public static final p:Lgb/r$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Lgb/r$c;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:B

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/r$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/r$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/r;->p:Lgb/r$a;

    .line 7
    .line 8
    new-instance v0, Lgb/r;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lgb/r;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lgb/r;->n:Lgb/r;

    .line 15
    .line 16
    iput v1, v0, Lgb/r;->d:I

    .line 17
    .line 18
    iput v1, v0, Lgb/r;->e:I

    .line 19
    .line 20
    iput-boolean v1, v0, Lgb/r;->f:Z

    .line 21
    .line 22
    sget-object v1, Lgb/r$c;->d:Lgb/r$c;

    .line 23
    .line 24
    iput-object v1, v0, Lgb/r;->g:Lgb/r$c;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lgb/r;->h:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lgb/r;->j:Ljava/util/List;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lgb/r;->k:I

    iput-byte p1, p0, Lgb/r;->l:B

    iput p1, p0, Lgb/r;->m:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/r;->b:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lmb/h$c;-><init>()V

    const/4 v3, -0x1

    iput v3, v1, Lgb/r;->k:I

    iput-byte v3, v1, Lgb/r;->l:B

    iput v3, v1, Lgb/r;->m:I

    const/4 v3, 0x0

    .line 2
    iput v3, v1, Lgb/r;->d:I

    iput v3, v1, Lgb/r;->e:I

    iput-boolean v3, v1, Lgb/r;->f:Z

    sget-object v4, Lgb/r$c;->d:Lgb/r$c;

    iput-object v4, v1, Lgb/r;->g:Lgb/r$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lgb/r;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lgb/r;->j:Ljava/util/List;

    .line 3
    new-instance v5, Lmb/c$b;

    invoke-direct {v5}, Lmb/c$b;-><init>()V

    const/4 v6, 0x1

    .line 4
    invoke-static {v5, v6}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    const/16 v10, 0x10

    const/16 v11, 0x20

    if-nez v8, :cond_14

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lmb/d;->n()I

    move-result v12

    if-eqz v12, :cond_11

    const/16 v13, 0x8

    if-eq v12, v13, :cond_10

    const/4 v14, 0x2

    if-eq v12, v10, :cond_f

    const/16 v15, 0x18

    if-eq v12, v15, :cond_d

    if-eq v12, v11, :cond_8

    const/16 v13, 0x2a

    if-eq v12, v13, :cond_6

    const/16 v13, 0x30

    if-eq v12, v13, :cond_4

    const/16 v13, 0x32

    if-eq v12, v13, :cond_1

    invoke-virtual {v1, v0, v7, v2, v12}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v12

    invoke-virtual {v0, v12}, Lmb/d;->d(I)I

    move-result v12

    and-int/lit8 v13, v9, 0x20

    if-eq v13, v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Lmb/d;->b()I

    move-result v13

    if-lez v13, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lgb/r;->j:Ljava/util/List;

    or-int/lit8 v9, v9, 0x20

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lmb/d;->b()I

    move-result v13

    if-lez v13, :cond_3

    iget-object v13, v1, Lgb/r;->j:Ljava/util/List;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v14

    .line 6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v12}, Lmb/d;->c(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v12, v9, 0x20

    if-eq v12, v11, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lgb/r;->j:Ljava/util/List;

    or-int/lit8 v9, v9, 0x20

    :cond_5
    iget-object v12, v1, Lgb/r;->j:Ljava/util/List;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v13

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    :cond_6
    and-int/lit8 v12, v9, 0x10

    if-eq v12, v10, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lgb/r;->h:Ljava/util/List;

    or-int/lit8 v9, v9, 0x10

    :cond_7
    iget-object v12, v1, Lgb/r;->h:Ljava/util/List;

    sget-object v13, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {v0, v13, v2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v13

    :goto_2
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    .line 9
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v15

    if-eqz v15, :cond_b

    if-eq v15, v6, :cond_a

    if-eq v15, v14, :cond_9

    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    move-object v14, v4

    goto :goto_3

    .line 10
    :cond_a
    sget-object v14, Lgb/r$c;->c:Lgb/r$c;

    goto :goto_3

    :cond_b
    sget-object v14, Lgb/r$c;->b:Lgb/r$c;

    :goto_3
    if-nez v14, :cond_c

    .line 11
    invoke-virtual {v7, v12}, Lmb/e;->v(I)V

    invoke-virtual {v7, v15}, Lmb/e;->v(I)V

    goto/16 :goto_0

    :cond_c
    iget v12, v1, Lgb/r;->c:I

    or-int/2addr v12, v13

    iput v12, v1, Lgb/r;->c:I

    iput-object v14, v1, Lgb/r;->g:Lgb/r$c;

    goto/16 :goto_0

    :cond_d
    iget v12, v1, Lgb/r;->c:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v1, Lgb/r;->c:I

    .line 12
    invoke-virtual/range {p1 .. p1}, Lmb/d;->l()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_e

    const/4 v12, 0x1

    goto :goto_4

    :cond_e
    const/4 v12, 0x0

    .line 13
    :goto_4
    iput-boolean v12, v1, Lgb/r;->f:Z

    goto/16 :goto_0

    :cond_f
    iget v12, v1, Lgb/r;->c:I

    or-int/2addr v12, v14

    iput v12, v1, Lgb/r;->c:I

    .line 14
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v12

    .line 15
    iput v12, v1, Lgb/r;->e:I

    goto/16 :goto_0

    :cond_10
    iget v12, v1, Lgb/r;->c:I

    or-int/2addr v12, v6

    iput v12, v1, Lgb/r;->c:I

    .line 16
    invoke-virtual/range {p1 .. p1}, Lmb/d;->k()I

    move-result v12

    .line 17
    iput v12, v1, Lgb/r;->d:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_0

    :goto_6
    :try_start_1
    new-instance v2, Lmb/j;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v1, v2, Lmb/j;->a:Lmb/p;

    .line 19
    throw v2

    :catch_1
    move-exception v0

    .line 20
    iput-object v1, v0, Lmb/j;->a:Lmb/p;

    .line 21
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 v2, v9, 0x10

    if-ne v2, v10, :cond_12

    iget-object v2, v1, Lgb/r;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lgb/r;->h:Ljava/util/List;

    :cond_12
    and-int/lit8 v2, v9, 0x20

    if-ne v2, v11, :cond_13

    iget-object v2, v1, Lgb/r;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lgb/r;->j:Ljava/util/List;

    :cond_13
    :try_start_2
    invoke-virtual {v7}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, v1, Lgb/r;->b:Lmb/c;

    throw v2

    :catch_2
    :goto_8
    invoke-virtual {v5}, Lmb/c$b;->c()Lmb/c;

    move-result-object v2

    iput-object v2, v1, Lgb/r;->b:Lmb/c;

    invoke-virtual/range {p0 .. p0}, Lmb/h$c;->m()V

    throw v0

    :cond_14
    and-int/lit8 v0, v9, 0x10

    if-ne v0, v10, :cond_15

    iget-object v0, v1, Lgb/r;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lgb/r;->h:Ljava/util/List;

    :cond_15
    and-int/lit8 v0, v9, 0x20

    if-ne v0, v11, :cond_16

    iget-object v0, v1, Lgb/r;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lgb/r;->j:Ljava/util/List;

    :cond_16
    :try_start_3
    invoke-virtual {v7}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, v1, Lgb/r;->b:Lmb/c;

    throw v2

    :catch_3
    :goto_9
    invoke-virtual {v5}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, v1, Lgb/r;->b:Lmb/c;

    invoke-virtual/range {p0 .. p0}, Lmb/h$c;->m()V

    return-void
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput v0, p0, Lgb/r;->k:I

    iput-byte v0, p0, Lgb/r;->l:B

    iput v0, p0, Lgb/r;->m:I

    .line 23
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 24
    iput-object p1, p0, Lgb/r;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/r;->l:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v0, p0, Lgb/r;->c:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x1

    .line 14
    .line 15
    if-ne v3, v1, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-nez v3, :cond_3

    .line 21
    .line 22
    iput-byte v2, p0, Lgb/r;->l:B

    .line 23
    .line 24
    return v2

    .line 25
    :cond_3
    const/4 v3, 0x2

    .line 26
    and-int/2addr v0, v3

    .line 27
    if-ne v0, v3, :cond_4

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_4
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-nez v0, :cond_5

    .line 33
    .line 34
    iput-byte v2, p0, Lgb/r;->l:B

    .line 35
    .line 36
    return v2

    .line 37
    :cond_5
    const/4 v0, 0x0

    .line 38
    :goto_2
    iget-object v3, p0, Lgb/r;->h:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ge v0, v3, :cond_7

    .line 45
    .line 46
    iget-object v3, p0, Lgb/r;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lgb/p;

    .line 53
    .line 54
    invoke-virtual {v3}, Lgb/p;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_6

    .line 59
    .line 60
    iput-byte v2, p0, Lgb/r;->l:B

    .line 61
    .line 62
    return v2

    .line 63
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_7
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    iput-byte v2, p0, Lgb/r;->l:B

    .line 73
    .line 74
    return v2

    .line 75
    :cond_8
    iput-byte v1, p0, Lgb/r;->l:B

    .line 76
    .line 77
    return v1
.end method

.method public final c()I
    .locals 5

    .line 1
    iget v0, p0, Lgb/r;->m:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lgb/r;->c:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lgb/r;->d:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lmb/e;->b(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v3, p0, Lgb/r;->c:I

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    and-int/2addr v3, v4

    .line 27
    if-ne v3, v4, :cond_2

    .line 28
    .line 29
    iget v3, p0, Lgb/r;->e:I

    .line 30
    .line 31
    invoke-static {v4, v3}, Lmb/e;->b(II)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    :cond_2
    iget v3, p0, Lgb/r;->c:I

    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    and-int/2addr v3, v4

    .line 40
    if-ne v3, v4, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-static {v3}, Lmb/e;->h(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v1

    .line 48
    add-int/2addr v0, v3

    .line 49
    :cond_3
    iget v1, p0, Lgb/r;->c:I

    .line 50
    .line 51
    const/16 v3, 0x8

    .line 52
    .line 53
    and-int/2addr v1, v3

    .line 54
    if-ne v1, v3, :cond_4

    .line 55
    .line 56
    iget-object v1, p0, Lgb/r;->g:Lgb/r$c;

    .line 57
    .line 58
    iget v1, v1, Lgb/r$c;->a:I

    .line 59
    .line 60
    invoke-static {v4, v1}, Lmb/e;->a(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_4
    const/4 v1, 0x0

    .line 66
    :goto_1
    iget-object v3, p0, Lgb/r;->h:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ge v1, v3, :cond_5

    .line 73
    .line 74
    iget-object v3, p0, Lgb/r;->h:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lmb/p;

    .line 81
    .line 82
    const/4 v4, 0x5

    .line 83
    invoke-static {v4, v3}, Lmb/e;->d(ILmb/p;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    add-int/2addr v0, v3

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/4 v1, 0x0

    .line 92
    :goto_2
    iget-object v3, p0, Lgb/r;->j:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ge v2, v3, :cond_6

    .line 99
    .line 100
    iget-object v3, p0, Lgb/r;->j:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v3}, Lmb/e;->c(I)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    add-int/2addr v1, v3

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    add-int/2addr v0, v1

    .line 121
    iget-object v2, p0, Lgb/r;->j:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_7

    .line 128
    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    invoke-static {v1}, Lmb/e;->c(I)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    add-int/2addr v0, v2

    .line 136
    :cond_7
    iput v1, p0, Lgb/r;->k:I

    .line 137
    .line 138
    invoke-virtual {p0}, Lmb/h$c;->j()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/2addr v1, v0

    .line 143
    iget-object v0, p0, Lgb/r;->b:Lmb/c;

    .line 144
    .line 145
    invoke-virtual {v0}, Lmb/c;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v0, v1

    .line 150
    iput v0, p0, Lgb/r;->m:I

    .line 151
    .line 152
    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/r;->c()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmb/h$c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lmb/h$c$a;-><init>(Lmb/h$c;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lgb/r;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lgb/r;->d:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lgb/r;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    and-int/2addr v1, v2

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lgb/r;->e:I

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v1, p0, Lgb/r;->c:I

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    and-int/2addr v1, v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    iget-boolean v1, p0, Lgb/r;->f:Z

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-virtual {p1, v4, v3}, Lmb/e;->x(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lmb/e;->q(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget v1, p0, Lgb/r;->c:I

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    and-int/2addr v1, v4

    .line 52
    if-ne v1, v4, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lgb/r;->g:Lgb/r$c;

    .line 55
    .line 56
    iget v1, v1, Lgb/r$c;->a:I

    .line 57
    .line 58
    invoke-virtual {p1, v2, v1}, Lmb/e;->l(II)V

    .line 59
    .line 60
    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lgb/r;->h:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v1, v2, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Lgb/r;->h:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lmb/p;

    .line 77
    .line 78
    const/4 v4, 0x5

    .line 79
    invoke-virtual {p1, v4, v2}, Lmb/e;->o(ILmb/p;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object v1, p0, Lgb/r;->j:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-lez v1, :cond_5

    .line 92
    .line 93
    const/16 v1, 0x32

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lmb/e;->v(I)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lgb/r;->k:I

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lmb/e;->v(I)V

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_1
    iget-object v1, p0, Lgb/r;->j:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ge v3, v1, :cond_6

    .line 110
    .line 111
    iget-object v1, p0, Lgb/r;->j:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p1, v1}, Lmb/e;->n(I)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    const/16 v1, 0x3e8

    .line 130
    .line 131
    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lgb/r;->b:Lmb/c;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/r;->n:Lgb/r;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/r$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/r$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/r$b;->n(Lgb/r;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/r$b;

    invoke-direct {v0}, Lgb/r$b;-><init>()V

    return-object v0
.end method
