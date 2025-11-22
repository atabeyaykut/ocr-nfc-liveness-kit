.class public final Lgb/q;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final q:Lgb/q;

.field public static final r:Lgb/q$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/r;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lgb/p;

.field public h:I

.field public j:Lgb/p;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:B

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgb/q$a;

    invoke-direct {v0}, Lgb/q$a;-><init>()V

    sput-object v0, Lgb/q;->r:Lgb/q$a;

    new-instance v0, Lgb/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/q;-><init>(I)V

    sput-object v0, Lgb/q;->q:Lgb/q;

    invoke-virtual {v0}, Lgb/q;->q()V

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

    iput-byte p1, p0, Lgb/q;->n:B

    iput p1, p0, Lgb/q;->p:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/q;->b:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/q;->n:B

    iput v0, p0, Lgb/q;->p:I

    invoke-virtual {p0}, Lgb/q;->q()V

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
    const/16 v5, 0x80

    const/4 v6, 0x4

    const/16 v7, 0x100

    if-nez v3, :cond_d

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v8}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v5

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v8

    invoke-virtual {p1, v8}, Lmb/d;->d(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x100

    if-eq v9, v7, :cond_1

    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lgb/q;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lmb/d;->b()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lgb/q;->m:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v10

    .line 5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v8}, Lmb/d;->c(I)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v7, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lgb/q;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_3
    iget-object v8, p0, Lgb/q;->m:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v9

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_4

    :sswitch_2
    and-int/lit16 v8, v4, 0x80

    if-eq v8, v5, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lgb/q;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    :cond_4
    iget-object v8, p0, Lgb/q;->l:Ljava/util/List;

    sget-object v9, Lgb/a;->h:Lgb/a$a;

    goto/16 :goto_3

    :sswitch_3
    iget v8, p0, Lgb/q;->c:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lgb/q;->c:I

    .line 8
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v8

    .line 9
    iput v8, p0, Lgb/q;->k:I

    goto/16 :goto_0

    :sswitch_4
    iget v8, p0, Lgb/q;->c:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_5

    iget-object v8, p0, Lgb/q;->j:Lgb/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v8}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 11
    :cond_5
    :goto_2
    sget-object v8, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v8, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v8

    check-cast v8, Lgb/p;

    iput-object v8, p0, Lgb/q;->j:Lgb/p;

    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v9}, Lgb/p$c;->l()Lgb/p;

    move-result-object v8

    iput-object v8, p0, Lgb/q;->j:Lgb/p;

    :cond_6
    iget v8, p0, Lgb/q;->c:I

    or-int/2addr v8, v10

    iput v8, p0, Lgb/q;->c:I

    goto/16 :goto_0

    :sswitch_5
    iget v8, p0, Lgb/q;->c:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lgb/q;->c:I

    .line 12
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v8

    .line 13
    iput v8, p0, Lgb/q;->h:I

    goto/16 :goto_0

    :sswitch_6
    iget v8, p0, Lgb/q;->c:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_7

    iget-object v8, p0, Lgb/q;->g:Lgb/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v8}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v9

    .line 15
    :cond_7
    sget-object v8, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v8, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v8

    check-cast v8, Lgb/p;

    iput-object v8, p0, Lgb/q;->g:Lgb/p;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v8}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v9}, Lgb/p$c;->l()Lgb/p;

    move-result-object v8

    iput-object v8, p0, Lgb/q;->g:Lgb/p;

    :cond_8
    iget v8, p0, Lgb/q;->c:I

    or-int/2addr v8, v6

    iput v8, p0, Lgb/q;->c:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lgb/q;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_9
    iget-object v8, p0, Lgb/q;->f:Ljava/util/List;

    sget-object v9, Lgb/r;->p:Lgb/r$a;

    :goto_3
    invoke-virtual {p1, v9, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v9

    :goto_4
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    iget v8, p0, Lgb/q;->c:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lgb/q;->c:I

    .line 16
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v8

    .line 17
    iput v8, p0, Lgb/q;->e:I

    goto/16 :goto_0

    :sswitch_9
    iget v8, p0, Lgb/q;->c:I

    or-int/2addr v8, v1

    iput v8, p0, Lgb/q;->c:I

    .line 18
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v8

    .line 19
    iput v8, p0, Lgb/q;->d:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_5
    if-nez v5, :cond_0

    :sswitch_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_6
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 21
    throw p2

    :catch_1
    move-exception p1

    .line 22
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 23
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_a

    iget-object p2, p0, Lgb/q;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->f:Ljava/util/List;

    :cond_a
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v5, :cond_b

    iget-object p2, p0, Lgb/q;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->l:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v7, :cond_c

    iget-object p2, p0, Lgb/q;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->m:Ljava/util/List;

    :cond_c
    :try_start_2
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->b:Lmb/c;

    throw p1

    :catch_2
    :goto_8
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_e

    iget-object p1, p0, Lgb/q;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/q;->f:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v5, :cond_f

    iget-object p1, p0, Lgb/q;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/q;->l:Ljava/util/List;

    :cond_f
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v7, :cond_10

    iget-object p1, p0, Lgb/q;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/q;->m:Ljava/util/List;

    :cond_10
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/q;->b:Lmb/c;

    throw p1

    :catch_3
    :goto_9
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/q;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/q;->n:B

    iput v0, p0, Lgb/q;->p:I

    .line 25
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 26
    iput-object p1, p0, Lgb/q;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/q;->n:B

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
    iget v0, p0, Lgb/q;->c:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    and-int/2addr v0, v3

    .line 15
    if-ne v0, v3, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_3

    .line 21
    .line 22
    iput-byte v2, p0, Lgb/q;->n:B

    .line 23
    .line 24
    return v2

    .line 25
    :cond_3
    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v3, p0, Lgb/q;->f:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v0, v3, :cond_5

    .line 33
    .line 34
    iget-object v3, p0, Lgb/q;->f:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lgb/r;

    .line 41
    .line 42
    invoke-virtual {v3}, Lgb/r;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    iput-byte v2, p0, Lgb/q;->n:B

    .line 49
    .line 50
    return v2

    .line 51
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_5
    iget v0, p0, Lgb/q;->c:I

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    and-int/2addr v0, v3

    .line 58
    if-ne v0, v3, :cond_6

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_6
    const/4 v0, 0x0

    .line 63
    :goto_2
    if-eqz v0, :cond_7

    .line 64
    .line 65
    iget-object v0, p0, Lgb/q;->g:Lgb/p;

    .line 66
    .line 67
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    iput-byte v2, p0, Lgb/q;->n:B

    .line 74
    .line 75
    return v2

    .line 76
    :cond_7
    iget v0, p0, Lgb/q;->c:I

    .line 77
    .line 78
    const/16 v3, 0x10

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
    iget-object v0, p0, Lgb/q;->j:Lgb/p;

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
    iput-byte v2, p0, Lgb/q;->n:B

    .line 97
    .line 98
    return v2

    .line 99
    :cond_9
    const/4 v0, 0x0

    .line 100
    :goto_4
    iget-object v3, p0, Lgb/q;->l:Ljava/util/List;

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
    iget-object v3, p0, Lgb/q;->l:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lgb/a;

    .line 115
    .line 116
    invoke-virtual {v3}, Lgb/a;->b()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_a

    .line 121
    .line 122
    iput-byte v2, p0, Lgb/q;->n:B

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
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_c

    .line 133
    .line 134
    iput-byte v2, p0, Lgb/q;->n:B

    .line 135
    .line 136
    return v2

    .line 137
    :cond_c
    iput-byte v1, p0, Lgb/q;->n:B

    .line 138
    .line 139
    return v1
.end method

.method public final c()I
    .locals 6

    .line 1
    iget v0, p0, Lgb/q;->p:I

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
    iget v0, p0, Lgb/q;->c:I

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
    iget v0, p0, Lgb/q;->d:I

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
    iget v1, p0, Lgb/q;->c:I

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    and-int/2addr v1, v3

    .line 27
    if-ne v1, v3, :cond_2

    .line 28
    .line 29
    iget v1, p0, Lgb/q;->e:I

    .line 30
    .line 31
    invoke-static {v3, v1}, Lmb/e;->b(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_1
    iget-object v4, p0, Lgb/q;->f:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v1, v4, :cond_3

    .line 44
    .line 45
    iget-object v4, p0, Lgb/q;->f:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lmb/p;

    .line 52
    .line 53
    const/4 v5, 0x3

    .line 54
    invoke-static {v5, v4}, Lmb/e;->d(ILmb/p;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/2addr v0, v4

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget v1, p0, Lgb/q;->c:I

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    and-int/2addr v1, v4

    .line 66
    if-ne v1, v4, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lgb/q;->g:Lgb/p;

    .line 69
    .line 70
    invoke-static {v4, v1}, Lmb/e;->d(ILmb/p;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_4
    iget v1, p0, Lgb/q;->c:I

    .line 76
    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    and-int/2addr v1, v4

    .line 80
    if-ne v1, v4, :cond_5

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    iget v5, p0, Lgb/q;->h:I

    .line 84
    .line 85
    invoke-static {v1, v5}, Lmb/e;->b(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    :cond_5
    iget v1, p0, Lgb/q;->c:I

    .line 91
    .line 92
    const/16 v5, 0x10

    .line 93
    .line 94
    and-int/2addr v1, v5

    .line 95
    if-ne v1, v5, :cond_6

    .line 96
    .line 97
    const/4 v1, 0x6

    .line 98
    iget-object v5, p0, Lgb/q;->j:Lgb/p;

    .line 99
    .line 100
    invoke-static {v1, v5}, Lmb/e;->d(ILmb/p;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_6
    iget v1, p0, Lgb/q;->c:I

    .line 106
    .line 107
    const/16 v5, 0x20

    .line 108
    .line 109
    and-int/2addr v1, v5

    .line 110
    if-ne v1, v5, :cond_7

    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    iget v5, p0, Lgb/q;->k:I

    .line 114
    .line 115
    invoke-static {v1, v5}, Lmb/e;->b(II)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    :cond_7
    const/4 v1, 0x0

    .line 121
    :goto_2
    iget-object v5, p0, Lgb/q;->l:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ge v1, v5, :cond_8

    .line 128
    .line 129
    iget-object v5, p0, Lgb/q;->l:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lmb/p;

    .line 136
    .line 137
    invoke-static {v4, v5}, Lmb/e;->d(ILmb/p;)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    add-int/2addr v0, v5

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    const/4 v1, 0x0

    .line 146
    :goto_3
    iget-object v4, p0, Lgb/q;->m:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-ge v2, v4, :cond_9

    .line 153
    .line 154
    iget-object v4, p0, Lgb/q;->m:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-static {v4}, Lmb/e;->c(I)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    add-int/2addr v1, v4

    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    add-int/2addr v0, v1

    .line 175
    iget-object v1, p0, Lgb/q;->m:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    mul-int/lit8 v1, v1, 0x2

    .line 182
    .line 183
    add-int/2addr v1, v0

    .line 184
    invoke-virtual {p0}, Lmb/h$c;->j()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    add-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lgb/q;->b:Lmb/c;

    .line 190
    .line 191
    invoke-virtual {v1}, Lmb/c;->size()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v1, v0

    .line 196
    iput v1, p0, Lgb/q;->p:I

    .line 197
    .line 198
    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/q;->c()I

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
    iget v1, p0, Lgb/q;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lgb/q;->d:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lgb/q;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    and-int/2addr v1, v2

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lgb/q;->e:I

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    iget-object v3, p0, Lgb/q;->f:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge v2, v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lgb/q;->f:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lmb/p;

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    invoke-virtual {p1, v4, v3}, Lmb/e;->o(ILmb/p;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget v2, p0, Lgb/q;->c:I

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    and-int/2addr v2, v3

    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lgb/q;->g:Lgb/p;

    .line 63
    .line 64
    invoke-virtual {p1, v3, v2}, Lmb/e;->o(ILmb/p;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget v2, p0, Lgb/q;->c:I

    .line 68
    .line 69
    const/16 v3, 0x8

    .line 70
    .line 71
    and-int/2addr v2, v3

    .line 72
    if-ne v2, v3, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    iget v4, p0, Lgb/q;->h:I

    .line 76
    .line 77
    invoke-virtual {p1, v2, v4}, Lmb/e;->m(II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget v2, p0, Lgb/q;->c:I

    .line 81
    .line 82
    const/16 v4, 0x10

    .line 83
    .line 84
    and-int/2addr v2, v4

    .line 85
    if-ne v2, v4, :cond_5

    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    iget-object v4, p0, Lgb/q;->j:Lgb/p;

    .line 89
    .line 90
    invoke-virtual {p1, v2, v4}, Lmb/e;->o(ILmb/p;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget v2, p0, Lgb/q;->c:I

    .line 94
    .line 95
    const/16 v4, 0x20

    .line 96
    .line 97
    and-int/2addr v2, v4

    .line 98
    if-ne v2, v4, :cond_6

    .line 99
    .line 100
    const/4 v2, 0x7

    .line 101
    iget v4, p0, Lgb/q;->k:I

    .line 102
    .line 103
    invoke-virtual {p1, v2, v4}, Lmb/e;->m(II)V

    .line 104
    .line 105
    .line 106
    :cond_6
    const/4 v2, 0x0

    .line 107
    :goto_1
    iget-object v4, p0, Lgb/q;->l:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-ge v2, v4, :cond_7

    .line 114
    .line 115
    iget-object v4, p0, Lgb/q;->l:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lmb/p;

    .line 122
    .line 123
    invoke-virtual {p1, v3, v4}, Lmb/e;->o(ILmb/p;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    :goto_2
    iget-object v2, p0, Lgb/q;->m:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-ge v1, v2, :cond_8

    .line 136
    .line 137
    iget-object v2, p0, Lgb/q;->m:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/16 v3, 0x1f

    .line 150
    .line 151
    invoke-virtual {p1, v3, v2}, Lmb/e;->m(II)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    const/16 v1, 0xc8

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lgb/q;->b:Lmb/c;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/q;->q:Lgb/q;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/q$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/q$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/q$b;->n(Lgb/q;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/q$b;

    invoke-direct {v0}, Lgb/q$b;-><init>()V

    return-object v0
.end method

.method public final q()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lgb/q;->d:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lgb/q;->e:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lgb/q;->f:Ljava/util/List;

    .line 12
    .line 13
    sget-object v1, Lgb/p;->w:Lgb/p;

    .line 14
    .line 15
    iput-object v1, p0, Lgb/q;->g:Lgb/p;

    .line 16
    .line 17
    iput v0, p0, Lgb/q;->h:I

    .line 18
    .line 19
    iput-object v1, p0, Lgb/q;->j:Lgb/p;

    .line 20
    .line 21
    iput v0, p0, Lgb/q;->k:I

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lgb/q;->l:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lgb/q;->m:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method
