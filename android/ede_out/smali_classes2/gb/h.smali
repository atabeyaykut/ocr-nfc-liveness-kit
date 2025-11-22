.class public final Lgb/h;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lgb/h;

.field public static final y:Lgb/h$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lgb/p;

.field public h:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/r;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lgb/p;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/t;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lgb/s;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lgb/d;

.field public v:B

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgb/h$a;

    invoke-direct {v0}, Lgb/h$a;-><init>()V

    sput-object v0, Lgb/h;->y:Lgb/h$a;

    new-instance v0, Lgb/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/h;-><init>(I)V

    sput-object v0, Lgb/h;->x:Lgb/h;

    invoke-virtual {v0}, Lgb/h;->q()V

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

    iput p1, p0, Lgb/h;->p:I

    iput-byte p1, p0, Lgb/h;->v:B

    iput p1, p0, Lgb/h;->w:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/h;->b:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgb/h;->p:I

    iput-byte v0, p0, Lgb/h;->v:B

    iput v0, p0, Lgb/h;->w:I

    invoke-virtual {p0}, Lgb/h;->q()V

    .line 2
    new-instance v0, Lmb/c$b;

    invoke-direct {v0}, Lmb/c$b;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x400

    const/16 v6, 0x100

    const/16 v7, 0x20

    const/16 v8, 0x1000

    const/16 v9, 0x200

    if-nez v3, :cond_15

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v10

    const/4 v11, 0x0

    sparse-switch v10, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v10}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v5

    goto/16 :goto_9

    :sswitch_0
    iget v10, p0, Lgb/h;->c:I

    and-int/2addr v10, v6

    if-ne v10, v6, :cond_1

    iget-object v10, p0, Lgb/h;->t:Lgb/d;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v11, Lgb/d$b;

    invoke-direct {v11}, Lgb/d$b;-><init>()V

    .line 5
    invoke-virtual {v11, v10}, Lgb/d$b;->l(Lgb/d;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :catch_0
    move-exception p1

    goto/16 :goto_a

    .line 6
    :cond_1
    :goto_1
    sget-object v10, Lgb/d;->f:Lgb/d$a;

    invoke-virtual {p1, v10, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v10

    check-cast v10, Lgb/d;

    iput-object v10, p0, Lgb/h;->t:Lgb/d;

    if-eqz v11, :cond_2

    invoke-virtual {v11, v10}, Lgb/d$b;->l(Lgb/d;)V

    invoke-virtual {v11}, Lgb/d$b;->k()Lgb/d;

    move-result-object v10

    iput-object v10, p0, Lgb/h;->t:Lgb/d;

    :cond_2
    iget v10, p0, Lgb/h;->c:I

    or-int/2addr v10, v6

    iput v10, p0, Lgb/h;->c:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    invoke-virtual {p1, v10}, Lmb/d;->d(I)I

    move-result v10

    and-int/lit16 v11, v4, 0x1000

    if-eq v11, v8, :cond_3

    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v11

    if-lez v11, :cond_3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lgb/h;->s:Ljava/util/List;

    or-int/lit16 v4, v4, 0x1000

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v11, p0, Lgb/h;->s:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v12

    .line 8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_2
    and-int/lit16 v10, v4, 0x1000

    if-eq v10, v8, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lgb/h;->s:Ljava/util/List;

    or-int/lit16 v4, v4, 0x1000

    :cond_4
    iget-object v10, p0, Lgb/h;->s:Ljava/util/List;

    .line 9
    :goto_3
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v11

    goto :goto_5

    .line 10
    :sswitch_3
    iget v10, p0, Lgb/h;->c:I

    const/16 v12, 0x80

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_5

    iget-object v10, p0, Lgb/h;->r:Lgb/s;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v10}, Lgb/s;->i(Lgb/s;)Lgb/s$b;

    move-result-object v11

    .line 12
    :cond_5
    sget-object v10, Lgb/s;->h:Lgb/s$a;

    invoke-virtual {p1, v10, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v10

    check-cast v10, Lgb/s;

    iput-object v10, p0, Lgb/h;->r:Lgb/s;

    if-eqz v11, :cond_f

    invoke-virtual {v11, v10}, Lgb/s$b;->l(Lgb/s;)V

    invoke-virtual {v11}, Lgb/s$b;->k()Lgb/s;

    move-result-object v10

    iput-object v10, p0, Lgb/h;->r:Lgb/s;

    goto/16 :goto_8

    :sswitch_4
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    invoke-virtual {p1, v10}, Lmb/d;->d(I)I

    move-result v10

    and-int/lit16 v11, v4, 0x200

    if-eq v11, v9, :cond_6

    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v11

    if-lez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lgb/h;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v11, p0, Lgb/h;->n:Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v12

    .line 14
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v10}, Lmb/d;->c(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit16 v10, v4, 0x200

    if-eq v10, v9, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lgb/h;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    :cond_8
    iget-object v10, p0, Lgb/h;->n:Ljava/util/List;

    goto :goto_3

    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_7

    :sswitch_6
    and-int/lit16 v10, v4, 0x100

    if-eq v10, v6, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lgb/h;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_9
    iget-object v10, p0, Lgb/h;->m:Ljava/util/List;

    sget-object v11, Lgb/p;->x:Lgb/p$a;

    goto/16 :goto_6

    :sswitch_7
    iget v10, p0, Lgb/h;->c:I

    or-int/2addr v10, v1

    iput v10, p0, Lgb/h;->c:I

    .line 15
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 16
    iput v10, p0, Lgb/h;->d:I

    goto/16 :goto_0

    :sswitch_8
    iget v10, p0, Lgb/h;->c:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lgb/h;->c:I

    .line 17
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 18
    iput v10, p0, Lgb/h;->l:I

    goto/16 :goto_0

    :sswitch_9
    iget v10, p0, Lgb/h;->c:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lgb/h;->c:I

    .line 19
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 20
    iput v10, p0, Lgb/h;->h:I

    goto/16 :goto_0

    :sswitch_a
    and-int/lit16 v10, v4, 0x400

    if-eq v10, v5, :cond_a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lgb/h;->q:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    :cond_a
    iget-object v10, p0, Lgb/h;->q:Ljava/util/List;

    sget-object v11, Lgb/t;->n:Lgb/t$a;

    goto :goto_6

    :sswitch_b
    iget v10, p0, Lgb/h;->c:I

    and-int/2addr v10, v7

    if-ne v10, v7, :cond_b

    iget-object v10, p0, Lgb/h;->k:Lgb/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v10}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v11

    .line 22
    :cond_b
    sget-object v10, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v10, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v10

    check-cast v10, Lgb/p;

    iput-object v10, p0, Lgb/h;->k:Lgb/p;

    if-eqz v11, :cond_c

    invoke-virtual {v11, v10}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v11}, Lgb/p$c;->l()Lgb/p;

    move-result-object v10

    iput-object v10, p0, Lgb/h;->k:Lgb/p;

    :cond_c
    iget v10, p0, Lgb/h;->c:I

    or-int/2addr v10, v7

    iput v10, p0, Lgb/h;->c:I

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v10, v4, 0x20

    if-eq v10, v7, :cond_d

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lgb/h;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    :cond_d
    iget-object v10, p0, Lgb/h;->j:Ljava/util/List;

    sget-object v11, Lgb/r;->p:Lgb/r$a;

    :goto_6
    invoke-virtual {p1, v11, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v11

    :goto_7
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    iget v10, p0, Lgb/h;->c:I

    const/16 v12, 0x8

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_e

    iget-object v10, p0, Lgb/h;->g:Lgb/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v10}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v11

    .line 24
    :cond_e
    sget-object v10, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v10, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v10

    check-cast v10, Lgb/p;

    iput-object v10, p0, Lgb/h;->g:Lgb/p;

    if-eqz v11, :cond_f

    invoke-virtual {v11, v10}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v11}, Lgb/p$c;->l()Lgb/p;

    move-result-object v10

    iput-object v10, p0, Lgb/h;->g:Lgb/p;

    :cond_f
    :goto_8
    iget v10, p0, Lgb/h;->c:I

    or-int/2addr v10, v12

    iput v10, p0, Lgb/h;->c:I

    goto/16 :goto_0

    :sswitch_e
    iget v10, p0, Lgb/h;->c:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lgb/h;->c:I

    .line 25
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 26
    iput v10, p0, Lgb/h;->f:I

    goto/16 :goto_0

    :sswitch_f
    iget v10, p0, Lgb/h;->c:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lgb/h;->c:I

    .line 27
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 28
    iput v10, p0, Lgb/h;->e:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_9
    if-nez v5, :cond_0

    :sswitch_10
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_a
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 30
    throw p2

    :catch_1
    move-exception p1

    .line 31
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v7, :cond_10

    iget-object p2, p0, Lgb/h;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->j:Ljava/util/List;

    :cond_10
    and-int/lit16 p2, v4, 0x400

    if-ne p2, v5, :cond_11

    iget-object p2, p0, Lgb/h;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->q:Ljava/util/List;

    :cond_11
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v6, :cond_12

    iget-object p2, p0, Lgb/h;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->m:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v4, 0x200

    if-ne p2, v9, :cond_13

    iget-object p2, p0, Lgb/h;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->n:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v4, 0x1000

    if-ne p2, v8, :cond_14

    iget-object p2, p0, Lgb/h;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->s:Ljava/util/List;

    :cond_14
    :try_start_2
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->b:Lmb/c;

    throw p1

    :catch_2
    :goto_c
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    throw p1

    :cond_15
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v7, :cond_16

    iget-object p1, p0, Lgb/h;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->j:Ljava/util/List;

    :cond_16
    and-int/lit16 p1, v4, 0x400

    if-ne p1, v5, :cond_17

    iget-object p1, p0, Lgb/h;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->q:Ljava/util/List;

    :cond_17
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v6, :cond_18

    iget-object p1, p0, Lgb/h;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->m:Ljava/util/List;

    :cond_18
    and-int/lit16 p1, v4, 0x200

    if-ne p1, v9, :cond_19

    iget-object p1, p0, Lgb/h;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->n:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v4, 0x1000

    if-ne p1, v8, :cond_1a

    iget-object p1, p0, Lgb/h;->s:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->s:Ljava/util/List;

    :cond_1a
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/h;->b:Lmb/c;

    throw p1

    :catch_3
    :goto_d
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/h;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x52 -> :sswitch_6
        0x58 -> :sswitch_5
        0x5a -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput v0, p0, Lgb/h;->p:I

    iput-byte v0, p0, Lgb/h;->v:B

    iput v0, p0, Lgb/h;->w:I

    .line 34
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 35
    iput-object p1, p0, Lgb/h;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 1
    iget-byte v0, p0, Lgb/h;->v:B

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
    iget v0, p0, Lgb/h;->c:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x4

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    if-ne v3, v4, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-nez v3, :cond_3

    .line 22
    .line 23
    iput-byte v2, p0, Lgb/h;->v:B

    .line 24
    .line 25
    return v2

    .line 26
    :cond_3
    const/16 v3, 0x8

    .line 27
    .line 28
    and-int/2addr v0, v3

    .line 29
    if-ne v0, v3, :cond_4

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    const/4 v0, 0x0

    .line 34
    :goto_1
    if-eqz v0, :cond_5

    .line 35
    .line 36
    iget-object v0, p0, Lgb/h;->g:Lgb/p;

    .line 37
    .line 38
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    iput-byte v2, p0, Lgb/h;->v:B

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    const/4 v0, 0x0

    .line 48
    :goto_2
    iget-object v3, p0, Lgb/h;->j:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v0, v3, :cond_7

    .line 55
    .line 56
    iget-object v3, p0, Lgb/h;->j:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lgb/r;

    .line 63
    .line 64
    invoke-virtual {v3}, Lgb/r;->b()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_6

    .line 69
    .line 70
    iput-byte v2, p0, Lgb/h;->v:B

    .line 71
    .line 72
    return v2

    .line 73
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_7
    iget v0, p0, Lgb/h;->c:I

    .line 77
    .line 78
    const/16 v3, 0x20

    .line 79
    .line 80
    and-int/2addr v0, v3

    .line 81
    if-ne v0, v3, :cond_8

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_8
    const/4 v0, 0x0

    .line 86
    :goto_3
    if-eqz v0, :cond_9

    .line 87
    .line 88
    iget-object v0, p0, Lgb/h;->k:Lgb/p;

    .line 89
    .line 90
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    iput-byte v2, p0, Lgb/h;->v:B

    .line 97
    .line 98
    return v2

    .line 99
    :cond_9
    const/4 v0, 0x0

    .line 100
    :goto_4
    iget-object v3, p0, Lgb/h;->m:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ge v0, v3, :cond_b

    .line 107
    .line 108
    iget-object v3, p0, Lgb/h;->m:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lgb/p;

    .line 115
    .line 116
    invoke-virtual {v3}, Lgb/p;->b()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_a

    .line 121
    .line 122
    iput-byte v2, p0, Lgb/h;->v:B

    .line 123
    .line 124
    return v2

    .line 125
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_b
    const/4 v0, 0x0

    .line 129
    :goto_5
    iget-object v3, p0, Lgb/h;->q:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-ge v0, v3, :cond_d

    .line 136
    .line 137
    iget-object v3, p0, Lgb/h;->q:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lgb/t;

    .line 144
    .line 145
    invoke-virtual {v3}, Lgb/t;->b()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_c

    .line 150
    .line 151
    iput-byte v2, p0, Lgb/h;->v:B

    .line 152
    .line 153
    return v2

    .line 154
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_d
    iget v0, p0, Lgb/h;->c:I

    .line 158
    .line 159
    const/16 v3, 0x80

    .line 160
    .line 161
    and-int/2addr v0, v3

    .line 162
    if-ne v0, v3, :cond_e

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_6

    .line 166
    :cond_e
    const/4 v0, 0x0

    .line 167
    :goto_6
    if-eqz v0, :cond_f

    .line 168
    .line 169
    iget-object v0, p0, Lgb/h;->r:Lgb/s;

    .line 170
    .line 171
    invoke-virtual {v0}, Lgb/s;->b()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_f

    .line 176
    .line 177
    iput-byte v2, p0, Lgb/h;->v:B

    .line 178
    .line 179
    return v2

    .line 180
    :cond_f
    iget v0, p0, Lgb/h;->c:I

    .line 181
    .line 182
    const/16 v3, 0x100

    .line 183
    .line 184
    and-int/2addr v0, v3

    .line 185
    if-ne v0, v3, :cond_10

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_7

    .line 189
    :cond_10
    const/4 v0, 0x0

    .line 190
    :goto_7
    if-eqz v0, :cond_11

    .line 191
    .line 192
    iget-object v0, p0, Lgb/h;->t:Lgb/d;

    .line 193
    .line 194
    invoke-virtual {v0}, Lgb/d;->b()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_11

    .line 199
    .line 200
    iput-byte v2, p0, Lgb/h;->v:B

    .line 201
    .line 202
    return v2

    .line 203
    :cond_11
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_12

    .line 208
    .line 209
    iput-byte v2, p0, Lgb/h;->v:B

    .line 210
    .line 211
    return v2

    .line 212
    :cond_12
    iput-byte v1, p0, Lgb/h;->v:B

    .line 213
    .line 214
    return v1
.end method

.method public final c()I
    .locals 9

    .line 1
    iget v0, p0, Lgb/h;->w:I

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
    iget v0, p0, Lgb/h;->c:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lgb/h;->e:I

    .line 16
    .line 17
    invoke-static {v2, v0}, Lmb/e;->b(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget v4, p0, Lgb/h;->c:I

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    and-int/2addr v4, v5

    .line 28
    if-ne v4, v5, :cond_2

    .line 29
    .line 30
    iget v4, p0, Lgb/h;->f:I

    .line 31
    .line 32
    invoke-static {v1, v4}, Lmb/e;->b(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v0, v4

    .line 37
    :cond_2
    iget v4, p0, Lgb/h;->c:I

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    and-int/2addr v4, v6

    .line 42
    if-ne v4, v6, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    iget-object v7, p0, Lgb/h;->g:Lgb/p;

    .line 46
    .line 47
    invoke-static {v4, v7}, Lmb/e;->d(ILmb/p;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    add-int/2addr v0, v4

    .line 52
    :cond_3
    const/4 v4, 0x0

    .line 53
    :goto_1
    iget-object v7, p0, Lgb/h;->j:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v4, v7, :cond_4

    .line 60
    .line 61
    iget-object v7, p0, Lgb/h;->j:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Lmb/p;

    .line 68
    .line 69
    invoke-static {v5, v7}, Lmb/e;->d(ILmb/p;)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/2addr v0, v7

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget v4, p0, Lgb/h;->c:I

    .line 78
    .line 79
    const/16 v5, 0x20

    .line 80
    .line 81
    and-int/2addr v4, v5

    .line 82
    if-ne v4, v5, :cond_5

    .line 83
    .line 84
    const/4 v4, 0x5

    .line 85
    iget-object v7, p0, Lgb/h;->k:Lgb/p;

    .line 86
    .line 87
    invoke-static {v4, v7}, Lmb/e;->d(ILmb/p;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    add-int/2addr v0, v4

    .line 92
    :cond_5
    const/4 v4, 0x0

    .line 93
    :goto_2
    iget-object v7, p0, Lgb/h;->q:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ge v4, v7, :cond_6

    .line 100
    .line 101
    iget-object v7, p0, Lgb/h;->q:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lmb/p;

    .line 108
    .line 109
    const/4 v8, 0x6

    .line 110
    invoke-static {v8, v7}, Lmb/e;->d(ILmb/p;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    add-int/2addr v0, v7

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    iget v4, p0, Lgb/h;->c:I

    .line 119
    .line 120
    const/16 v7, 0x10

    .line 121
    .line 122
    and-int/2addr v4, v7

    .line 123
    if-ne v4, v7, :cond_7

    .line 124
    .line 125
    const/4 v4, 0x7

    .line 126
    iget v7, p0, Lgb/h;->h:I

    .line 127
    .line 128
    invoke-static {v4, v7}, Lmb/e;->b(II)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    add-int/2addr v0, v4

    .line 133
    :cond_7
    iget v4, p0, Lgb/h;->c:I

    .line 134
    .line 135
    const/16 v7, 0x40

    .line 136
    .line 137
    and-int/2addr v4, v7

    .line 138
    if-ne v4, v7, :cond_8

    .line 139
    .line 140
    iget v4, p0, Lgb/h;->l:I

    .line 141
    .line 142
    invoke-static {v6, v4}, Lmb/e;->b(II)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    add-int/2addr v0, v4

    .line 147
    :cond_8
    iget v4, p0, Lgb/h;->c:I

    .line 148
    .line 149
    and-int/2addr v4, v2

    .line 150
    if-ne v4, v2, :cond_9

    .line 151
    .line 152
    const/16 v2, 0x9

    .line 153
    .line 154
    iget v4, p0, Lgb/h;->d:I

    .line 155
    .line 156
    invoke-static {v2, v4}, Lmb/e;->b(II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    add-int/2addr v0, v2

    .line 161
    :cond_9
    const/4 v2, 0x0

    .line 162
    :goto_3
    iget-object v4, p0, Lgb/h;->m:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-ge v2, v4, :cond_a

    .line 169
    .line 170
    iget-object v4, p0, Lgb/h;->m:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lmb/p;

    .line 177
    .line 178
    const/16 v6, 0xa

    .line 179
    .line 180
    invoke-static {v6, v4}, Lmb/e;->d(ILmb/p;)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    add-int/2addr v0, v4

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    const/4 v2, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    :goto_4
    iget-object v6, p0, Lgb/h;->n:Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-ge v2, v6, :cond_b

    .line 197
    .line 198
    iget-object v6, p0, Lgb/h;->n:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-static {v6}, Lmb/e;->c(I)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    add-int/2addr v4, v6

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    add-int/2addr v0, v4

    .line 219
    iget-object v2, p0, Lgb/h;->n:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_c

    .line 226
    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    .line 229
    invoke-static {v4}, Lmb/e;->c(I)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    add-int/2addr v0, v2

    .line 234
    :cond_c
    iput v4, p0, Lgb/h;->p:I

    .line 235
    .line 236
    iget v2, p0, Lgb/h;->c:I

    .line 237
    .line 238
    const/16 v4, 0x80

    .line 239
    .line 240
    and-int/2addr v2, v4

    .line 241
    if-ne v2, v4, :cond_d

    .line 242
    .line 243
    const/16 v2, 0x1e

    .line 244
    .line 245
    iget-object v4, p0, Lgb/h;->r:Lgb/s;

    .line 246
    .line 247
    invoke-static {v2, v4}, Lmb/e;->d(ILmb/p;)I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    add-int/2addr v0, v2

    .line 252
    :cond_d
    const/4 v2, 0x0

    .line 253
    :goto_5
    iget-object v4, p0, Lgb/h;->s:Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-ge v3, v4, :cond_e

    .line 260
    .line 261
    iget-object v4, p0, Lgb/h;->s:Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    check-cast v4, Ljava/lang/Integer;

    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-static {v4}, Lmb/e;->c(I)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    add-int/2addr v2, v4

    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_e
    add-int/2addr v0, v2

    .line 282
    iget-object v2, p0, Lgb/h;->s:Ljava/util/List;

    .line 283
    .line 284
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    mul-int/lit8 v2, v2, 0x2

    .line 289
    .line 290
    add-int/2addr v2, v0

    .line 291
    iget v0, p0, Lgb/h;->c:I

    .line 292
    .line 293
    const/16 v1, 0x100

    .line 294
    .line 295
    and-int/2addr v0, v1

    .line 296
    if-ne v0, v1, :cond_f

    .line 297
    .line 298
    iget-object v0, p0, Lgb/h;->t:Lgb/d;

    .line 299
    .line 300
    invoke-static {v5, v0}, Lmb/e;->d(ILmb/p;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    add-int/2addr v2, v0

    .line 305
    :cond_f
    invoke-virtual {p0}, Lmb/h$c;->j()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    add-int/2addr v0, v2

    .line 310
    iget-object v1, p0, Lgb/h;->b:Lmb/c;

    .line 311
    .line 312
    invoke-virtual {v1}, Lmb/c;->size()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    add-int/2addr v1, v0

    .line 317
    iput v1, p0, Lgb/h;->w:I

    .line 318
    .line 319
    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/h;->c()I

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
    iget v1, p0, Lgb/h;->c:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lgb/h;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, v3, v1}, Lmb/e;->m(II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget v1, p0, Lgb/h;->c:I

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    and-int/2addr v1, v4

    .line 25
    if-ne v1, v4, :cond_1

    .line 26
    .line 27
    iget v1, p0, Lgb/h;->f:I

    .line 28
    .line 29
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v1, p0, Lgb/h;->c:I

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    iget-object v5, p0, Lgb/h;->g:Lgb/p;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v5}, Lmb/e;->o(ILmb/p;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_0
    iget-object v6, p0, Lgb/h;->j:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ge v5, v6, :cond_3

    .line 54
    .line 55
    iget-object v6, p0, Lgb/h;->j:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lmb/p;

    .line 62
    .line 63
    invoke-virtual {p1, v4, v6}, Lmb/e;->o(ILmb/p;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget v4, p0, Lgb/h;->c:I

    .line 70
    .line 71
    const/16 v5, 0x20

    .line 72
    .line 73
    and-int/2addr v4, v5

    .line 74
    if-ne v4, v5, :cond_4

    .line 75
    .line 76
    const/4 v4, 0x5

    .line 77
    iget-object v6, p0, Lgb/h;->k:Lgb/p;

    .line 78
    .line 79
    invoke-virtual {p1, v4, v6}, Lmb/e;->o(ILmb/p;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    const/4 v4, 0x0

    .line 83
    :goto_1
    iget-object v6, p0, Lgb/h;->q:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ge v4, v6, :cond_5

    .line 90
    .line 91
    iget-object v6, p0, Lgb/h;->q:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lmb/p;

    .line 98
    .line 99
    const/4 v7, 0x6

    .line 100
    invoke-virtual {p1, v7, v6}, Lmb/e;->o(ILmb/p;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    iget v4, p0, Lgb/h;->c:I

    .line 107
    .line 108
    const/16 v6, 0x10

    .line 109
    .line 110
    and-int/2addr v4, v6

    .line 111
    if-ne v4, v6, :cond_6

    .line 112
    .line 113
    const/4 v4, 0x7

    .line 114
    iget v6, p0, Lgb/h;->h:I

    .line 115
    .line 116
    invoke-virtual {p1, v4, v6}, Lmb/e;->m(II)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget v4, p0, Lgb/h;->c:I

    .line 120
    .line 121
    const/16 v6, 0x40

    .line 122
    .line 123
    and-int/2addr v4, v6

    .line 124
    if-ne v4, v6, :cond_7

    .line 125
    .line 126
    iget v4, p0, Lgb/h;->l:I

    .line 127
    .line 128
    invoke-virtual {p1, v2, v4}, Lmb/e;->m(II)V

    .line 129
    .line 130
    .line 131
    :cond_7
    iget v2, p0, Lgb/h;->c:I

    .line 132
    .line 133
    and-int/2addr v2, v3

    .line 134
    if-ne v2, v3, :cond_8

    .line 135
    .line 136
    const/16 v2, 0x9

    .line 137
    .line 138
    iget v3, p0, Lgb/h;->d:I

    .line 139
    .line 140
    invoke-virtual {p1, v2, v3}, Lmb/e;->m(II)V

    .line 141
    .line 142
    .line 143
    :cond_8
    const/4 v2, 0x0

    .line 144
    :goto_2
    iget-object v3, p0, Lgb/h;->m:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-ge v2, v3, :cond_9

    .line 151
    .line 152
    iget-object v3, p0, Lgb/h;->m:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lmb/p;

    .line 159
    .line 160
    const/16 v4, 0xa

    .line 161
    .line 162
    invoke-virtual {p1, v4, v3}, Lmb/e;->o(ILmb/p;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_9
    iget-object v2, p0, Lgb/h;->n:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-lez v2, :cond_a

    .line 175
    .line 176
    const/16 v2, 0x5a

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Lmb/e;->v(I)V

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lgb/h;->p:I

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Lmb/e;->v(I)V

    .line 184
    .line 185
    .line 186
    :cond_a
    const/4 v2, 0x0

    .line 187
    :goto_3
    iget-object v3, p0, Lgb/h;->n:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-ge v2, v3, :cond_b

    .line 194
    .line 195
    iget-object v3, p0, Lgb/h;->n:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-virtual {p1, v3}, Lmb/e;->n(I)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 v2, v2, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_b
    iget v2, p0, Lgb/h;->c:I

    .line 214
    .line 215
    const/16 v3, 0x80

    .line 216
    .line 217
    and-int/2addr v2, v3

    .line 218
    if-ne v2, v3, :cond_c

    .line 219
    .line 220
    const/16 v2, 0x1e

    .line 221
    .line 222
    iget-object v3, p0, Lgb/h;->r:Lgb/s;

    .line 223
    .line 224
    invoke-virtual {p1, v2, v3}, Lmb/e;->o(ILmb/p;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    :goto_4
    iget-object v2, p0, Lgb/h;->s:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-ge v1, v2, :cond_d

    .line 234
    .line 235
    iget-object v2, p0, Lgb/h;->s:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    const/16 v3, 0x1f

    .line 248
    .line 249
    invoke-virtual {p1, v3, v2}, Lmb/e;->m(II)V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_d
    iget v1, p0, Lgb/h;->c:I

    .line 256
    .line 257
    const/16 v2, 0x100

    .line 258
    .line 259
    and-int/2addr v1, v2

    .line 260
    if-ne v1, v2, :cond_e

    .line 261
    .line 262
    iget-object v1, p0, Lgb/h;->t:Lgb/d;

    .line 263
    .line 264
    invoke-virtual {p1, v5, v1}, Lmb/e;->o(ILmb/p;)V

    .line 265
    .line 266
    .line 267
    :cond_e
    const/16 v1, 0x4a38

    .line 268
    .line 269
    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lgb/h;->b:Lmb/c;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/h;->x:Lgb/h;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/h$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/h$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/h$b;->n(Lgb/h;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/h$b;

    invoke-direct {v0}, Lgb/h$b;-><init>()V

    return-object v0
.end method

.method public final q()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lgb/h;->d:I

    .line 3
    .line 4
    iput v0, p0, Lgb/h;->e:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lgb/h;->f:I

    .line 8
    .line 9
    sget-object v1, Lgb/p;->w:Lgb/p;

    .line 10
    .line 11
    iput-object v1, p0, Lgb/h;->g:Lgb/p;

    .line 12
    .line 13
    iput v0, p0, Lgb/h;->h:I

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lgb/h;->j:Ljava/util/List;

    .line 20
    .line 21
    iput-object v1, p0, Lgb/h;->k:Lgb/p;

    .line 22
    .line 23
    iput v0, p0, Lgb/h;->l:I

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lgb/h;->m:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lgb/h;->n:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lgb/h;->q:Ljava/util/List;

    .line 42
    .line 43
    sget-object v0, Lgb/s;->g:Lgb/s;

    .line 44
    .line 45
    iput-object v0, p0, Lgb/h;->r:Lgb/s;

    .line 46
    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lgb/h;->s:Ljava/util/List;

    .line 52
    .line 53
    sget-object v0, Lgb/d;->e:Lgb/d;

    .line 54
    .line 55
    iput-object v0, p0, Lgb/h;->t:Lgb/d;

    .line 56
    .line 57
    return-void
.end method
